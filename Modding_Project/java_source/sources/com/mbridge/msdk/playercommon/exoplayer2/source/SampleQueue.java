package com.mbridge.msdk.playercommon.exoplayer2.source;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.FormatHolder;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.CryptoInfo;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.source.SampleMetadataQueue;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocation;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes6.dex */
public final class SampleQueue implements TrackOutput {
    public static final int ADVANCE_FAILED = -1;
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final Allocator allocator;
    private Format downstreamFormat;
    private final SampleMetadataQueue.SampleExtrasHolder extrasHolder;
    private AllocationNode firstAllocationNode;
    private Format lastUnadjustedFormat;
    private final SampleMetadataQueue metadataQueue;
    private boolean pendingFormatAdjustment;
    private boolean pendingSplice;
    private AllocationNode readAllocationNode;
    private long sampleOffsetUs;
    private final ParsableByteArray scratch;
    private long totalBytesWritten;
    private UpstreamFormatChangedListener upstreamFormatChangeListener;
    private AllocationNode writeAllocationNode;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class AllocationNode {
        @Nullable
        public Allocation allocation;
        public final long endPosition;
        @Nullable
        public AllocationNode next;
        public final long startPosition;
        public boolean wasInitialized;

        public AllocationNode(long j10, int i10) {
            this.startPosition = j10;
            this.endPosition = j10 + i10;
        }

        public AllocationNode clear() {
            this.allocation = null;
            AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        public void initialize(Allocation allocation, AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
            this.wasInitialized = true;
        }

        public int translateOffset(long j10) {
            return ((int) (j10 - this.startPosition)) + this.allocation.offset;
        }
    }

    /* loaded from: classes6.dex */
    public interface UpstreamFormatChangedListener {
        void onUpstreamFormatChanged(Format format);
    }

    public SampleQueue(Allocator allocator) {
        this.allocator = allocator;
        int individualAllocationLength = allocator.getIndividualAllocationLength();
        this.allocationLength = individualAllocationLength;
        this.metadataQueue = new SampleMetadataQueue();
        this.extrasHolder = new SampleMetadataQueue.SampleExtrasHolder();
        this.scratch = new ParsableByteArray(32);
        AllocationNode allocationNode = new AllocationNode(0L, individualAllocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    private void advanceReadTo(long j10) {
        while (true) {
            AllocationNode allocationNode = this.readAllocationNode;
            if (j10 >= allocationNode.endPosition) {
                this.readAllocationNode = allocationNode.next;
            } else {
                return;
            }
        }
    }

    private void clearAllocationNodes(AllocationNode allocationNode) {
        if (!allocationNode.wasInitialized) {
            return;
        }
        AllocationNode allocationNode2 = this.writeAllocationNode;
        int i10 = (allocationNode2.wasInitialized ? 1 : 0) + (((int) (allocationNode2.startPosition - allocationNode.startPosition)) / this.allocationLength);
        Allocation[] allocationArr = new Allocation[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            allocationArr[i11] = allocationNode.allocation;
            allocationNode = allocationNode.clear();
        }
        this.allocator.release(allocationArr);
    }

    private void discardDownstreamTo(long j10) {
        AllocationNode allocationNode;
        if (j10 == -1) {
            return;
        }
        while (true) {
            allocationNode = this.firstAllocationNode;
            if (j10 < allocationNode.endPosition) {
                break;
            }
            this.allocator.release(allocationNode.allocation);
            this.firstAllocationNode = this.firstAllocationNode.clear();
        }
        if (this.readAllocationNode.startPosition < allocationNode.startPosition) {
            this.readAllocationNode = allocationNode;
        }
    }

    private static Format getAdjustedSampleFormat(Format format, long j10) {
        if (format == null) {
            return null;
        }
        if (j10 != 0) {
            long j11 = format.subsampleOffsetUs;
            if (j11 != Long.MAX_VALUE) {
                return format.copyWithSubsampleOffsetUs(j11 + j10);
            }
            return format;
        }
        return format;
    }

    private void postAppend(int i10) {
        long j10 = this.totalBytesWritten + i10;
        this.totalBytesWritten = j10;
        AllocationNode allocationNode = this.writeAllocationNode;
        if (j10 == allocationNode.endPosition) {
            this.writeAllocationNode = allocationNode.next;
        }
    }

    private int preAppend(int i10) {
        AllocationNode allocationNode = this.writeAllocationNode;
        if (!allocationNode.wasInitialized) {
            allocationNode.initialize(this.allocator.allocate(), new AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i10, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    private void readData(long j10, ByteBuffer byteBuffer, int i10) {
        advanceReadTo(j10);
        while (i10 > 0) {
            int min = Math.min(i10, (int) (this.readAllocationNode.endPosition - j10));
            AllocationNode allocationNode = this.readAllocationNode;
            byteBuffer.put(allocationNode.allocation.data, allocationNode.translateOffset(j10), min);
            i10 -= min;
            j10 += min;
            AllocationNode allocationNode2 = this.readAllocationNode;
            if (j10 == allocationNode2.endPosition) {
                this.readAllocationNode = allocationNode2.next;
            }
        }
    }

    private void readEncryptionData(DecoderInputBuffer decoderInputBuffer, SampleMetadataQueue.SampleExtrasHolder sampleExtrasHolder) {
        boolean z10;
        long j10 = sampleExtrasHolder.offset;
        int i10 = 1;
        this.scratch.reset(1);
        readData(j10, this.scratch.data, 1);
        long j11 = j10 + 1;
        byte b10 = this.scratch.data[0];
        if ((b10 & ByteCompanionObject.MIN_VALUE) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        CryptoInfo cryptoInfo = decoderInputBuffer.cryptoInfo;
        if (cryptoInfo.iv == null) {
            cryptoInfo.iv = new byte[16];
        }
        readData(j11, cryptoInfo.iv, i11);
        long j12 = j11 + i11;
        if (z10) {
            this.scratch.reset(2);
            readData(j12, this.scratch.data, 2);
            j12 += 2;
            i10 = this.scratch.readUnsignedShort();
        }
        int i12 = i10;
        CryptoInfo cryptoInfo2 = decoderInputBuffer.cryptoInfo;
        int[] iArr = cryptoInfo2.numBytesOfClearData;
        if (iArr == null || iArr.length < i12) {
            iArr = new int[i12];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cryptoInfo2.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < i12) {
            iArr3 = new int[i12];
        }
        int[] iArr4 = iArr3;
        if (z10) {
            int i13 = i12 * 6;
            this.scratch.reset(i13);
            readData(j12, this.scratch.data, i13);
            j12 += i13;
            this.scratch.setPosition(0);
            for (int i14 = 0; i14 < i12; i14++) {
                iArr2[i14] = this.scratch.readUnsignedShort();
                iArr4[i14] = this.scratch.readUnsignedIntToInt();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = sampleExtrasHolder.size - ((int) (j12 - sampleExtrasHolder.offset));
        }
        TrackOutput.CryptoData cryptoData = sampleExtrasHolder.cryptoData;
        CryptoInfo cryptoInfo3 = decoderInputBuffer.cryptoInfo;
        cryptoInfo3.set(i12, iArr2, iArr4, cryptoData.encryptionKey, cryptoInfo3.iv, cryptoData.cryptoMode, cryptoData.encryptedBlocks, cryptoData.clearBlocks);
        long j13 = sampleExtrasHolder.offset;
        int i15 = (int) (j12 - j13);
        sampleExtrasHolder.offset = j13 + i15;
        sampleExtrasHolder.size -= i15;
    }

    public int advanceTo(long j10, boolean z10, boolean z11) {
        return this.metadataQueue.advanceTo(j10, z10, z11);
    }

    public int advanceToEnd() {
        return this.metadataQueue.advanceToEnd();
    }

    public void discardTo(long j10, boolean z10, boolean z11) {
        discardDownstreamTo(this.metadataQueue.discardTo(j10, z10, z11));
    }

    public void discardToEnd() {
        discardDownstreamTo(this.metadataQueue.discardToEnd());
    }

    public void discardToRead() {
        discardDownstreamTo(this.metadataQueue.discardToRead());
    }

    public void discardUpstreamSamples(int i10) {
        long discardUpstreamSamples = this.metadataQueue.discardUpstreamSamples(i10);
        this.totalBytesWritten = discardUpstreamSamples;
        if (discardUpstreamSamples != 0) {
            AllocationNode allocationNode = this.firstAllocationNode;
            if (discardUpstreamSamples != allocationNode.startPosition) {
                while (this.totalBytesWritten > allocationNode.endPosition) {
                    allocationNode = allocationNode.next;
                }
                AllocationNode allocationNode2 = allocationNode.next;
                clearAllocationNodes(allocationNode2);
                AllocationNode allocationNode3 = new AllocationNode(allocationNode.endPosition, this.allocationLength);
                allocationNode.next = allocationNode3;
                if (this.totalBytesWritten == allocationNode.endPosition) {
                    allocationNode = allocationNode3;
                }
                this.writeAllocationNode = allocationNode;
                if (this.readAllocationNode == allocationNode2) {
                    this.readAllocationNode = allocationNode3;
                    return;
                }
                return;
            }
        }
        clearAllocationNodes(this.firstAllocationNode);
        AllocationNode allocationNode4 = new AllocationNode(this.totalBytesWritten, this.allocationLength);
        this.firstAllocationNode = allocationNode4;
        this.readAllocationNode = allocationNode4;
        this.writeAllocationNode = allocationNode4;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public void format(Format format) {
        Format adjustedSampleFormat = getAdjustedSampleFormat(format, this.sampleOffsetUs);
        boolean format2 = this.metadataQueue.format(adjustedSampleFormat);
        this.lastUnadjustedFormat = format;
        this.pendingFormatAdjustment = false;
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.upstreamFormatChangeListener;
        if (upstreamFormatChangedListener != null && format2) {
            upstreamFormatChangedListener.onUpstreamFormatChanged(adjustedSampleFormat);
        }
    }

    public int getFirstIndex() {
        return this.metadataQueue.getFirstIndex();
    }

    public long getFirstTimestampUs() {
        return this.metadataQueue.getFirstTimestampUs();
    }

    public long getLargestQueuedTimestampUs() {
        return this.metadataQueue.getLargestQueuedTimestampUs();
    }

    public int getReadIndex() {
        return this.metadataQueue.getReadIndex();
    }

    public Format getUpstreamFormat() {
        return this.metadataQueue.getUpstreamFormat();
    }

    public int getWriteIndex() {
        return this.metadataQueue.getWriteIndex();
    }

    public boolean hasNextSample() {
        return this.metadataQueue.hasNextSample();
    }

    public int peekSourceId() {
        return this.metadataQueue.peekSourceId();
    }

    public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, long j10) {
        int read = this.metadataQueue.read(formatHolder, decoderInputBuffer, z10, z11, this.downstreamFormat, this.extrasHolder);
        if (read != -5) {
            if (read != -4) {
                if (read == -3) {
                    return -3;
                }
                throw new IllegalStateException();
            }
            if (!decoderInputBuffer.isEndOfStream()) {
                if (decoderInputBuffer.timeUs < j10) {
                    decoderInputBuffer.addFlag(Integer.MIN_VALUE);
                }
                if (decoderInputBuffer.isEncrypted()) {
                    readEncryptionData(decoderInputBuffer, this.extrasHolder);
                }
                decoderInputBuffer.ensureSpaceForWrite(this.extrasHolder.size);
                SampleMetadataQueue.SampleExtrasHolder sampleExtrasHolder = this.extrasHolder;
                readData(sampleExtrasHolder.offset, decoderInputBuffer.data, sampleExtrasHolder.size);
            }
            return -4;
        }
        this.downstreamFormat = formatHolder.format;
        return -5;
    }

    public void reset() {
        reset(false);
    }

    public void rewind() {
        this.metadataQueue.rewind();
        this.readAllocationNode = this.firstAllocationNode;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i10, boolean z10) throws IOException, InterruptedException {
        int preAppend = preAppend(i10);
        AllocationNode allocationNode = this.writeAllocationNode;
        int read = extractorInput.read(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), preAppend);
        if (read != -1) {
            postAppend(read);
            return read;
        } else if (z10) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public void sampleMetadata(long j10, int i10, int i11, int i12, TrackOutput.CryptoData cryptoData) {
        if (this.pendingFormatAdjustment) {
            format(this.lastUnadjustedFormat);
        }
        if (this.pendingSplice) {
            if ((i10 & 1) != 0 && this.metadataQueue.attemptSplice(j10)) {
                this.pendingSplice = false;
            } else {
                return;
            }
        }
        this.metadataQueue.commitSample(j10 + this.sampleOffsetUs, i10, (this.totalBytesWritten - i11) - i12, i11, cryptoData);
    }

    public boolean setReadPosition(int i10) {
        return this.metadataQueue.setReadPosition(i10);
    }

    public void setSampleOffsetUs(long j10) {
        if (this.sampleOffsetUs != j10) {
            this.sampleOffsetUs = j10;
            this.pendingFormatAdjustment = true;
        }
    }

    public void setUpstreamFormatChangeListener(UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.upstreamFormatChangeListener = upstreamFormatChangedListener;
    }

    public void sourceId(int i10) {
        this.metadataQueue.sourceId(i10);
    }

    public void splice() {
        this.pendingSplice = true;
    }

    public void reset(boolean z10) {
        this.metadataQueue.reset(z10);
        clearAllocationNodes(this.firstAllocationNode);
        AllocationNode allocationNode = new AllocationNode(0L, this.allocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    private void readData(long j10, byte[] bArr, int i10) {
        advanceReadTo(j10);
        int i11 = i10;
        while (i11 > 0) {
            int min = Math.min(i11, (int) (this.readAllocationNode.endPosition - j10));
            AllocationNode allocationNode = this.readAllocationNode;
            System.arraycopy(allocationNode.allocation.data, allocationNode.translateOffset(j10), bArr, i10 - i11, min);
            i11 -= min;
            j10 += min;
            AllocationNode allocationNode2 = this.readAllocationNode;
            if (j10 == allocationNode2.endPosition) {
                this.readAllocationNode = allocationNode2.next;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i10) {
        while (i10 > 0) {
            int preAppend = preAppend(i10);
            AllocationNode allocationNode = this.writeAllocationNode;
            parsableByteArray.readBytes(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), preAppend);
            i10 -= preAppend;
            postAppend(preAppend);
        }
    }
}

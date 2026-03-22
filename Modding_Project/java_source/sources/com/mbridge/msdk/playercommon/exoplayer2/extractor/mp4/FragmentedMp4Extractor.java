package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmInitData;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ChunkIndex;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorsFactory;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.PositionHolder;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4.Atom;
import com.mbridge.msdk.playercommon.exoplayer2.text.cea.CeaUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.NalUnitUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.TimestampAdjuster;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes6.dex */
public final class FragmentedMp4Extractor implements Extractor {
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    private static final int FLAG_SIDELOADED = 8;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 16;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE_CONTINUE = 4;
    private static final int STATE_READING_SAMPLE_START = 3;
    private static final String TAG = "FragmentedMp4Extractor";
    @Nullable
    private final TrackOutput additionalEmsgTrackOutput;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private TrackOutput[] cea608TrackOutputs;
    private final List<Format> closedCaptionFormats;
    private final ArrayDeque<Atom.ContainerAtom> containerAtoms;
    private TrackBundle currentTrackBundle;
    private long durationUs;
    private TrackOutput[] emsgTrackOutputs;
    private long endOfMdatPosition;
    private final byte[] extendedTypeScratch;
    private ExtractorOutput extractorOutput;
    private final int flags;
    private boolean haveOutputSeekMap;
    private final ParsableByteArray nalBuffer;
    private final ParsableByteArray nalPrefix;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int pendingMetadataSampleBytes;
    private final ArrayDeque<MetadataSampleInfo> pendingMetadataSampleInfos;
    private long pendingSeekTimeUs;
    private boolean processSeiNalUnitPayload;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleSize;
    private long segmentIndexEarliestPresentationTimeUs;
    @Nullable
    private final DrmInitData sideloadedDrmInitData;
    @Nullable
    private final Track sideloadedTrack;
    @Nullable
    private final TimestampAdjuster timestampAdjuster;
    private final SparseArray<TrackBundle> trackBundles;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4.FragmentedMp4Extractor.1
        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorsFactory
        public Extractor[] createExtractors() {
            return new Extractor[]{new FragmentedMp4Extractor()};
        }
    };
    private static final int SAMPLE_GROUP_TYPE_seig = Util.getIntegerCodeForString("seig");
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final Format EMSG_FORMAT = Format.createSampleFormat(null, MimeTypes.APPLICATION_EMSG, Long.MAX_VALUE);

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface Flags {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class MetadataSampleInfo {
        public final long presentationTimeDeltaUs;
        public final int size;

        public MetadataSampleInfo(long j10, int i10) {
            this.presentationTimeDeltaUs = j10;
            this.size = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class TrackBundle {
        public int currentSampleInTrackRun;
        public int currentSampleIndex;
        public int currentTrackRunIndex;
        public DefaultSampleValues defaultSampleValues;
        public int firstSampleToOutputIndex;
        public final TrackOutput output;
        public Track track;
        public final TrackFragment fragment = new TrackFragment();
        private final ParsableByteArray encryptionSignalByte = new ParsableByteArray(1);
        private final ParsableByteArray defaultInitializationVector = new ParsableByteArray();

        public TrackBundle(TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        private TrackEncryptionBox getEncryptionBox() {
            TrackFragment trackFragment = this.fragment;
            int i10 = trackFragment.header.sampleDescriptionIndex;
            TrackEncryptionBox trackEncryptionBox = trackFragment.trackEncryptionBox;
            if (trackEncryptionBox == null) {
                return this.track.getSampleDescriptionEncryptionBox(i10);
            }
            return trackEncryptionBox;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void skipSampleEncryptionData() {
            TrackFragment trackFragment = this.fragment;
            if (!trackFragment.definesEncryptionData) {
                return;
            }
            ParsableByteArray parsableByteArray = trackFragment.sampleEncryptionData;
            int i10 = getEncryptionBox().initializationVectorSize;
            if (i10 != 0) {
                parsableByteArray.skipBytes(i10);
            }
            if (this.fragment.sampleHasSubsampleEncryptionTable[this.currentSampleIndex]) {
                parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort() * 6);
            }
        }

        public void init(Track track, DefaultSampleValues defaultSampleValues) {
            this.track = (Track) Assertions.checkNotNull(track);
            this.defaultSampleValues = (DefaultSampleValues) Assertions.checkNotNull(defaultSampleValues);
            this.output.format(track.format);
            reset();
        }

        public boolean next() {
            this.currentSampleIndex++;
            int i10 = this.currentSampleInTrackRun + 1;
            this.currentSampleInTrackRun = i10;
            int[] iArr = this.fragment.trunLength;
            int i11 = this.currentTrackRunIndex;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.currentTrackRunIndex = i11 + 1;
            this.currentSampleInTrackRun = 0;
            return false;
        }

        public int outputSampleEncryptionData() {
            ParsableByteArray parsableByteArray;
            int i10;
            if (!this.fragment.definesEncryptionData) {
                return 0;
            }
            TrackEncryptionBox encryptionBox = getEncryptionBox();
            int i11 = encryptionBox.initializationVectorSize;
            if (i11 != 0) {
                parsableByteArray = this.fragment.sampleEncryptionData;
            } else {
                byte[] bArr = encryptionBox.defaultInitializationVector;
                this.defaultInitializationVector.reset(bArr, bArr.length);
                ParsableByteArray parsableByteArray2 = this.defaultInitializationVector;
                i11 = bArr.length;
                parsableByteArray = parsableByteArray2;
            }
            boolean z10 = this.fragment.sampleHasSubsampleEncryptionTable[this.currentSampleIndex];
            ParsableByteArray parsableByteArray3 = this.encryptionSignalByte;
            byte[] bArr2 = parsableByteArray3.data;
            if (z10) {
                i10 = 128;
            } else {
                i10 = 0;
            }
            bArr2[0] = (byte) (i10 | i11);
            parsableByteArray3.setPosition(0);
            this.output.sampleData(this.encryptionSignalByte, 1);
            this.output.sampleData(parsableByteArray, i11);
            if (!z10) {
                return i11 + 1;
            }
            ParsableByteArray parsableByteArray4 = this.fragment.sampleEncryptionData;
            int readUnsignedShort = parsableByteArray4.readUnsignedShort();
            parsableByteArray4.skipBytes(-2);
            int i12 = (readUnsignedShort * 6) + 2;
            this.output.sampleData(parsableByteArray4, i12);
            return i11 + 1 + i12;
        }

        public void reset() {
            this.fragment.reset();
            this.currentSampleIndex = 0;
            this.currentTrackRunIndex = 0;
            this.currentSampleInTrackRun = 0;
            this.firstSampleToOutputIndex = 0;
        }

        public void seek(long j10) {
            long usToMs = C.usToMs(j10);
            int i10 = this.currentSampleIndex;
            while (true) {
                TrackFragment trackFragment = this.fragment;
                if (i10 < trackFragment.sampleCount && trackFragment.getSamplePresentationTime(i10) < usToMs) {
                    if (this.fragment.sampleIsSyncFrameTable[i10]) {
                        this.firstSampleToOutputIndex = i10;
                    }
                    i10++;
                } else {
                    return;
                }
            }
        }

        public void updateDrmInitData(DrmInitData drmInitData) {
            String str;
            TrackEncryptionBox sampleDescriptionEncryptionBox = this.track.getSampleDescriptionEncryptionBox(this.fragment.header.sampleDescriptionIndex);
            if (sampleDescriptionEncryptionBox != null) {
                str = sampleDescriptionEncryptionBox.schemeType;
            } else {
                str = null;
            }
            this.output.format(this.track.format.copyWithDrmInitData(drmInitData.copyWithSchemeType(str)));
        }
    }

    public FragmentedMp4Extractor() {
        this(0);
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private DefaultSampleValues getDefaultSampleValues(SparseArray<DefaultSampleValues> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (DefaultSampleValues) Assertions.checkNotNull(sparseArray.get(i10));
    }

    private static DrmInitData getDrmInitDataFromAtoms(List<Atom.LeafAtom> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            Atom.LeafAtom leafAtom = list.get(i10);
            if (leafAtom.type == Atom.TYPE_pssh) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = leafAtom.data.data;
                UUID parseUuid = PsshAtomUtil.parseUuid(bArr);
                if (parseUuid == null) {
                    Log.w(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(parseUuid, MimeTypes.VIDEO_MP4, bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static TrackBundle getNextFragmentRun(SparseArray<TrackBundle> sparseArray) {
        int size = sparseArray.size();
        TrackBundle trackBundle = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            TrackBundle valueAt = sparseArray.valueAt(i10);
            int i11 = valueAt.currentTrackRunIndex;
            TrackFragment trackFragment = valueAt.fragment;
            if (i11 != trackFragment.trunCount) {
                long j11 = trackFragment.trunDataPosition[i11];
                if (j11 < j10) {
                    trackBundle = valueAt;
                    j10 = j11;
                }
            }
        }
        return trackBundle;
    }

    @Nullable
    private static TrackBundle getTrackBundle(SparseArray<TrackBundle> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return sparseArray.get(i10);
    }

    private void maybeInitExtraTracks() {
        int i10;
        if (this.emsgTrackOutputs == null) {
            TrackOutput[] trackOutputArr = new TrackOutput[2];
            this.emsgTrackOutputs = trackOutputArr;
            TrackOutput trackOutput = this.additionalEmsgTrackOutput;
            if (trackOutput != null) {
                trackOutputArr[0] = trackOutput;
                i10 = 1;
            } else {
                i10 = 0;
            }
            if ((this.flags & 4) != 0) {
                trackOutputArr[i10] = this.extractorOutput.track(this.trackBundles.size(), 4);
                i10++;
            }
            TrackOutput[] trackOutputArr2 = (TrackOutput[]) Arrays.copyOf(this.emsgTrackOutputs, i10);
            this.emsgTrackOutputs = trackOutputArr2;
            for (TrackOutput trackOutput2 : trackOutputArr2) {
                trackOutput2.format(EMSG_FORMAT);
            }
        }
        if (this.cea608TrackOutputs == null) {
            this.cea608TrackOutputs = new TrackOutput[this.closedCaptionFormats.size()];
            for (int i11 = 0; i11 < this.cea608TrackOutputs.length; i11++) {
                TrackOutput track = this.extractorOutput.track(this.trackBundles.size() + 1 + i11, 3);
                track.format(this.closedCaptionFormats.get(i11));
                this.cea608TrackOutputs[i11] = track;
            }
        }
    }

    private void onContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        int i10 = containerAtom.type;
        if (i10 == Atom.TYPE_moov) {
            onMoovContainerAtomRead(containerAtom);
        } else if (i10 == Atom.TYPE_moof) {
            onMoofContainerAtomRead(containerAtom);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(containerAtom);
        }
    }

    private void onEmsgLeafAtomRead(ParsableByteArray parsableByteArray) {
        TrackOutput[] trackOutputArr;
        TrackOutput[] trackOutputArr2 = this.emsgTrackOutputs;
        if (trackOutputArr2 != null && trackOutputArr2.length != 0) {
            parsableByteArray.setPosition(12);
            int bytesLeft = parsableByteArray.bytesLeft();
            parsableByteArray.readNullTerminatedString();
            parsableByteArray.readNullTerminatedString();
            long scaleLargeTimestamp = Util.scaleLargeTimestamp(parsableByteArray.readUnsignedInt(), 1000000L, parsableByteArray.readUnsignedInt());
            for (TrackOutput trackOutput : this.emsgTrackOutputs) {
                parsableByteArray.setPosition(12);
                trackOutput.sampleData(parsableByteArray, bytesLeft);
            }
            long j10 = this.segmentIndexEarliestPresentationTimeUs;
            if (j10 != -9223372036854775807L) {
                long j11 = j10 + scaleLargeTimestamp;
                TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
                if (timestampAdjuster != null) {
                    j11 = timestampAdjuster.adjustSampleTimestamp(j11);
                }
                long j12 = j11;
                for (TrackOutput trackOutput2 : this.emsgTrackOutputs) {
                    trackOutput2.sampleMetadata(j12, 1, bytesLeft, 0, null);
                }
                return;
            }
            this.pendingMetadataSampleInfos.addLast(new MetadataSampleInfo(scaleLargeTimestamp, bytesLeft));
            this.pendingMetadataSampleBytes += bytesLeft;
        }
    }

    private void onLeafAtomRead(Atom.LeafAtom leafAtom, long j10) throws ParserException {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leafAtom);
            return;
        }
        int i10 = leafAtom.type;
        if (i10 == Atom.TYPE_sidx) {
            Pair<Long, ChunkIndex> parseSidx = parseSidx(leafAtom.data, j10);
            this.segmentIndexEarliestPresentationTimeUs = ((Long) parseSidx.first).longValue();
            this.extractorOutput.seekMap((SeekMap) parseSidx.second);
            this.haveOutputSeekMap = true;
        } else if (i10 == Atom.TYPE_emsg) {
            onEmsgLeafAtomRead(leafAtom.data);
        }
    }

    private void onMoofContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        DrmInitData drmInitDataFromAtoms;
        parseMoof(containerAtom, this.trackBundles, this.flags, this.extendedTypeScratch);
        if (this.sideloadedDrmInitData != null) {
            drmInitDataFromAtoms = null;
        } else {
            drmInitDataFromAtoms = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        }
        if (drmInitDataFromAtoms != null) {
            int size = this.trackBundles.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.trackBundles.valueAt(i10).updateDrmInitData(drmInitDataFromAtoms);
            }
        }
        if (this.pendingSeekTimeUs != -9223372036854775807L) {
            int size2 = this.trackBundles.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.trackBundles.valueAt(i11).seek(this.pendingSeekTimeUs);
            }
            this.pendingSeekTimeUs = -9223372036854775807L;
        }
    }

    private void onMoovContainerAtomRead(Atom.ContainerAtom containerAtom) throws ParserException {
        boolean z10;
        int i10;
        int i11;
        boolean z11;
        int i12 = 0;
        boolean z12 = true;
        if (this.sideloadedTrack == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkState(z10, "Unexpected moov box.");
        DrmInitData drmInitData = this.sideloadedDrmInitData;
        if (drmInitData == null) {
            drmInitData = getDrmInitDataFromAtoms(containerAtom.leafChildren);
        }
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mvex);
        SparseArray<DefaultSampleValues> sparseArray = new SparseArray<>();
        int size = containerAtomOfType.leafChildren.size();
        long j10 = -9223372036854775807L;
        for (int i13 = 0; i13 < size; i13++) {
            Atom.LeafAtom leafAtom = containerAtomOfType.leafChildren.get(i13);
            int i14 = leafAtom.type;
            if (i14 == Atom.TYPE_trex) {
                Pair<Integer, DefaultSampleValues> parseTrex = parseTrex(leafAtom.data);
                sparseArray.put(((Integer) parseTrex.first).intValue(), (DefaultSampleValues) parseTrex.second);
            } else if (i14 == Atom.TYPE_mehd) {
                j10 = parseMehd(leafAtom.data);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = containerAtom.containerChildren.size();
        int i15 = 0;
        while (i15 < size2) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i15);
            if (containerAtom2.type == Atom.TYPE_trak) {
                Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd);
                if ((this.flags & 16) != 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                i10 = i15;
                boolean z13 = z11;
                i11 = size2;
                Track parseTrak = AtomParsers.parseTrak(containerAtom2, leafAtomOfType, j10, drmInitData, z13, false);
                if (parseTrak != null) {
                    sparseArray2.put(parseTrak.f28477id, parseTrak);
                }
            } else {
                i10 = i15;
                i11 = size2;
            }
            i15 = i10 + 1;
            size2 = i11;
        }
        int size3 = sparseArray2.size();
        if (this.trackBundles.size() == 0) {
            while (i12 < size3) {
                Track track = (Track) sparseArray2.valueAt(i12);
                TrackBundle trackBundle = new TrackBundle(this.extractorOutput.track(i12, track.type));
                trackBundle.init(track, getDefaultSampleValues(sparseArray, track.f28477id));
                this.trackBundles.put(track.f28477id, trackBundle);
                this.durationUs = Math.max(this.durationUs, track.durationUs);
                i12++;
            }
            maybeInitExtraTracks();
            this.extractorOutput.endTracks();
            return;
        }
        if (this.trackBundles.size() != size3) {
            z12 = false;
        }
        Assertions.checkState(z12);
        while (i12 < size3) {
            Track track2 = (Track) sparseArray2.valueAt(i12);
            this.trackBundles.get(track2.f28477id).init(track2, getDefaultSampleValues(sparseArray, track2.f28477id));
            i12++;
        }
    }

    private void outputPendingMetadataSamples(long j10) {
        while (!this.pendingMetadataSampleInfos.isEmpty()) {
            MetadataSampleInfo removeFirst = this.pendingMetadataSampleInfos.removeFirst();
            this.pendingMetadataSampleBytes -= removeFirst.size;
            long j11 = removeFirst.presentationTimeDeltaUs + j10;
            TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
            if (timestampAdjuster != null) {
                j11 = timestampAdjuster.adjustSampleTimestamp(j11);
            }
            for (TrackOutput trackOutput : this.emsgTrackOutputs) {
                trackOutput.sampleMetadata(j11, 1, removeFirst.size, this.pendingMetadataSampleBytes, null);
            }
        }
    }

    private static long parseMehd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 0) {
            return parsableByteArray.readUnsignedInt();
        }
        return parsableByteArray.readUnsignedLongToLong();
    }

    private static void parseMoof(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i10, byte[] bArr) throws ParserException {
        int size = containerAtom.containerChildren.size();
        for (int i11 = 0; i11 < size; i11++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i11);
            if (containerAtom2.type == Atom.TYPE_traf) {
                parseTraf(containerAtom2, sparseArray, i10, bArr);
            }
        }
    }

    private static void parseSaio(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        long readUnsignedLongToLong;
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        if ((Atom.parseFullAtomFlags(readInt) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == 1) {
            int parseFullAtomVersion = Atom.parseFullAtomVersion(readInt);
            long j10 = trackFragment.auxiliaryDataPosition;
            if (parseFullAtomVersion == 0) {
                readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
            } else {
                readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            }
            trackFragment.auxiliaryDataPosition = j10 + readUnsignedLongToLong;
            return;
        }
        throw new ParserException("Unexpected saio entry count: " + readUnsignedIntToInt);
    }

    private static void parseSaiz(TrackEncryptionBox trackEncryptionBox, ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        int i10;
        boolean z10;
        int i11 = trackEncryptionBox.initializationVectorSize;
        parsableByteArray.setPosition(8);
        boolean z11 = true;
        if ((Atom.parseFullAtomFlags(parsableByteArray.readInt()) & 1) == 1) {
            parsableByteArray.skipBytes(8);
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt == trackFragment.sampleCount) {
            if (readUnsignedByte == 0) {
                boolean[] zArr = trackFragment.sampleHasSubsampleEncryptionTable;
                i10 = 0;
                for (int i12 = 0; i12 < readUnsignedIntToInt; i12++) {
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    i10 += readUnsignedByte2;
                    if (readUnsignedByte2 > i11) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zArr[i12] = z10;
                }
            } else {
                if (readUnsignedByte <= i11) {
                    z11 = false;
                }
                i10 = readUnsignedByte * readUnsignedIntToInt;
                Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z11);
            }
            trackFragment.initEncryptionData(i10);
            return;
        }
        throw new ParserException("Length mismatch: " + readUnsignedIntToInt + ", " + trackFragment.sampleCount);
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, TrackFragment trackFragment) throws ParserException {
        parseSenc(parsableByteArray, 0, trackFragment);
    }

    private static void parseSgpd(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, String str, TrackFragment trackFragment) throws ParserException {
        boolean z10;
        byte[] bArr;
        parsableByteArray.setPosition(8);
        int readInt = parsableByteArray.readInt();
        int readInt2 = parsableByteArray.readInt();
        int i10 = SAMPLE_GROUP_TYPE_seig;
        if (readInt2 != i10) {
            return;
        }
        if (Atom.parseFullAtomVersion(readInt) == 1) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.readInt() == 1) {
            parsableByteArray2.setPosition(8);
            int readInt3 = parsableByteArray2.readInt();
            if (parsableByteArray2.readInt() != i10) {
                return;
            }
            int parseFullAtomVersion = Atom.parseFullAtomVersion(readInt3);
            if (parseFullAtomVersion == 1) {
                if (parsableByteArray2.readUnsignedInt() == 0) {
                    throw new ParserException("Variable length description in sgpd found (unsupported)");
                }
            } else if (parseFullAtomVersion >= 2) {
                parsableByteArray2.skipBytes(4);
            }
            if (parsableByteArray2.readUnsignedInt() == 1) {
                parsableByteArray2.skipBytes(1);
                int readUnsignedByte = parsableByteArray2.readUnsignedByte();
                int i11 = (readUnsignedByte & 240) >> 4;
                int i12 = readUnsignedByte & 15;
                if (parsableByteArray2.readUnsignedByte() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    return;
                }
                int readUnsignedByte2 = parsableByteArray2.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray2.readBytes(bArr2, 0, 16);
                if (z10 && readUnsignedByte2 == 0) {
                    int readUnsignedByte3 = parsableByteArray2.readUnsignedByte();
                    byte[] bArr3 = new byte[readUnsignedByte3];
                    parsableByteArray2.readBytes(bArr3, 0, readUnsignedByte3);
                    bArr = bArr3;
                } else {
                    bArr = null;
                }
                trackFragment.definesEncryptionData = true;
                trackFragment.trackEncryptionBox = new TrackEncryptionBox(z10, str, readUnsignedByte2, bArr2, i11, i12, bArr);
                return;
            }
            throw new ParserException("Entry count in sgpd != 1 (unsupported).");
        }
        throw new ParserException("Entry count in sbgp != 1 (unsupported).");
    }

    private static Pair<Long, ChunkIndex> parseSidx(ParsableByteArray parsableByteArray, long j10) throws ParserException {
        long readUnsignedLongToLong;
        long readUnsignedLongToLong2;
        int[] iArr;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(4);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedInt();
        } else {
            readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            readUnsignedLongToLong2 = parsableByteArray.readUnsignedLongToLong();
        }
        long j11 = readUnsignedLongToLong;
        long j12 = j10 + readUnsignedLongToLong2;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(j11, 1000000L, readUnsignedInt);
        parsableByteArray.skipBytes(2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int[] iArr2 = new int[readUnsignedShort];
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        long[] jArr3 = new long[readUnsignedShort];
        long j13 = scaleLargeTimestamp;
        int i10 = 0;
        long j14 = j11;
        while (i10 < readUnsignedShort) {
            int readInt = parsableByteArray.readInt();
            if ((readInt & Integer.MIN_VALUE) == 0) {
                long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
                iArr2[i10] = readInt & Integer.MAX_VALUE;
                jArr[i10] = j12;
                jArr3[i10] = j13;
                long j15 = j14 + readUnsignedInt2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i11 = readUnsignedShort;
                long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(j15, 1000000L, readUnsignedInt);
                jArr4[i10] = scaleLargeTimestamp2 - jArr5[i10];
                parsableByteArray.skipBytes(4);
                j12 += iArr[i10];
                i10++;
                iArr2 = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                readUnsignedShort = i11;
                j14 = j15;
                j13 = scaleLargeTimestamp2;
            } else {
                throw new ParserException("Unhandled indirect reference");
            }
        }
        return Pair.create(Long.valueOf(scaleLargeTimestamp), new ChunkIndex(iArr2, jArr, jArr2, jArr3));
    }

    private static long parseTfdt(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 1) {
            return parsableByteArray.readUnsignedLongToLong();
        }
        return parsableByteArray.readUnsignedInt();
    }

    private static TrackBundle parseTfhd(ParsableByteArray parsableByteArray, SparseArray<TrackBundle> sparseArray) {
        int i10;
        int i11;
        int i12;
        int i13;
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        TrackBundle trackBundle = getTrackBundle(sparseArray, parsableByteArray.readInt());
        if (trackBundle == null) {
            return null;
        }
        if ((parseFullAtomFlags & 1) != 0) {
            long readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
            TrackFragment trackFragment = trackBundle.fragment;
            trackFragment.dataPosition = readUnsignedLongToLong;
            trackFragment.auxiliaryDataPosition = readUnsignedLongToLong;
        }
        DefaultSampleValues defaultSampleValues = trackBundle.defaultSampleValues;
        if ((parseFullAtomFlags & 2) != 0) {
            i10 = parsableByteArray.readUnsignedIntToInt() - 1;
        } else {
            i10 = defaultSampleValues.sampleDescriptionIndex;
        }
        if ((parseFullAtomFlags & 8) != 0) {
            i11 = parsableByteArray.readUnsignedIntToInt();
        } else {
            i11 = defaultSampleValues.duration;
        }
        if ((parseFullAtomFlags & 16) != 0) {
            i12 = parsableByteArray.readUnsignedIntToInt();
        } else {
            i12 = defaultSampleValues.size;
        }
        if ((parseFullAtomFlags & 32) != 0) {
            i13 = parsableByteArray.readUnsignedIntToInt();
        } else {
            i13 = defaultSampleValues.flags;
        }
        trackBundle.fragment.header = new DefaultSampleValues(i10, i11, i12, i13);
        return trackBundle;
    }

    private static void parseTraf(Atom.ContainerAtom containerAtom, SparseArray<TrackBundle> sparseArray, int i10, byte[] bArr) throws ParserException {
        String str;
        TrackBundle parseTfhd = parseTfhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tfhd).data, sparseArray);
        if (parseTfhd == null) {
            return;
        }
        TrackFragment trackFragment = parseTfhd.fragment;
        long j10 = trackFragment.nextFragmentDecodeTime;
        parseTfhd.reset();
        int i11 = Atom.TYPE_tfdt;
        if (containerAtom.getLeafAtomOfType(i11) != null && (i10 & 2) == 0) {
            j10 = parseTfdt(containerAtom.getLeafAtomOfType(i11).data);
        }
        parseTruns(containerAtom, parseTfhd, j10, i10);
        TrackEncryptionBox sampleDescriptionEncryptionBox = parseTfhd.track.getSampleDescriptionEncryptionBox(trackFragment.header.sampleDescriptionIndex);
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_saiz);
        if (leafAtomOfType != null) {
            parseSaiz(sampleDescriptionEncryptionBox, leafAtomOfType.data, trackFragment);
        }
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_saio);
        if (leafAtomOfType2 != null) {
            parseSaio(leafAtomOfType2.data, trackFragment);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_senc);
        if (leafAtomOfType3 != null) {
            parseSenc(leafAtomOfType3.data, trackFragment);
        }
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_sbgp);
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_sgpd);
        if (leafAtomOfType4 != null && leafAtomOfType5 != null) {
            ParsableByteArray parsableByteArray = leafAtomOfType4.data;
            ParsableByteArray parsableByteArray2 = leafAtomOfType5.data;
            if (sampleDescriptionEncryptionBox != null) {
                str = sampleDescriptionEncryptionBox.schemeType;
            } else {
                str = null;
            }
            parseSgpd(parsableByteArray, parsableByteArray2, str, trackFragment);
        }
        int size = containerAtom.leafChildren.size();
        for (int i12 = 0; i12 < size; i12++) {
            Atom.LeafAtom leafAtom = containerAtom.leafChildren.get(i12);
            if (leafAtom.type == Atom.TYPE_uuid) {
                parseUuid(leafAtom.data, trackFragment, bArr);
            }
        }
    }

    private static Pair<Integer, DefaultSampleValues> parseTrex(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(12);
        return Pair.create(Integer.valueOf(parsableByteArray.readInt()), new DefaultSampleValues(parsableByteArray.readUnsignedIntToInt() - 1, parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readUnsignedIntToInt(), parsableByteArray.readInt()));
    }

    private static int parseTrun(TrackBundle trackBundle, int i10, long j10, int i11, ParsableByteArray parsableByteArray, int i12) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        long j11;
        boolean z16;
        int i13;
        boolean z17;
        int i14;
        boolean z18;
        int i15;
        boolean z19;
        int i16;
        int i17;
        boolean z20;
        boolean z21;
        parsableByteArray.setPosition(8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        Track track = trackBundle.track;
        TrackFragment trackFragment = trackBundle.fragment;
        DefaultSampleValues defaultSampleValues = trackFragment.header;
        trackFragment.trunLength[i10] = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = trackFragment.trunDataPosition;
        long j12 = trackFragment.dataPosition;
        jArr[i10] = j12;
        if ((parseFullAtomFlags & 1) != 0) {
            jArr[i10] = j12 + parsableByteArray.readInt();
        }
        if ((parseFullAtomFlags & 4) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i18 = defaultSampleValues.flags;
        if (z10) {
            i18 = parsableByteArray.readUnsignedIntToInt();
        }
        if ((parseFullAtomFlags & 256) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((parseFullAtomFlags & 512) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if ((parseFullAtomFlags & 1024) != 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        if ((parseFullAtomFlags & 2048) != 0) {
            z14 = true;
        } else {
            z14 = false;
        }
        long[] jArr2 = track.editListDurations;
        long j13 = 0;
        if (jArr2 != null && jArr2.length == 1 && jArr2[0] == 0) {
            j13 = Util.scaleLargeTimestamp(track.editListMediaTimes[0], 1000L, track.timescale);
        }
        int[] iArr = trackFragment.sampleSizeTable;
        int[] iArr2 = trackFragment.sampleCompositionTimeOffsetTable;
        long[] jArr3 = trackFragment.sampleDecodingTimeTable;
        boolean[] zArr = trackFragment.sampleIsSyncFrameTable;
        int i19 = i18;
        if (track.type == 2 && (i11 & 1) != 0) {
            z15 = true;
        } else {
            z15 = false;
        }
        int i20 = i12 + trackFragment.trunLength[i10];
        long j14 = track.timescale;
        long j15 = j13;
        if (i10 > 0) {
            j11 = trackFragment.nextFragmentDecodeTime;
        } else {
            j11 = j10;
        }
        int i21 = i12;
        while (i21 < i20) {
            if (z11) {
                z16 = z11;
                i13 = parsableByteArray.readUnsignedIntToInt();
            } else {
                z16 = z11;
                i13 = defaultSampleValues.duration;
            }
            if (z12) {
                z17 = z12;
                i14 = parsableByteArray.readUnsignedIntToInt();
            } else {
                z17 = z12;
                i14 = defaultSampleValues.size;
            }
            if (i21 == 0 && z10) {
                z18 = z10;
                i15 = i19;
            } else if (z13) {
                z18 = z10;
                i15 = parsableByteArray.readInt();
            } else {
                z18 = z10;
                i15 = defaultSampleValues.flags;
            }
            if (z14) {
                z19 = z14;
                i16 = i20;
                i17 = i13;
                iArr2[i21] = (int) ((parsableByteArray.readInt() * 1000) / j14);
                z20 = false;
            } else {
                z19 = z14;
                i16 = i20;
                i17 = i13;
                z20 = false;
                iArr2[i21] = 0;
            }
            jArr3[i21] = Util.scaleLargeTimestamp(j11, 1000L, j14) - j15;
            iArr[i21] = i14;
            if (((i15 >> 16) & 1) == 0 && (!z15 || i21 == 0)) {
                z21 = true;
            } else {
                z21 = z20;
            }
            zArr[i21] = z21;
            j11 += i17;
            i21++;
            z11 = z16;
            z12 = z17;
            z10 = z18;
            z14 = z19;
            i20 = i16;
        }
        int i22 = i20;
        trackFragment.nextFragmentDecodeTime = j11;
        return i22;
    }

    private static void parseTruns(Atom.ContainerAtom containerAtom, TrackBundle trackBundle, long j10, int i10) {
        List<Atom.LeafAtom> list = containerAtom.leafChildren;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            Atom.LeafAtom leafAtom = list.get(i13);
            if (leafAtom.type == Atom.TYPE_trun) {
                ParsableByteArray parsableByteArray = leafAtom.data;
                parsableByteArray.setPosition(12);
                int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
                if (readUnsignedIntToInt > 0) {
                    i12 += readUnsignedIntToInt;
                    i11++;
                }
            }
        }
        trackBundle.currentTrackRunIndex = 0;
        trackBundle.currentSampleInTrackRun = 0;
        trackBundle.currentSampleIndex = 0;
        trackBundle.fragment.initTables(i11, i12);
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < size; i16++) {
            Atom.LeafAtom leafAtom2 = list.get(i16);
            if (leafAtom2.type == Atom.TYPE_trun) {
                i15 = parseTrun(trackBundle, i14, j10, i10, leafAtom2.data, i15);
                i14++;
            }
        }
    }

    private static void parseUuid(ParsableByteArray parsableByteArray, TrackFragment trackFragment, byte[] bArr) throws ParserException {
        parsableByteArray.setPosition(8);
        parsableByteArray.readBytes(bArr, 0, 16);
        if (!Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            return;
        }
        parseSenc(parsableByteArray, 16, trackFragment);
    }

    private void processAtomEnded(long j10) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j10) {
            onContainerAtomRead(this.containerAtoms.pop());
        }
        enterReadingAtomHeaderState();
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.data, 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        long j10 = this.atomSize;
        if (j10 == 1) {
            extractorInput.readFully(this.atomHeader.data, 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        } else if (j10 == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && !this.containerAtoms.isEmpty()) {
                length = this.containerAtoms.peek().endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - extractorInput.getPosition()) + this.atomHeaderBytesRead;
            }
        }
        if (this.atomSize >= this.atomHeaderBytesRead) {
            long position = extractorInput.getPosition() - this.atomHeaderBytesRead;
            if (this.atomType == Atom.TYPE_moof) {
                int size = this.trackBundles.size();
                for (int i10 = 0; i10 < size; i10++) {
                    TrackFragment trackFragment = this.trackBundles.valueAt(i10).fragment;
                    trackFragment.atomPosition = position;
                    trackFragment.auxiliaryDataPosition = position;
                    trackFragment.dataPosition = position;
                }
            }
            int i11 = this.atomType;
            if (i11 == Atom.TYPE_mdat) {
                this.currentTrackBundle = null;
                this.endOfMdatPosition = this.atomSize + position;
                if (!this.haveOutputSeekMap) {
                    this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs, position));
                    this.haveOutputSeekMap = true;
                }
                this.parserState = 2;
                return true;
            }
            if (shouldParseContainerAtom(i11)) {
                long position2 = (extractorInput.getPosition() + this.atomSize) - 8;
                this.containerAtoms.push(new Atom.ContainerAtom(this.atomType, position2));
                if (this.atomSize == this.atomHeaderBytesRead) {
                    processAtomEnded(position2);
                } else {
                    enterReadingAtomHeaderState();
                }
            } else if (shouldParseLeafAtom(this.atomType)) {
                if (this.atomHeaderBytesRead == 8) {
                    long j11 = this.atomSize;
                    if (j11 <= SieveCacheKt.NodeLinkMask) {
                        ParsableByteArray parsableByteArray = new ParsableByteArray((int) j11);
                        this.atomData = parsableByteArray;
                        System.arraycopy(this.atomHeader.data, 0, parsableByteArray.data, 0, 8);
                        this.parserState = 1;
                    } else {
                        throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw new ParserException("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.atomSize <= SieveCacheKt.NodeLinkMask) {
                this.atomData = null;
                this.parserState = 1;
            } else {
                throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    private void readAtomPayload(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i10 = ((int) this.atomSize) - this.atomHeaderBytesRead;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray != null) {
            extractorInput.readFully(parsableByteArray.data, 8, i10);
            onLeafAtomRead(new Atom.LeafAtom(this.atomType, this.atomData), extractorInput.getPosition());
        } else {
            extractorInput.skipFully(i10);
        }
        processAtomEnded(extractorInput.getPosition());
    }

    private void readEncryptionData(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int size = this.trackBundles.size();
        TrackBundle trackBundle = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            TrackFragment trackFragment = this.trackBundles.valueAt(i10).fragment;
            if (trackFragment.sampleEncryptionDataNeedsFill) {
                long j11 = trackFragment.auxiliaryDataPosition;
                if (j11 < j10) {
                    trackBundle = this.trackBundles.valueAt(i10);
                    j10 = j11;
                }
            }
        }
        if (trackBundle == null) {
            this.parserState = 3;
            return;
        }
        int position = (int) (j10 - extractorInput.getPosition());
        if (position >= 0) {
            extractorInput.skipFully(position);
            trackBundle.fragment.fillEncryptionData(extractorInput);
            return;
        }
        throw new ParserException("Offset to encryption data was negative.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r4v6, types: [boolean] */
    private boolean readSample(ExtractorInput extractorInput) throws IOException, InterruptedException {
        ?? r13;
        TrackOutput.CryptoData cryptoData;
        ?? r32;
        int sampleData;
        int i10 = 4;
        int i11 = 1;
        int i12 = 0;
        if (this.parserState == 3) {
            if (this.currentTrackBundle == null) {
                TrackBundle nextFragmentRun = getNextFragmentRun(this.trackBundles);
                if (nextFragmentRun == null) {
                    int position = (int) (this.endOfMdatPosition - extractorInput.getPosition());
                    if (position >= 0) {
                        extractorInput.skipFully(position);
                        enterReadingAtomHeaderState();
                        return false;
                    }
                    throw new ParserException("Offset to end of mdat was negative.");
                }
                int position2 = (int) (nextFragmentRun.fragment.trunDataPosition[nextFragmentRun.currentTrackRunIndex] - extractorInput.getPosition());
                if (position2 < 0) {
                    Log.w(TAG, "Ignoring negative offset to sample data.");
                    position2 = 0;
                }
                extractorInput.skipFully(position2);
                this.currentTrackBundle = nextFragmentRun;
            }
            TrackBundle trackBundle = this.currentTrackBundle;
            int[] iArr = trackBundle.fragment.sampleSizeTable;
            int i13 = trackBundle.currentSampleIndex;
            int i14 = iArr[i13];
            this.sampleSize = i14;
            if (i13 < trackBundle.firstSampleToOutputIndex) {
                extractorInput.skipFully(i14);
                this.currentTrackBundle.skipSampleEncryptionData();
                if (!this.currentTrackBundle.next()) {
                    this.currentTrackBundle = null;
                }
                this.parserState = 3;
                return true;
            }
            if (trackBundle.track.sampleTransformation == 1) {
                this.sampleSize = i14 - 8;
                extractorInput.skipFully(8);
            }
            int outputSampleEncryptionData = this.currentTrackBundle.outputSampleEncryptionData();
            this.sampleBytesWritten = outputSampleEncryptionData;
            this.sampleSize += outputSampleEncryptionData;
            this.parserState = 4;
            this.sampleCurrentNalBytesRemaining = 0;
        }
        TrackBundle trackBundle2 = this.currentTrackBundle;
        TrackFragment trackFragment = trackBundle2.fragment;
        Track track = trackBundle2.track;
        ?? r10 = trackBundle2.output;
        int i15 = trackBundle2.currentSampleIndex;
        long samplePresentationTime = trackFragment.getSamplePresentationTime(i15) * 1000;
        TimestampAdjuster timestampAdjuster = this.timestampAdjuster;
        if (timestampAdjuster != null) {
            samplePresentationTime = timestampAdjuster.adjustSampleTimestamp(samplePresentationTime);
        }
        long j10 = samplePresentationTime;
        int i16 = track.nalUnitLengthFieldLength;
        if (i16 == 0) {
            while (true) {
                int i17 = this.sampleBytesWritten;
                int i18 = this.sampleSize;
                if (i17 >= i18) {
                    break;
                }
                this.sampleBytesWritten += r10.sampleData(extractorInput, i18 - i17, false);
            }
        } else {
            byte[] bArr = this.nalPrefix.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i19 = i16 + 1;
            int i20 = 4 - i16;
            while (this.sampleBytesWritten < this.sampleSize) {
                int i21 = this.sampleCurrentNalBytesRemaining;
                if (i21 == 0) {
                    extractorInput.readFully(bArr, i20, i19);
                    this.nalPrefix.setPosition(i12);
                    this.sampleCurrentNalBytesRemaining = this.nalPrefix.readUnsignedIntToInt() - i11;
                    this.nalStartCode.setPosition(i12);
                    r10.sampleData(this.nalStartCode, i10);
                    r10.sampleData(this.nalPrefix, i11);
                    if (this.cea608TrackOutputs.length > 0 && NalUnitUtil.isNalUnitSei(track.format.sampleMimeType, bArr[i10])) {
                        r32 = i11;
                    } else {
                        r32 = i12;
                    }
                    this.processSeiNalUnitPayload = r32;
                    this.sampleBytesWritten += 5;
                    this.sampleSize += i20;
                } else {
                    if (this.processSeiNalUnitPayload) {
                        this.nalBuffer.reset(i21);
                        extractorInput.readFully(this.nalBuffer.data, i12, this.sampleCurrentNalBytesRemaining);
                        r10.sampleData(this.nalBuffer, this.sampleCurrentNalBytesRemaining);
                        sampleData = this.sampleCurrentNalBytesRemaining;
                        ParsableByteArray parsableByteArray = this.nalBuffer;
                        int unescapeStream = NalUnitUtil.unescapeStream(parsableByteArray.data, parsableByteArray.limit());
                        this.nalBuffer.setPosition("video/hevc".equals(track.format.sampleMimeType) ? 1 : 0);
                        this.nalBuffer.setLimit(unescapeStream);
                        CeaUtil.consume(j10, this.nalBuffer, this.cea608TrackOutputs);
                    } else {
                        sampleData = r10.sampleData(extractorInput, i21, i12);
                    }
                    this.sampleBytesWritten += sampleData;
                    this.sampleCurrentNalBytesRemaining -= sampleData;
                    i10 = 4;
                    i11 = 1;
                    i12 = 0;
                }
            }
        }
        boolean z10 = trackFragment.sampleIsSyncFrameTable[i15];
        if (trackFragment.definesEncryptionData) {
            boolean z11 = z10 | true;
            TrackEncryptionBox trackEncryptionBox = trackFragment.trackEncryptionBox;
            if (trackEncryptionBox == null) {
                trackEncryptionBox = track.getSampleDescriptionEncryptionBox(trackFragment.header.sampleDescriptionIndex);
            }
            r13 = z11;
            cryptoData = trackEncryptionBox.cryptoData;
        } else {
            r13 = z10;
            cryptoData = null;
        }
        r10.sampleMetadata(j10, r13, this.sampleSize, 0, cryptoData);
        outputPendingMetadataSamples(j10);
        if (!this.currentTrackBundle.next()) {
            this.currentTrackBundle = null;
        }
        this.parserState = 3;
        return true;
    }

    private static boolean shouldParseContainerAtom(int i10) {
        if (i10 != Atom.TYPE_moov && i10 != Atom.TYPE_trak && i10 != Atom.TYPE_mdia && i10 != Atom.TYPE_minf && i10 != Atom.TYPE_stbl && i10 != Atom.TYPE_moof && i10 != Atom.TYPE_traf && i10 != Atom.TYPE_mvex && i10 != Atom.TYPE_edts) {
            return false;
        }
        return true;
    }

    private static boolean shouldParseLeafAtom(int i10) {
        if (i10 != Atom.TYPE_hdlr && i10 != Atom.TYPE_mdhd && i10 != Atom.TYPE_mvhd && i10 != Atom.TYPE_sidx && i10 != Atom.TYPE_stsd && i10 != Atom.TYPE_tfdt && i10 != Atom.TYPE_tfhd && i10 != Atom.TYPE_tkhd && i10 != Atom.TYPE_trex && i10 != Atom.TYPE_trun && i10 != Atom.TYPE_pssh && i10 != Atom.TYPE_saiz && i10 != Atom.TYPE_saio && i10 != Atom.TYPE_senc && i10 != Atom.TYPE_uuid && i10 != Atom.TYPE_sbgp && i10 != Atom.TYPE_sgpd && i10 != Atom.TYPE_elst && i10 != Atom.TYPE_mehd && i10 != Atom.TYPE_emsg) {
            return false;
        }
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        Track track = this.sideloadedTrack;
        if (track != null) {
            TrackBundle trackBundle = new TrackBundle(extractorOutput.track(0, track.type));
            trackBundle.init(this.sideloadedTrack, new DefaultSampleValues(0, 0, 0, 0));
            this.trackBundles.put(0, trackBundle);
            maybeInitExtraTracks();
            this.extractorOutput.endTracks();
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException, InterruptedException {
        while (true) {
            int i10 = this.parserState;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (readSample(extractorInput)) {
                            return 0;
                        }
                    } else {
                        readEncryptionData(extractorInput);
                    }
                } else {
                    readAtomPayload(extractorInput);
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public void seek(long j10, long j11) {
        int size = this.trackBundles.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.trackBundles.valueAt(i10).reset();
        }
        this.pendingMetadataSampleInfos.clear();
        this.pendingMetadataSampleBytes = 0;
        this.pendingSeekTimeUs = j11;
        this.containerAtoms.clear();
        enterReadingAtomHeaderState();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return Sniffer.sniffFragmented(extractorInput);
    }

    public FragmentedMp4Extractor(int i10) {
        this(i10, null);
    }

    private static void parseSenc(ParsableByteArray parsableByteArray, int i10, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.setPosition(i10 + 8);
        int parseFullAtomFlags = Atom.parseFullAtomFlags(parsableByteArray.readInt());
        if ((parseFullAtomFlags & 1) == 0) {
            boolean z10 = (parseFullAtomFlags & 2) != 0;
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if (readUnsignedIntToInt == trackFragment.sampleCount) {
                Arrays.fill(trackFragment.sampleHasSubsampleEncryptionTable, 0, readUnsignedIntToInt, z10);
                trackFragment.initEncryptionData(parsableByteArray.bytesLeft());
                trackFragment.fillEncryptionData(parsableByteArray);
                return;
            }
            throw new ParserException("Length mismatch: " + readUnsignedIntToInt + ", " + trackFragment.sampleCount);
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster) {
        this(i10, timestampAdjuster, null, null);
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, @Nullable DrmInitData drmInitData) {
        this(i10, timestampAdjuster, track, drmInitData, Collections.emptyList());
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, @Nullable DrmInitData drmInitData, List<Format> list) {
        this(i10, timestampAdjuster, track, drmInitData, list, null);
    }

    public FragmentedMp4Extractor(int i10, @Nullable TimestampAdjuster timestampAdjuster, @Nullable Track track, @Nullable DrmInitData drmInitData, List<Format> list, @Nullable TrackOutput trackOutput) {
        this.flags = i10 | (track != null ? 8 : 0);
        this.timestampAdjuster = timestampAdjuster;
        this.sideloadedTrack = track;
        this.sideloadedDrmInitData = drmInitData;
        this.closedCaptionFormats = Collections.unmodifiableList(list);
        this.additionalEmsgTrackOutput = trackOutput;
        this.atomHeader = new ParsableByteArray(16);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalPrefix = new ParsableByteArray(5);
        this.nalBuffer = new ParsableByteArray();
        this.extendedTypeScratch = new byte[16];
        this.containerAtoms = new ArrayDeque<>();
        this.pendingMetadataSampleInfos = new ArrayDeque<>();
        this.trackBundles = new SparseArray<>();
        this.durationUs = -9223372036854775807L;
        this.pendingSeekTimeUs = -9223372036854775807L;
        this.segmentIndexEarliestPresentationTimeUs = -9223372036854775807L;
        enterReadingAtomHeaderState();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public void release() {
    }
}

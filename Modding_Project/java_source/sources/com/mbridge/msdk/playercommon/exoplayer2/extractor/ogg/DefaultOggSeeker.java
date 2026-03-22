package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.EOFException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class DefaultOggSeeker implements OggSeeker {
    private static final int DEFAULT_OFFSET = 30000;
    public static final int MATCH_BYTE_RANGE = 100000;
    public static final int MATCH_RANGE = 72000;
    private static final int STATE_IDLE = 3;
    private static final int STATE_READ_LAST_PAGE = 1;
    private static final int STATE_SEEK = 2;
    private static final int STATE_SEEK_TO_END = 0;
    private long end;
    private long endGranule;
    private final long endPosition;
    private final OggPageHeader pageHeader = new OggPageHeader();
    private long positionBeforeSeekToEnd;
    private long start;
    private long startGranule;
    private final long startPosition;
    private int state;
    private final StreamReader streamReader;
    private long targetGranule;
    private long totalGranules;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class OggSeekMap implements SeekMap {
        private OggSeekMap() {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return DefaultOggSeeker.this.streamReader.convertGranuleToTime(DefaultOggSeeker.this.totalGranules);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j10) {
            if (j10 == 0) {
                return new SeekMap.SeekPoints(new SeekPoint(0L, DefaultOggSeeker.this.startPosition));
            }
            long convertTimeToGranule = DefaultOggSeeker.this.streamReader.convertTimeToGranule(j10);
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            return new SeekMap.SeekPoints(new SeekPoint(j10, defaultOggSeeker.getEstimatedPosition(defaultOggSeeker.startPosition, convertTimeToGranule, 30000L)));
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }
    }

    public DefaultOggSeeker(long j10, long j11, StreamReader streamReader, int i10, long j12) {
        boolean z10;
        if (j10 >= 0 && j11 > j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkArgument(z10);
        this.streamReader = streamReader;
        this.startPosition = j10;
        this.endPosition = j11;
        if (i10 == j11 - j10) {
            this.totalGranules = j12;
            this.state = 3;
            return;
        }
        this.state = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getEstimatedPosition(long j10, long j11, long j12) {
        long j13 = this.endPosition;
        long j14 = this.startPosition;
        long j15 = j10 + (((j11 * (j13 - j14)) / this.totalGranules) - j12);
        if (j15 >= j14) {
            j14 = j15;
        }
        if (j14 >= j13) {
            return j13 - 1;
        }
        return j14;
    }

    public long getNextSeekPosition(long j10, ExtractorInput extractorInput) throws IOException, InterruptedException {
        long j11 = 2;
        if (this.start == this.end) {
            return -(this.startGranule + 2);
        }
        long position = extractorInput.getPosition();
        if (!skipToNextPage(extractorInput, this.end)) {
            long j12 = this.start;
            if (j12 != position) {
                return j12;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.pageHeader.populate(extractorInput, false);
        extractorInput.resetPeekPosition();
        OggPageHeader oggPageHeader = this.pageHeader;
        long j13 = oggPageHeader.granulePosition;
        long j14 = j10 - j13;
        int i10 = oggPageHeader.headerSize + oggPageHeader.bodySize;
        int i11 = (j14 > 0L ? 1 : (j14 == 0L ? 0 : -1));
        if (i11 >= 0 && j14 <= 72000) {
            extractorInput.skipFully(i10);
            return -(this.pageHeader.granulePosition + 2);
        }
        if (i11 < 0) {
            this.end = position;
            this.endGranule = j13;
        } else {
            long j15 = i10;
            long position2 = extractorInput.getPosition() + j15;
            this.start = position2;
            this.startGranule = this.pageHeader.granulePosition;
            if ((this.end - position2) + j15 < 100000) {
                extractorInput.skipFully(i10);
                return -(this.startGranule + 2);
            }
        }
        long j16 = this.end;
        long j17 = this.start;
        if (j16 - j17 < 100000) {
            this.end = j17;
            return j17;
        }
        long j18 = i10;
        if (i11 > 0) {
            j11 = 1;
        }
        long position3 = extractorInput.getPosition();
        long j19 = this.end;
        long j20 = this.start;
        return Math.min(Math.max((position3 - (j18 * j11)) + ((j14 * (j19 - j20)) / (this.endGranule - this.startGranule)), j20), this.end - 1);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
    public long read(ExtractorInput extractorInput) throws IOException, InterruptedException {
        int i10 = this.state;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return -1L;
                    }
                    throw new IllegalStateException();
                }
                long j10 = this.targetGranule;
                long j11 = 0;
                if (j10 != 0) {
                    long nextSeekPosition = getNextSeekPosition(j10, extractorInput);
                    if (nextSeekPosition >= 0) {
                        return nextSeekPosition;
                    }
                    j11 = skipToPageOfGranule(extractorInput, this.targetGranule, -(nextSeekPosition + 2));
                }
                this.state = 3;
                return -(j11 + 2);
            }
        } else {
            long position = extractorInput.getPosition();
            this.positionBeforeSeekToEnd = position;
            this.state = 1;
            long j12 = this.endPosition - 65307;
            if (j12 > position) {
                return j12;
            }
        }
        this.totalGranules = readGranuleOfLastPage(extractorInput);
        this.state = 3;
        return this.positionBeforeSeekToEnd;
    }

    long readGranuleOfLastPage(ExtractorInput extractorInput) throws IOException, InterruptedException {
        skipToNextPage(extractorInput);
        this.pageHeader.reset();
        while ((this.pageHeader.type & 4) != 4 && extractorInput.getPosition() < this.endPosition) {
            this.pageHeader.populate(extractorInput, false);
            OggPageHeader oggPageHeader = this.pageHeader;
            extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
        }
        return this.pageHeader.granulePosition;
    }

    public void resetSeeking() {
        this.start = this.startPosition;
        this.end = this.endPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }

    void skipToNextPage(ExtractorInput extractorInput) throws IOException, InterruptedException {
        if (!skipToNextPage(extractorInput, this.endPosition)) {
            throw new EOFException();
        }
    }

    long skipToPageOfGranule(ExtractorInput extractorInput, long j10, long j11) throws IOException, InterruptedException {
        this.pageHeader.populate(extractorInput, false);
        while (true) {
            OggPageHeader oggPageHeader = this.pageHeader;
            if (oggPageHeader.granulePosition < j10) {
                extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
                OggPageHeader oggPageHeader2 = this.pageHeader;
                long j12 = oggPageHeader2.granulePosition;
                oggPageHeader2.populate(extractorInput, false);
                j11 = j12;
            } else {
                extractorInput.resetPeekPosition();
                return j11;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
    public long startSeek(long j10) {
        boolean z10;
        int i10 = this.state;
        if (i10 != 3 && i10 != 2) {
            z10 = false;
        } else {
            z10 = true;
        }
        Assertions.checkArgument(z10);
        long j11 = 0;
        if (j10 != 0) {
            j11 = this.streamReader.convertTimeToGranule(j10);
        }
        this.targetGranule = j11;
        this.state = 2;
        resetSeeking();
        return this.targetGranule;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
    public OggSeekMap createSeekMap() {
        if (this.totalGranules != 0) {
            return new OggSeekMap();
        }
        return null;
    }

    boolean skipToNextPage(ExtractorInput extractorInput, long j10) throws IOException, InterruptedException {
        int i10;
        long min = Math.min(j10 + 3, this.endPosition);
        int i11 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            int i12 = 0;
            if (extractorInput.getPosition() + i11 > min && (i11 = (int) (min - extractorInput.getPosition())) < 4) {
                return false;
            }
            extractorInput.peekFully(bArr, 0, i11, false);
            while (true) {
                i10 = i11 - 3;
                if (i12 < i10) {
                    if (bArr[i12] == 79 && bArr[i12 + 1] == 103 && bArr[i12 + 2] == 103 && bArr[i12 + 3] == 83) {
                        extractorInput.skipFully(i12);
                        return true;
                    }
                    i12++;
                }
            }
            extractorInput.skipFully(i10);
        }
    }
}

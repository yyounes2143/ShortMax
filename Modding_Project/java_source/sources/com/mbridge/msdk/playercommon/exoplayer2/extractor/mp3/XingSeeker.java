package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.MpegAudioHeader;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
/* loaded from: classes6.dex */
final class XingSeeker implements Mp3Extractor.Seeker {
    private static final String TAG = "XingSeeker";
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private XingSeeker(long j10, int i10, long j11) {
        this(j10, i10, j11, -1L, null);
    }

    public static XingSeeker create(long j10, long j11, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt;
        int i10 = mpegAudioHeader.samplesPerFrame;
        int i11 = mpegAudioHeader.sampleRate;
        int readInt = parsableByteArray.readInt();
        if ((readInt & 1) == 1 && (readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) != 0) {
            long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedIntToInt, i10 * 1000000, i11);
            if ((readInt & 6) != 6) {
                return new XingSeeker(j11, mpegAudioHeader.frameSize, scaleLargeTimestamp);
            }
            long readUnsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
            long[] jArr = new long[100];
            for (int i12 = 0; i12 < 100; i12++) {
                jArr[i12] = parsableByteArray.readUnsignedByte();
            }
            if (j10 != -1) {
                long j12 = j11 + readUnsignedIntToInt2;
                if (j10 != j12) {
                    Log.w(TAG, "XING data size mismatch: " + j10 + ", " + j12);
                }
            }
            return new XingSeeker(j11, mpegAudioHeader.frameSize, scaleLargeTimestamp, readUnsignedIntToInt2, jArr);
        }
        return null;
    }

    private long getTimeUsForTableIndex(int i10) {
        return (this.durationUs * i10) / 100;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j10) {
        double d10;
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + this.xingFrameSize));
        }
        long constrainValue = Util.constrainValue(j10, 0L, this.durationUs);
        double d11 = (constrainValue * 100.0d) / this.durationUs;
        double d12 = 0.0d;
        if (d11 > 0.0d) {
            if (d11 >= 100.0d) {
                d12 = 256.0d;
            } else {
                int i10 = (int) d11;
                long[] jArr = this.tableOfContents;
                double d13 = jArr[i10];
                if (i10 == 99) {
                    d10 = 256.0d;
                } else {
                    d10 = jArr[i10 + 1];
                }
                d12 = d13 + ((d11 - i10) * (d10 - d13));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(constrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d12 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j10) {
        long j11;
        double d10;
        long j12 = j10 - this.dataStartPosition;
        if (isSeekable() && j12 > this.xingFrameSize) {
            double d11 = (j12 * 256.0d) / this.dataSize;
            int binarySearchFloor = Util.binarySearchFloor(this.tableOfContents, (long) d11, true, true);
            long timeUsForTableIndex = getTimeUsForTableIndex(binarySearchFloor);
            long j13 = this.tableOfContents[binarySearchFloor];
            int i10 = binarySearchFloor + 1;
            long timeUsForTableIndex2 = getTimeUsForTableIndex(i10);
            if (binarySearchFloor == 99) {
                j11 = 256;
            } else {
                j11 = this.tableOfContents[i10];
            }
            if (j13 == j11) {
                d10 = 0.0d;
            } else {
                d10 = (d11 - j13) / (j11 - j13);
            }
            return timeUsForTableIndex + Math.round(d10 * (timeUsForTableIndex2 - timeUsForTableIndex));
        }
        return 0L;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        if (this.tableOfContents != null) {
            return true;
        }
        return false;
    }

    private XingSeeker(long j10, int i10, long j11, long j12, long[] jArr) {
        this.dataStartPosition = j10;
        this.xingFrameSize = i10;
        this.durationUs = j11;
        this.dataSize = j12;
        this.tableOfContents = jArr;
    }
}

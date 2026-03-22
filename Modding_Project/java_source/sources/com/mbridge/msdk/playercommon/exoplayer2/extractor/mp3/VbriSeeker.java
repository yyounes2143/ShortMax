package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.MpegAudioHeader;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
/* loaded from: classes6.dex */
final class VbriSeeker implements Mp3Extractor.Seeker {
    private static final String TAG = "VbriSeeker";
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    private VbriSeeker(long[] jArr, long[] jArr2, long j10) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j10;
    }

    public static VbriSeeker create(long j10, long j11, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int i10;
        int readUnsignedByte;
        parsableByteArray.skipBytes(10);
        int readInt = parsableByteArray.readInt();
        if (readInt <= 0) {
            return null;
        }
        int i11 = mpegAudioHeader.sampleRate;
        long j12 = readInt;
        if (i11 >= 32000) {
            i10 = 1152;
        } else {
            i10 = 576;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(j12, i10 * 1000000, i11);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j13 = j11 + mpegAudioHeader.frameSize;
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        int i12 = 0;
        long j14 = j11;
        while (i12 < readUnsignedShort) {
            long j15 = j13;
            long j16 = scaleLargeTimestamp;
            jArr[i12] = (i12 * scaleLargeTimestamp) / readUnsignedShort;
            jArr2[i12] = Math.max(j14, j15);
            if (readUnsignedShort3 != 1) {
                if (readUnsignedShort3 != 2) {
                    if (readUnsignedShort3 != 3) {
                        if (readUnsignedShort3 != 4) {
                            return null;
                        }
                        readUnsignedByte = parsableByteArray.readUnsignedIntToInt();
                    } else {
                        readUnsignedByte = parsableByteArray.readUnsignedInt24();
                    }
                } else {
                    readUnsignedByte = parsableByteArray.readUnsignedShort();
                }
            } else {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
            }
            j14 += readUnsignedByte * readUnsignedShort2;
            i12++;
            j13 = j15;
            scaleLargeTimestamp = j16;
        }
        long j17 = scaleLargeTimestamp;
        if (j10 != -1 && j10 != j14) {
            Log.w(TAG, "VBRI data size mismatch: " + j10 + ", " + j14);
        }
        return new VbriSeeker(jArr, jArr2, j17);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j10) {
        int binarySearchFloor = Util.binarySearchFloor(this.timesUs, j10, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[binarySearchFloor], this.positions[binarySearchFloor]);
        if (seekPoint.timeUs < j10 && binarySearchFloor != this.timesUs.length - 1) {
            int i10 = binarySearchFloor + 1;
            return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i10], this.positions[i10]));
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j10) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j10, true, true)];
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}

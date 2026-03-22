package com.mbridge.msdk.playercommon.exoplayer2.extractor.mkv;

import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import java.io.IOException;
/* loaded from: classes6.dex */
final class VarintReader {
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_READ_CONTENTS = 1;
    private static final long[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private final byte[] scratch = new byte[8];
    private int state;

    public static long assembleVarint(byte[] bArr, int i10, boolean z10) {
        long j10 = bArr[0] & 255;
        if (z10) {
            j10 &= ~VARINT_LENGTH_MASKS[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & 255);
        }
        return j10;
    }

    public static int parseUnsignedVarintLength(int i10) {
        int i11;
        int i12 = 0;
        do {
            long[] jArr = VARINT_LENGTH_MASKS;
            if (i12 < jArr.length) {
                i11 = ((jArr[i12] & i10) > 0L ? 1 : ((jArr[i12] & i10) == 0L ? 0 : -1));
                i12++;
            } else {
                return -1;
            }
        } while (i11 == 0);
        return i12;
    }

    public int getLastLength() {
        return this.length;
    }

    public long readUnsignedVarint(ExtractorInput extractorInput, boolean z10, boolean z11, int i10) throws IOException, InterruptedException {
        if (this.state == 0) {
            if (!extractorInput.readFully(this.scratch, 0, 1, z10)) {
                return -1L;
            }
            int parseUnsignedVarintLength = parseUnsignedVarintLength(this.scratch[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.length = parseUnsignedVarintLength;
            if (parseUnsignedVarintLength != -1) {
                this.state = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i11 = this.length;
        if (i11 > i10) {
            this.state = 0;
            return -2L;
        }
        if (i11 != 1) {
            extractorInput.readFully(this.scratch, 1, i11 - 1);
        }
        this.state = 0;
        return assembleVarint(this.scratch, this.length, z11);
    }

    public void reset() {
        this.state = 0;
        this.length = 0;
    }
}

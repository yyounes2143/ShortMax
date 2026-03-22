package com.mbridge.msdk.playercommon.exoplayer2.util;

import com.inmobi.commons.core.configs.AdConfig;
/* loaded from: classes6.dex */
public final class ParsableNalUnitBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    private byte[] data;

    public ParsableNalUnitBitArray(byte[] bArr, int i10, int i11) {
        reset(bArr, i10, i11);
    }

    private void assertValidOffset() {
        boolean z10;
        int i10;
        int i11 = this.byteOffset;
        if (i11 >= 0 && (i11 < (i10 = this.byteLimit) || (i11 == i10 && this.bitOffset == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkState(z10);
    }

    private int readExpGolombCodeNum() {
        int i10 = 0;
        int i11 = 0;
        while (!readBit()) {
            i11++;
        }
        int i12 = (1 << i11) - 1;
        if (i11 > 0) {
            i10 = readBits(i11);
        }
        return i12 + i10;
    }

    private boolean shouldSkipByte(int i10) {
        if (2 <= i10 && i10 < this.byteLimit) {
            byte[] bArr = this.data;
            if (bArr[i10] == 3 && bArr[i10 - 2] == 0 && bArr[i10 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean canReadBits(int i10) {
        int i11 = this.byteOffset;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        int i14 = (this.bitOffset + i10) - (i12 * 8);
        if (i14 > 7) {
            i13++;
            i14 -= 8;
        }
        while (true) {
            int i15 = i11 + 1;
            if (i15 > i13 || i13 >= this.byteLimit) {
                break;
            } else if (shouldSkipByte(i15)) {
                i13++;
                i11 += 3;
            } else {
                i11 = i15;
            }
        }
        int i16 = this.byteLimit;
        if (i13 >= i16 && (i13 != i16 || i14 != 0)) {
            return false;
        }
        return true;
    }

    public boolean canReadExpGolombCodedNum() {
        boolean z10;
        int i10 = this.byteOffset;
        int i11 = this.bitOffset;
        int i12 = 0;
        while (this.byteOffset < this.byteLimit && !readBit()) {
            i12++;
        }
        if (this.byteOffset == this.byteLimit) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.byteOffset = i10;
        this.bitOffset = i11;
        if (z10 || !canReadBits((i12 * 2) + 1)) {
            return false;
        }
        return true;
    }

    public boolean readBit() {
        boolean z10;
        if ((this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        skipBit();
        return z10;
    }

    public int readBits(int i10) {
        int i11;
        int i12;
        this.bitOffset += i10;
        int i13 = 0;
        while (true) {
            i11 = this.bitOffset;
            i12 = 2;
            if (i11 <= 8) {
                break;
            }
            int i14 = i11 - 8;
            this.bitOffset = i14;
            byte[] bArr = this.data;
            int i15 = this.byteOffset;
            i13 |= (bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << i14;
            if (!shouldSkipByte(i15 + 1)) {
                i12 = 1;
            }
            this.byteOffset = i15 + i12;
        }
        byte[] bArr2 = this.data;
        int i16 = this.byteOffset;
        int i17 = ((-1) >>> (32 - i10)) & (i13 | ((bArr2[i16] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> (8 - i11)));
        if (i11 == 8) {
            this.bitOffset = 0;
            if (!shouldSkipByte(i16 + 1)) {
                i12 = 1;
            }
            this.byteOffset = i16 + i12;
        }
        assertValidOffset();
        return i17;
    }

    public int readSignedExpGolombCodedInt() {
        int i10;
        int readExpGolombCodeNum = readExpGolombCodeNum();
        if (readExpGolombCodeNum % 2 == 0) {
            i10 = -1;
        } else {
            i10 = 1;
        }
        return i10 * ((readExpGolombCodeNum + 1) / 2);
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public void reset(byte[] bArr, int i10, int i11) {
        this.data = bArr;
        this.byteOffset = i10;
        this.byteLimit = i11;
        this.bitOffset = 0;
        assertValidOffset();
    }

    public void skipBit() {
        int i10 = 1;
        int i11 = this.bitOffset + 1;
        this.bitOffset = i11;
        if (i11 == 8) {
            this.bitOffset = 0;
            int i12 = this.byteOffset;
            if (shouldSkipByte(i12 + 1)) {
                i10 = 2;
            }
            this.byteOffset = i12 + i10;
        }
        assertValidOffset();
    }

    public void skipBits(int i10) {
        int i11 = this.byteOffset;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        this.byteOffset = i13;
        int i14 = this.bitOffset + (i10 - (i12 * 8));
        this.bitOffset = i14;
        if (i14 > 7) {
            this.byteOffset = i13 + 1;
            this.bitOffset = i14 - 8;
        }
        while (true) {
            i11++;
            if (i11 <= this.byteOffset) {
                if (shouldSkipByte(i11)) {
                    this.byteOffset++;
                    i11 += 2;
                }
            } else {
                assertValidOffset();
                return;
            }
        }
    }
}

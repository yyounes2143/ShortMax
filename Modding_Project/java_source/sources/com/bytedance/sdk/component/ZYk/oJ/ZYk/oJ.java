package com.bytedance.sdk.component.ZYk.oJ.ZYk;

import androidx.collection.SieveCacheKt;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
/* loaded from: classes3.dex */
public final class oJ implements ZYk, tB, Cloneable, ByteChannel {
    private static final byte[] tB = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    long ZYk;
    Pfn oJ;

    public final ex Pfn() {
        long j10 = this.ZYk;
        if (j10 <= SieveCacheKt.NodeLinkMask) {
            return ex((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.ZYk);
    }

    public byte ZYk() {
        long j10 = this.ZYk;
        if (j10 != 0) {
            Pfn pfn = this.oJ;
            int i10 = pfn.ZYk;
            int i11 = pfn.tB;
            int i12 = i10 + 1;
            byte b10 = pfn.oJ[i10];
            this.ZYk = j10 - 1;
            if (i12 == i11) {
                this.oJ = pfn.ZYk();
                ba.oJ(pfn);
            } else {
                pfn.ZYk = i12;
            }
            return b10;
        }
        throw new IllegalStateException("size == 0");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oJ)) {
            return false;
        }
        oJ oJVar = (oJ) obj;
        long j10 = this.ZYk;
        if (j10 != oJVar.ZYk) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        Pfn pfn = this.oJ;
        Pfn pfn2 = oJVar.oJ;
        int i10 = pfn.ZYk;
        int i11 = pfn2.ZYk;
        while (j11 < this.ZYk) {
            long min = Math.min(pfn.tB - i10, pfn2.tB - i11);
            int i12 = 0;
            while (i12 < min) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (pfn.oJ[i10] != pfn2.oJ[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == pfn.tB) {
                pfn = pfn.f12606ba;
                i10 = pfn.ZYk;
            }
            if (i11 == pfn2.tB) {
                pfn2 = pfn2.f12606ba;
                i11 = pfn2.ZYk;
            }
            j11 += min;
        }
        return true;
    }

    /* renamed from: ex */
    public oJ clone() {
        oJ oJVar = new oJ();
        if (this.ZYk == 0) {
            return oJVar;
        }
        Pfn oJ = this.oJ.oJ();
        oJVar.oJ = oJ;
        oJ.cFZ = oJ;
        oJ.f12606ba = oJ;
        Pfn pfn = this.oJ;
        while (true) {
            pfn = pfn.f12606ba;
            if (pfn != this.oJ) {
                oJVar.oJ.cFZ.oJ(pfn.oJ());
            } else {
                oJVar.ZYk = this.ZYk;
                return oJVar;
            }
        }
    }

    public int hashCode() {
        Pfn pfn = this.oJ;
        if (pfn == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = pfn.tB;
            for (int i12 = pfn.ZYk; i12 < i11; i12++) {
                i10 = (i10 * 31) + pfn.oJ[i12];
            }
            pfn = pfn.f12606ba;
        } while (pfn != this.oJ);
        return i10;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public boolean oJ() {
        return this.ZYk == 0;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Pfn pfn = this.oJ;
        if (pfn == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), pfn.tB - pfn.ZYk);
        byteBuffer.put(pfn.oJ, pfn.ZYk, min);
        int i10 = pfn.ZYk + min;
        pfn.ZYk = i10;
        this.ZYk -= min;
        if (i10 == pfn.tB) {
            this.oJ = pfn.ZYk();
            ba.oJ(pfn);
        }
        return min;
    }

    public String tB() {
        try {
            return oJ(this.ZYk, jFA.oJ);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public String toString() {
        return Pfn().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i10 = remaining;
            while (i10 > 0) {
                Pfn tB2 = tB(1);
                int min = Math.min(i10, 8192 - tB2.tB);
                byteBuffer.get(tB2.oJ, tB2.tB, min);
                i10 -= min;
                tB2.tB += min;
            }
            this.ZYk += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    public String oJ(long j10, Charset charset) throws EOFException {
        jFA.oJ(this.ZYk, 0L, j10);
        if (charset != null) {
            if (j10 <= SieveCacheKt.NodeLinkMask) {
                if (j10 == 0) {
                    return "";
                }
                Pfn pfn = this.oJ;
                int i10 = pfn.ZYk;
                if (i10 + j10 > pfn.tB) {
                    return new String(oJ(j10), charset);
                }
                String str = new String(pfn.oJ, i10, (int) j10, charset);
                int i11 = (int) (pfn.ZYk + j10);
                pfn.ZYk = i11;
                this.ZYk -= j10;
                if (i11 == pfn.tB) {
                    this.oJ = pfn.ZYk();
                    ba.oJ(pfn);
                }
                return str;
            }
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
        }
        throw new IllegalArgumentException("charset == null");
    }

    Pfn tB(int i10) {
        if (i10 > 0 && i10 <= 8192) {
            Pfn pfn = this.oJ;
            if (pfn == null) {
                Pfn oJ = ba.oJ();
                this.oJ = oJ;
                oJ.cFZ = oJ;
                oJ.f12606ba = oJ;
                return oJ;
            }
            Pfn pfn2 = pfn.cFZ;
            return (pfn2.tB + i10 > 8192 || !pfn2.Pfn) ? pfn2.oJ(ba.oJ()) : pfn2;
        }
        throw new IllegalArgumentException();
    }

    public final ex ex(int i10) {
        if (i10 == 0) {
            return ex.tB;
        }
        return new cFZ(this, i10);
    }

    public oJ ZYk(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            long j10 = i11;
            jFA.oJ(bArr.length, i10, j10);
            int i12 = i11 + i10;
            while (i10 < i12) {
                Pfn tB2 = tB(1);
                int min = Math.min(i12 - i10, 8192 - tB2.tB);
                System.arraycopy(bArr, i10, tB2.oJ, tB2.tB, min);
                i10 += min;
                tB2.tB += min;
            }
            this.ZYk += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public byte[] oJ(long j10) throws EOFException {
        jFA.oJ(this.ZYk, 0L, j10);
        if (j10 <= SieveCacheKt.NodeLinkMask) {
            byte[] bArr = new byte[(int) j10];
            oJ(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    public oJ ZYk(int i10) {
        Pfn tB2 = tB(1);
        byte[] bArr = tB2.oJ;
        int i11 = tB2.tB;
        tB2.tB = i11 + 1;
        bArr[i11] = (byte) i10;
        this.ZYk++;
        return this;
    }

    public void oJ(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int oJ = oJ(bArr, i10, bArr.length - i10);
            if (oJ == -1) {
                throw new EOFException();
            }
            i10 += oJ;
        }
    }

    public oJ ZYk(long j10) {
        if (j10 == 0) {
            return ZYk(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        Pfn tB2 = tB(numberOfTrailingZeros);
        byte[] bArr = tB2.oJ;
        int i10 = tB2.tB;
        for (int i11 = (i10 + numberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = tB[(int) (15 & j10)];
            j10 >>>= 4;
        }
        tB2.tB += numberOfTrailingZeros;
        this.ZYk += numberOfTrailingZeros;
        return this;
    }

    public int oJ(byte[] bArr, int i10, int i11) {
        jFA.oJ(bArr.length, i10, i11);
        Pfn pfn = this.oJ;
        if (pfn == null) {
            return -1;
        }
        int min = Math.min(i11, pfn.tB - pfn.ZYk);
        System.arraycopy(pfn.oJ, pfn.ZYk, bArr, i10, min);
        int i12 = pfn.ZYk + min;
        pfn.ZYk = i12;
        this.ZYk -= min;
        if (i12 == pfn.tB) {
            this.oJ = pfn.ZYk();
            ba.oJ(pfn);
        }
        return min;
    }

    public oJ oJ(String str) {
        return oJ(str, 0, str.length());
    }

    public oJ oJ(String str, int i10, int i11) {
        char charAt;
        if (str != null) {
            if (i10 >= 0) {
                if (i11 >= i10) {
                    if (i11 > str.length()) {
                        throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
                    }
                    while (i10 < i11) {
                        char charAt2 = str.charAt(i10);
                        if (charAt2 < 128) {
                            Pfn tB2 = tB(1);
                            byte[] bArr = tB2.oJ;
                            int i12 = tB2.tB - i10;
                            int min = Math.min(i11, 8192 - i12);
                            int i13 = i10 + 1;
                            bArr[i10 + i12] = (byte) charAt2;
                            while (true) {
                                i10 = i13;
                                if (i10 >= min || (charAt = str.charAt(i10)) >= 128) {
                                    break;
                                }
                                i13 = i10 + 1;
                                bArr[i10 + i12] = (byte) charAt;
                            }
                            int i14 = tB2.tB;
                            int i15 = (i12 + i10) - i14;
                            tB2.tB = i14 + i15;
                            this.ZYk += i15;
                        } else {
                            if (charAt2 < 2048) {
                                ZYk((charAt2 >> 6) | 192);
                                ZYk((charAt2 & '?') | 128);
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i16 = i10 + 1;
                                char charAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                                if (charAt2 <= 56319 && charAt3 >= 56320 && charAt3 <= 57343) {
                                    int i17 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                    ZYk((i17 >> 18) | 240);
                                    ZYk(((i17 >> 12) & 63) | 128);
                                    ZYk(((i17 >> 6) & 63) | 128);
                                    ZYk((i17 & 63) | 128);
                                    i10 += 2;
                                } else {
                                    ZYk(63);
                                    i10 = i16;
                                }
                            } else {
                                ZYk((charAt2 >> '\f') | 224);
                                ZYk(((charAt2 >> 6) & 63) | 128);
                                ZYk((charAt2 & '?') | 128);
                            }
                            i10++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
            }
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        throw new IllegalArgumentException("string == null");
    }

    public oJ oJ(int i10) {
        if (i10 < 128) {
            ZYk(i10);
        } else if (i10 < 2048) {
            ZYk((i10 >> 6) | 192);
            ZYk((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 >= 55296 && i10 <= 57343) {
                ZYk(63);
            } else {
                ZYk((i10 >> 12) | 224);
                ZYk(((i10 >> 6) & 63) | 128);
                ZYk((i10 & 63) | 128);
            }
        } else if (i10 <= 1114111) {
            ZYk((i10 >> 18) | 240);
            ZYk(((i10 >> 12) & 63) | 128);
            ZYk(((i10 >> 6) & 63) | 128);
            ZYk((i10 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
        }
        return this;
    }

    public oJ oJ(String str, int i10, int i11, Charset charset) {
        if (str != null) {
            if (i10 >= 0) {
                if (i11 >= i10) {
                    if (i11 > str.length()) {
                        throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
                    } else if (charset != null) {
                        if (charset.equals(jFA.oJ)) {
                            return oJ(str, i10, i11);
                        }
                        byte[] bytes = str.substring(i10, i11).getBytes(charset);
                        return ZYk(bytes, 0, bytes.length);
                    } else {
                        throw new IllegalArgumentException("charset == null");
                    }
                }
                throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
            }
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        throw new IllegalArgumentException("string == null");
    }
}

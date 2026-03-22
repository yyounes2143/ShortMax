package cn;

import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
/* compiled from: ParsableByteArray.java */
/* loaded from: classes8.dex */
public final class b0 {

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f3564d = {'\r', '\n'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f3565e = {'\n'};

    /* renamed from: f  reason: collision with root package name */
    private static final ImmutableSet<Charset> f3566f = ImmutableSet.D(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* renamed from: a  reason: collision with root package name */
    private byte[] f3567a;

    /* renamed from: b  reason: collision with root package name */
    private int f3568b;

    /* renamed from: c  reason: collision with root package name */
    private int f3569c;

    public b0() {
        this.f3567a = m0.f3619f;
    }

    private void Y(Charset charset) {
        if (m(charset, f3564d) == '\r') {
            m(charset, f3565e);
        }
    }

    private int d(Charset charset) {
        int i10;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(StandardCharsets.US_ASCII)) {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i10 = 2;
        } else {
            i10 = 1;
        }
        int i11 = this.f3568b;
        while (true) {
            int i12 = this.f3569c;
            if (i11 < i12 - (i10 - 1)) {
                if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && m0.I0(this.f3567a[i11])) {
                    return i11;
                }
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr = this.f3567a;
                    if (bArr[i11] == 0 && m0.I0(bArr[i11 + 1])) {
                        return i11;
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byte[] bArr2 = this.f3567a;
                    if (bArr2[i11 + 1] == 0 && m0.I0(bArr2[i11])) {
                        return i11;
                    }
                }
                i11 += i10;
            } else {
                return i12;
            }
        }
    }

    private int i(Charset charset) {
        byte b10;
        byte b11;
        byte b12 = 1;
        if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && a() >= 1) {
            b10 = this.f3567a[this.f3568b];
            b11 = 0;
        } else {
            if ((charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) && a() >= 2) {
                byte[] bArr = this.f3567a;
                int i10 = this.f3568b;
                b11 = bArr[i10];
                b10 = bArr[i10 + 1];
            } else if (!charset.equals(StandardCharsets.UTF_16LE) || a() < 2) {
                return 0;
            } else {
                byte[] bArr2 = this.f3567a;
                int i11 = this.f3568b;
                b11 = bArr2[i11 + 1];
                b10 = bArr2[i11];
            }
            b12 = 2;
        }
        return Ints.g(b11, b10, (byte) 0, b12);
    }

    private char m(Charset charset, char[] cArr) {
        int i10 = i(charset);
        if (i10 != 0) {
            char c10 = (char) (i10 >> 16);
            if (com.google.common.primitives.b.a(cArr, c10)) {
                this.f3568b += i10 & 65535;
                return c10;
            }
            return (char) 0;
        }
        return (char) 0;
    }

    public long A() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        int i13 = i10 + 3;
        this.f3568b = i13;
        long j10 = ((bArr[i10] & 255) << 56) | ((bArr[i11] & 255) << 48) | ((bArr[i12] & 255) << 40);
        int i14 = i10 + 4;
        this.f3568b = i14;
        int i15 = i10 + 5;
        this.f3568b = i15;
        long j11 = j10 | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 24);
        int i16 = i10 + 6;
        this.f3568b = i16;
        int i17 = i10 + 7;
        this.f3568b = i17;
        this.f3568b = i10 + 8;
        return (bArr[i17] & 255) | j11 | ((bArr[i15] & 255) << 16) | ((bArr[i16] & 255) << 8);
    }

    @Nullable
    public String B() {
        return n((char) 0);
    }

    public String C(int i10) {
        int i11;
        if (i10 == 0) {
            return "";
        }
        int i12 = this.f3568b;
        int i13 = (i12 + i10) - 1;
        if (i13 < this.f3569c && this.f3567a[i13] == 0) {
            i11 = i10 - 1;
        } else {
            i11 = i10;
        }
        String I = m0.I(this.f3567a, i12, i11);
        this.f3568b += i10;
        return I;
    }

    public short D() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        this.f3568b = i10 + 2;
        return (short) ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8));
    }

    public String E(int i10) {
        return F(i10, StandardCharsets.UTF_8);
    }

    public String F(int i10, Charset charset) {
        String str = new String(this.f3567a, this.f3568b, i10, charset);
        this.f3568b += i10;
        return str;
    }

    public int G() {
        return (H() << 21) | (H() << 14) | (H() << 7) | H();
    }

    public int H() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        this.f3568b = i10 + 1;
        return bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    public int I() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        this.f3568b = i10 + 2;
        int i12 = (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
        this.f3568b = i10 + 4;
        return i12;
    }

    public long J() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        int i13 = i10 + 3;
        this.f3568b = i13;
        this.f3568b = i10 + 4;
        return (bArr[i13] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 8);
    }

    public int K() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        int i13 = (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8;
        this.f3568b = i10 + 3;
        return (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i13 | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    public int L() {
        int q10 = q();
        if (q10 >= 0) {
            return q10;
        }
        throw new IllegalStateException("Top bit not zero: " + q10);
    }

    public int M() {
        return Ints.d(N());
    }

    public long N() {
        long j10 = 0;
        for (int i10 = 0; i10 < 9; i10++) {
            if (this.f3568b != this.f3569c) {
                long H = H();
                j10 |= (127 & H) << (i10 * 7);
                if ((H & 128) == 0) {
                    break;
                }
            } else {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
        }
        return j10;
    }

    public long O() {
        long A = A();
        if (A >= 0) {
            return A;
        }
        throw new IllegalStateException("Top bit not zero: " + A);
    }

    public int P() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        this.f3568b = i10 + 2;
        return (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    public long Q() {
        int i10;
        int i11;
        byte b10;
        int i12;
        long j10 = this.f3567a[this.f3568b];
        int i13 = 7;
        while (true) {
            if (i13 < 0) {
                break;
            }
            if (((1 << i13) & j10) != 0) {
                i13--;
            } else if (i13 < 6) {
                j10 &= i12 - 1;
                i11 = 7 - i13;
            } else if (i13 == 7) {
                i11 = 1;
            }
        }
        i11 = 0;
        if (i11 != 0) {
            for (i10 = 1; i10 < i11; i10++) {
                if ((this.f3567a[this.f3568b + i10] & 192) == 128) {
                    j10 = (j10 << 6) | (b10 & 63);
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
                }
            }
            this.f3568b += i11;
            return j10;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
    }

    @Nullable
    public Charset R() {
        if (a() >= 3) {
            byte[] bArr = this.f3567a;
            int i10 = this.f3568b;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.f3568b = i10 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (a() >= 2) {
            byte[] bArr2 = this.f3567a;
            int i11 = this.f3568b;
            byte b10 = bArr2[i11];
            if (b10 == -2 && bArr2[i11 + 1] == -1) {
                this.f3568b = i11 + 2;
                return StandardCharsets.UTF_16BE;
            } else if (b10 == -1 && bArr2[i11 + 1] == -2) {
                this.f3568b = i11 + 2;
                return StandardCharsets.UTF_16LE;
            } else {
                return null;
            }
        }
        return null;
    }

    public void S(int i10) {
        byte[] bArr;
        if (b() < i10) {
            bArr = new byte[i10];
        } else {
            bArr = this.f3567a;
        }
        U(bArr, i10);
    }

    public void T(byte[] bArr) {
        U(bArr, bArr.length);
    }

    public void U(byte[] bArr, int i10) {
        this.f3567a = bArr;
        this.f3569c = i10;
        this.f3568b = 0;
    }

    public void V(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 <= this.f3567a.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        this.f3569c = i10;
    }

    public void W(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 <= this.f3569c) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        this.f3568b = i10;
    }

    public void X(int i10) {
        W(this.f3568b + i10);
    }

    public int a() {
        return this.f3569c - this.f3568b;
    }

    public int b() {
        return this.f3567a.length;
    }

    public void c(int i10) {
        if (i10 > b()) {
            this.f3567a = Arrays.copyOf(this.f3567a, i10);
        }
    }

    public byte[] e() {
        return this.f3567a;
    }

    public int f() {
        return this.f3568b;
    }

    public int g() {
        return this.f3569c;
    }

    public char h(Charset charset) {
        boolean contains = f3566f.contains(charset);
        a.b(contains, "Unsupported charset: " + charset);
        return (char) (i(charset) >> 16);
    }

    public int j() {
        return this.f3567a[this.f3568b] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    public void k(a0 a0Var, int i10) {
        l(a0Var.f3559a, 0, i10);
        a0Var.p(0);
    }

    public void l(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f3567a, this.f3568b, bArr, i10, i11);
        this.f3568b += i11;
    }

    @Nullable
    public String n(char c10) {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f3568b;
        while (i10 < this.f3569c && this.f3567a[i10] != c10) {
            i10++;
        }
        byte[] bArr = this.f3567a;
        int i11 = this.f3568b;
        String I = m0.I(bArr, i11, i10 - i11);
        this.f3568b = i10;
        if (i10 < this.f3569c) {
            this.f3568b = i10 + 1;
        }
        return I;
    }

    public double o() {
        return Double.longBitsToDouble(A());
    }

    public float p() {
        return Float.intBitsToFloat(q());
    }

    public int q() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        int i13 = ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
        int i14 = i10 + 3;
        this.f3568b = i14;
        this.f3568b = i10 + 4;
        return (bArr[i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i13 | ((bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    public int r() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        int i13 = (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8;
        this.f3568b = i10 + 3;
        return (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i13 | (((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) >> 8);
    }

    @Nullable
    public String s() {
        return t(StandardCharsets.UTF_8);
    }

    @Nullable
    public String t(Charset charset) {
        boolean contains = f3566f.contains(charset);
        a.b(contains, "Unsupported charset: " + charset);
        if (a() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            R();
        }
        String F = F(d(charset) - this.f3568b, charset);
        if (this.f3568b == this.f3569c) {
            return F;
        }
        Y(charset);
        return F;
    }

    public int u() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = i10 + 2;
        this.f3568b = i13;
        int i14 = ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12;
        int i15 = i10 + 3;
        this.f3568b = i15;
        this.f3568b = i10 + 4;
        return ((bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | i14 | ((bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    public long v() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        long j10 = (bArr[i10] & 255) | ((bArr[i11] & 255) << 8);
        int i13 = i10 + 3;
        this.f3568b = i13;
        int i14 = i10 + 4;
        this.f3568b = i14;
        long j11 = j10 | ((bArr[i12] & 255) << 16) | ((bArr[i13] & 255) << 24);
        int i15 = i10 + 5;
        this.f3568b = i15;
        int i16 = i10 + 6;
        this.f3568b = i16;
        long j12 = j11 | ((bArr[i14] & 255) << 32) | ((bArr[i15] & 255) << 40);
        int i17 = i10 + 7;
        this.f3568b = i17;
        this.f3568b = i10 + 8;
        return ((bArr[i17] & 255) << 56) | j12 | ((bArr[i16] & 255) << 48);
    }

    public short w() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.f3568b = i10 + 2;
        return (short) (((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12);
    }

    public long x() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = i10 + 2;
        this.f3568b = i12;
        int i13 = i10 + 3;
        this.f3568b = i13;
        this.f3568b = i10 + 4;
        return ((bArr[i13] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i11] & 255) << 8) | ((bArr[i12] & 255) << 16);
    }

    public int y() {
        int u10 = u();
        if (u10 >= 0) {
            return u10;
        }
        throw new IllegalStateException("Top bit not zero: " + u10);
    }

    public int z() {
        byte[] bArr = this.f3567a;
        int i10 = this.f3568b;
        int i11 = i10 + 1;
        this.f3568b = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.f3568b = i10 + 2;
        return ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12;
    }

    public b0(int i10) {
        this.f3567a = new byte[i10];
        this.f3569c = i10;
    }

    public b0(byte[] bArr) {
        this.f3567a = bArr;
        this.f3569c = bArr.length;
    }

    public b0(byte[] bArr, int i10) {
        this.f3567a = bArr;
        this.f3569c = i10;
    }
}

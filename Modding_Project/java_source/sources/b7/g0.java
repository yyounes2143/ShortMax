package b7;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.Charset;
import java.util.Arrays;
/* compiled from: ParsableByteArray.java */
/* loaded from: classes4.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f2449a;

    /* renamed from: b  reason: collision with root package name */
    private int f2450b;

    /* renamed from: c  reason: collision with root package name */
    private int f2451c;

    public g0() {
        this.f2449a = s0.f2511f;
    }

    public String A(int i10) {
        return B(i10, h7.c.f52595c);
    }

    public String B(int i10, Charset charset) {
        String str = new String(this.f2449a, this.f2450b, i10, charset);
        this.f2450b += i10;
        return str;
    }

    public int C() {
        return (D() << 21) | (D() << 14) | (D() << 7) | D();
    }

    public int D() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        this.f2450b = i10 + 1;
        return bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    public int E() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        this.f2450b = i10 + 2;
        int i12 = (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
        this.f2450b = i10 + 4;
        return i12;
    }

    public long F() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        int i13 = i10 + 3;
        this.f2450b = i13;
        this.f2450b = i10 + 4;
        return (bArr[i13] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 8);
    }

    public int G() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        int i13 = (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8;
        this.f2450b = i10 + 3;
        return (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i13 | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    public int H() {
        int n10 = n();
        if (n10 >= 0) {
            return n10;
        }
        throw new IllegalStateException("Top bit not zero: " + n10);
    }

    public long I() {
        long w10 = w();
        if (w10 >= 0) {
            return w10;
        }
        throw new IllegalStateException("Top bit not zero: " + w10);
    }

    public int J() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        this.f2450b = i10 + 2;
        return (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    public long K() {
        int i10;
        int i11;
        byte b10;
        int i12;
        long j10 = this.f2449a[this.f2450b];
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
                if ((this.f2449a[this.f2450b + i10] & 192) == 128) {
                    j10 = (j10 << 6) | (b10 & 63);
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
                }
            }
            this.f2450b += i11;
            return j10;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
    }

    public void L(int i10) {
        byte[] bArr;
        if (b() < i10) {
            bArr = new byte[i10];
        } else {
            bArr = this.f2449a;
        }
        N(bArr, i10);
    }

    public void M(byte[] bArr) {
        N(bArr, bArr.length);
    }

    public void N(byte[] bArr, int i10) {
        this.f2449a = bArr;
        this.f2451c = i10;
        this.f2450b = 0;
    }

    public void O(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 <= this.f2449a.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        this.f2451c = i10;
    }

    public void P(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 <= this.f2451c) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        this.f2450b = i10;
    }

    public void Q(int i10) {
        P(this.f2450b + i10);
    }

    public int a() {
        return this.f2451c - this.f2450b;
    }

    public int b() {
        return this.f2449a.length;
    }

    public void c(int i10) {
        if (i10 > b()) {
            this.f2449a = Arrays.copyOf(this.f2449a, i10);
        }
    }

    public byte[] d() {
        return this.f2449a;
    }

    public int e() {
        return this.f2450b;
    }

    public int f() {
        return this.f2451c;
    }

    public char g() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        return (char) ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8));
    }

    public int h() {
        return this.f2449a[this.f2450b] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }

    public void i(f0 f0Var, int i10) {
        j(f0Var.f2443a, 0, i10);
        f0Var.p(0);
    }

    public void j(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f2449a, this.f2450b, bArr, i10, i11);
        this.f2450b += i11;
    }

    @Nullable
    public String k(char c10) {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f2450b;
        while (i10 < this.f2451c && this.f2449a[i10] != c10) {
            i10++;
        }
        byte[] bArr = this.f2449a;
        int i11 = this.f2450b;
        String B = s0.B(bArr, i11, i10 - i11);
        this.f2450b = i10;
        if (i10 < this.f2451c) {
            this.f2450b = i10 + 1;
        }
        return B;
    }

    public double l() {
        return Double.longBitsToDouble(w());
    }

    public float m() {
        return Float.intBitsToFloat(n());
    }

    public int n() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        int i13 = ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
        int i14 = i10 + 3;
        this.f2450b = i14;
        this.f2450b = i10 + 4;
        return (bArr[i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i13 | ((bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    public int o() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        int i13 = (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8;
        this.f2450b = i10 + 3;
        return (bArr[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | i13 | (((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) >> 8);
    }

    @Nullable
    public String p() {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f2450b;
        while (i10 < this.f2451c && !s0.p0(this.f2449a[i10])) {
            i10++;
        }
        int i11 = this.f2450b;
        if (i10 - i11 >= 3) {
            byte[] bArr = this.f2449a;
            if (bArr[i11] == -17 && bArr[i11 + 1] == -69 && bArr[i11 + 2] == -65) {
                this.f2450b = i11 + 3;
            }
        }
        byte[] bArr2 = this.f2449a;
        int i12 = this.f2450b;
        String B = s0.B(bArr2, i12, i10 - i12);
        this.f2450b = i10;
        int i13 = this.f2451c;
        if (i10 == i13) {
            return B;
        }
        byte[] bArr3 = this.f2449a;
        if (bArr3[i10] == 13) {
            int i14 = i10 + 1;
            this.f2450b = i14;
            if (i14 == i13) {
                return B;
            }
        }
        int i15 = this.f2450b;
        if (bArr3[i15] == 10) {
            this.f2450b = i15 + 1;
        }
        return B;
    }

    public int q() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = i10 + 2;
        this.f2450b = i13;
        int i14 = ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12;
        int i15 = i10 + 3;
        this.f2450b = i15;
        this.f2450b = i10 + 4;
        return ((bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | i14 | ((bArr[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    public long r() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        long j10 = (bArr[i10] & 255) | ((bArr[i11] & 255) << 8);
        int i13 = i10 + 3;
        this.f2450b = i13;
        int i14 = i10 + 4;
        this.f2450b = i14;
        long j11 = j10 | ((bArr[i12] & 255) << 16) | ((bArr[i13] & 255) << 24);
        int i15 = i10 + 5;
        this.f2450b = i15;
        int i16 = i10 + 6;
        this.f2450b = i16;
        long j12 = j11 | ((bArr[i14] & 255) << 32) | ((bArr[i15] & 255) << 40);
        int i17 = i10 + 7;
        this.f2450b = i17;
        this.f2450b = i10 + 8;
        return ((bArr[i17] & 255) << 56) | j12 | ((bArr[i16] & 255) << 48);
    }

    public short s() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.f2450b = i10 + 2;
        return (short) (((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12);
    }

    public long t() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        int i13 = i10 + 3;
        this.f2450b = i13;
        this.f2450b = i10 + 4;
        return ((bArr[i13] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i11] & 255) << 8) | ((bArr[i12] & 255) << 16);
    }

    public int u() {
        int q10 = q();
        if (q10 >= 0) {
            return q10;
        }
        throw new IllegalStateException("Top bit not zero: " + q10);
    }

    public int v() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        this.f2450b = i10 + 2;
        return ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | i12;
    }

    public long w() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        int i12 = i10 + 2;
        this.f2450b = i12;
        int i13 = i10 + 3;
        this.f2450b = i13;
        long j10 = ((bArr[i10] & 255) << 56) | ((bArr[i11] & 255) << 48) | ((bArr[i12] & 255) << 40);
        int i14 = i10 + 4;
        this.f2450b = i14;
        int i15 = i10 + 5;
        this.f2450b = i15;
        long j11 = j10 | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 24);
        int i16 = i10 + 6;
        this.f2450b = i16;
        int i17 = i10 + 7;
        this.f2450b = i17;
        this.f2450b = i10 + 8;
        return (bArr[i17] & 255) | j11 | ((bArr[i15] & 255) << 16) | ((bArr[i16] & 255) << 8);
    }

    @Nullable
    public String x() {
        return k((char) 0);
    }

    public String y(int i10) {
        int i11;
        if (i10 == 0) {
            return "";
        }
        int i12 = this.f2450b;
        int i13 = (i12 + i10) - 1;
        if (i13 < this.f2451c && this.f2449a[i13] == 0) {
            i11 = i10 - 1;
        } else {
            i11 = i10;
        }
        String B = s0.B(this.f2449a, i12, i11);
        this.f2450b += i10;
        return B;
    }

    public short z() {
        byte[] bArr = this.f2449a;
        int i10 = this.f2450b;
        int i11 = i10 + 1;
        this.f2450b = i11;
        this.f2450b = i10 + 2;
        return (short) ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8));
    }

    public g0(int i10) {
        this.f2449a = new byte[i10];
        this.f2451c = i10;
    }

    public g0(byte[] bArr) {
        this.f2449a = bArr;
        this.f2451c = bArr.length;
    }

    public g0(byte[] bArr, int i10) {
        this.f2449a = bArr;
        this.f2451c = i10;
    }
}

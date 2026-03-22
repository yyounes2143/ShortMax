package dn;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: ParsableNalUnitBitArray.java */
/* loaded from: classes8.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f50542a;

    /* renamed from: b  reason: collision with root package name */
    private int f50543b;

    /* renamed from: c  reason: collision with root package name */
    private int f50544c;

    /* renamed from: d  reason: collision with root package name */
    private int f50545d;

    public h(byte[] bArr, int i10, int i11) {
        j(bArr, i10, i11);
    }

    private void a() {
        boolean z10;
        int i10;
        int i11 = this.f50544c;
        if (i11 >= 0 && (i11 < (i10 = this.f50543b) || (i11 == i10 && this.f50545d == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
    }

    private int g() {
        int i10 = 0;
        int i11 = 0;
        while (!e()) {
            i11++;
        }
        int i12 = (1 << i11) - 1;
        if (i11 > 0) {
            i10 = f(i11);
        }
        return i12 + i10;
    }

    private boolean k(int i10) {
        if (2 <= i10 && i10 < this.f50543b) {
            byte[] bArr = this.f50542a;
            if (bArr[i10] == 3 && bArr[i10 - 2] == 0 && bArr[i10 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public void b() {
        int i10 = this.f50545d;
        if (i10 > 0) {
            m(8 - i10);
        }
    }

    public boolean c(int i10) {
        int i11 = this.f50544c;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        int i14 = (this.f50545d + i10) - (i12 * 8);
        if (i14 > 7) {
            i13++;
            i14 -= 8;
        }
        while (true) {
            i11++;
            if (i11 > i13 || i13 >= this.f50543b) {
                break;
            } else if (k(i11)) {
                i13++;
                i11 += 2;
            }
        }
        int i15 = this.f50543b;
        if (i13 < i15) {
            return true;
        }
        if (i13 == i15 && i14 == 0) {
            return true;
        }
        return false;
    }

    public boolean d() {
        boolean z10;
        int i10 = this.f50544c;
        int i11 = this.f50545d;
        int i12 = 0;
        while (this.f50544c < this.f50543b && !e()) {
            i12++;
        }
        if (this.f50544c == this.f50543b) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f50544c = i10;
        this.f50545d = i11;
        if (z10 || !c((i12 * 2) + 1)) {
            return false;
        }
        return true;
    }

    public boolean e() {
        boolean z10;
        if ((this.f50542a[this.f50544c] & (128 >> this.f50545d)) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        l();
        return z10;
    }

    public int f(int i10) {
        int i11;
        int i12;
        this.f50545d += i10;
        int i13 = 0;
        while (true) {
            i11 = this.f50545d;
            i12 = 2;
            if (i11 <= 8) {
                break;
            }
            int i14 = i11 - 8;
            this.f50545d = i14;
            byte[] bArr = this.f50542a;
            int i15 = this.f50544c;
            i13 |= (bArr[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << i14;
            if (!k(i15 + 1)) {
                i12 = 1;
            }
            this.f50544c = i15 + i12;
        }
        byte[] bArr2 = this.f50542a;
        int i16 = this.f50544c;
        int i17 = ((-1) >>> (32 - i10)) & (i13 | ((bArr2[i16] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> (8 - i11)));
        if (i11 == 8) {
            this.f50545d = 0;
            if (!k(i16 + 1)) {
                i12 = 1;
            }
            this.f50544c = i16 + i12;
        }
        a();
        return i17;
    }

    public int h() {
        int i10;
        int g10 = g();
        if (g10 % 2 == 0) {
            i10 = -1;
        } else {
            i10 = 1;
        }
        return i10 * ((g10 + 1) / 2);
    }

    public int i() {
        return g();
    }

    public void j(byte[] bArr, int i10, int i11) {
        this.f50542a = bArr;
        this.f50544c = i10;
        this.f50543b = i11;
        this.f50545d = 0;
        a();
    }

    public void l() {
        int i10 = 1;
        int i11 = this.f50545d + 1;
        this.f50545d = i11;
        if (i11 == 8) {
            this.f50545d = 0;
            int i12 = this.f50544c;
            if (k(i12 + 1)) {
                i10 = 2;
            }
            this.f50544c = i12 + i10;
        }
        a();
    }

    public void m(int i10) {
        int i11 = this.f50544c;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        this.f50544c = i13;
        int i14 = this.f50545d + (i10 - (i12 * 8));
        this.f50545d = i14;
        if (i14 > 7) {
            this.f50544c = i13 + 1;
            this.f50545d = i14 - 8;
        }
        while (true) {
            i11++;
            if (i11 <= this.f50544c) {
                if (k(i11)) {
                    this.f50544c++;
                    i11 += 2;
                }
            } else {
                a();
                return;
            }
        }
    }
}

package t9;

import java.util.Arrays;
/* compiled from: DefaultPlacement.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final CharSequence f67219a;

    /* renamed from: b  reason: collision with root package name */
    private final int f67220b;

    /* renamed from: c  reason: collision with root package name */
    private final int f67221c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f67222d;

    public e(CharSequence charSequence, int i10, int i11) {
        this.f67219a = charSequence;
        this.f67221c = i10;
        this.f67220b = i11;
        byte[] bArr = new byte[i10 * i11];
        this.f67222d = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    private void a(int i10) {
        g(this.f67220b - 1, 0, i10, 1);
        g(this.f67220b - 1, 1, i10, 2);
        g(this.f67220b - 1, 2, i10, 3);
        g(0, this.f67221c - 2, i10, 4);
        g(0, this.f67221c - 1, i10, 5);
        g(1, this.f67221c - 1, i10, 6);
        g(2, this.f67221c - 1, i10, 7);
        g(3, this.f67221c - 1, i10, 8);
    }

    private void b(int i10) {
        g(this.f67220b - 3, 0, i10, 1);
        g(this.f67220b - 2, 0, i10, 2);
        g(this.f67220b - 1, 0, i10, 3);
        g(0, this.f67221c - 4, i10, 4);
        g(0, this.f67221c - 3, i10, 5);
        g(0, this.f67221c - 2, i10, 6);
        g(0, this.f67221c - 1, i10, 7);
        g(1, this.f67221c - 1, i10, 8);
    }

    private void c(int i10) {
        g(this.f67220b - 3, 0, i10, 1);
        g(this.f67220b - 2, 0, i10, 2);
        g(this.f67220b - 1, 0, i10, 3);
        g(0, this.f67221c - 2, i10, 4);
        g(0, this.f67221c - 1, i10, 5);
        g(1, this.f67221c - 1, i10, 6);
        g(2, this.f67221c - 1, i10, 7);
        g(3, this.f67221c - 1, i10, 8);
    }

    private void d(int i10) {
        g(this.f67220b - 1, 0, i10, 1);
        g(this.f67220b - 1, this.f67221c - 1, i10, 2);
        g(0, this.f67221c - 3, i10, 3);
        g(0, this.f67221c - 2, i10, 4);
        g(0, this.f67221c - 1, i10, 5);
        g(1, this.f67221c - 3, i10, 6);
        g(1, this.f67221c - 2, i10, 7);
        g(1, this.f67221c - 1, i10, 8);
    }

    private boolean f(int i10, int i11) {
        if (this.f67222d[(i11 * this.f67221c) + i10] >= 0) {
            return true;
        }
        return false;
    }

    private void g(int i10, int i11, int i12, int i13) {
        if (i10 < 0) {
            int i14 = this.f67220b;
            i10 += i14;
            i11 += 4 - ((i14 + 4) % 8);
        }
        if (i11 < 0) {
            int i15 = this.f67221c;
            i11 += i15;
            i10 += 4 - ((i15 + 4) % 8);
        }
        boolean z10 = true;
        if ((this.f67219a.charAt(i12) & (1 << (8 - i13))) == 0) {
            z10 = false;
        }
        i(i11, i10, z10);
    }

    private void i(int i10, int i11, boolean z10) {
        this.f67222d[(i11 * this.f67221c) + i10] = z10 ? (byte) 1 : (byte) 0;
    }

    private void j(int i10, int i11, int i12) {
        int i13 = i10 - 2;
        int i14 = i11 - 2;
        g(i13, i14, i12, 1);
        int i15 = i11 - 1;
        g(i13, i15, i12, 2);
        int i16 = i10 - 1;
        g(i16, i14, i12, 3);
        g(i16, i15, i12, 4);
        g(i16, i11, i12, 5);
        g(i10, i14, i12, 6);
        g(i10, i15, i12, 7);
        g(i10, i11, i12, 8);
    }

    public final boolean e(int i10, int i11) {
        if (this.f67222d[(i11 * this.f67221c) + i10] == 1) {
            return true;
        }
        return false;
    }

    public final void h() {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 4;
        while (true) {
            if (i14 == this.f67220b && i12 == 0) {
                a(i13);
                i13++;
            }
            if (i14 == this.f67220b - 2 && i12 == 0 && this.f67221c % 4 != 0) {
                b(i13);
                i13++;
            }
            if (i14 == this.f67220b - 2 && i12 == 0 && this.f67221c % 8 == 4) {
                c(i13);
                i13++;
            }
            if (i14 == this.f67220b + 4 && i12 == 2 && this.f67221c % 8 == 0) {
                d(i13);
                i13++;
            }
            while (true) {
                if (i14 < this.f67220b && i12 >= 0 && !f(i12, i14)) {
                    j(i14, i12, i13);
                    i13++;
                }
                int i15 = i14 - 2;
                int i16 = i12 + 2;
                if (i15 < 0 || i16 >= this.f67221c) {
                    break;
                }
                i14 = i15;
                i12 = i16;
            }
            int i17 = i14 - 1;
            int i18 = i12 + 5;
            while (true) {
                if (i17 >= 0 && i18 < this.f67221c && !f(i18, i17)) {
                    j(i17, i18, i13);
                    i13++;
                }
                int i19 = i17 + 2;
                int i20 = i18 - 2;
                i10 = this.f67220b;
                if (i19 >= i10 || i20 < 0) {
                    break;
                }
                i17 = i19;
                i18 = i20;
            }
            i14 = i17 + 5;
            i12 = i18 - 1;
            if (i14 >= i10 && i12 >= (i11 = this.f67221c)) {
                break;
            }
        }
        if (!f(i11 - 1, i10 - 1)) {
            i(this.f67221c - 1, this.f67220b - 1, true);
            i(this.f67221c - 2, this.f67220b - 2, true);
        }
    }
}

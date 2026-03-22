package com.google.android.exoplayer2.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* compiled from: Sonic.java */
/* loaded from: classes4.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    private final int f17380a;

    /* renamed from: b  reason: collision with root package name */
    private final int f17381b;

    /* renamed from: c  reason: collision with root package name */
    private final float f17382c;

    /* renamed from: d  reason: collision with root package name */
    private final float f17383d;

    /* renamed from: e  reason: collision with root package name */
    private final float f17384e;

    /* renamed from: f  reason: collision with root package name */
    private final int f17385f;

    /* renamed from: g  reason: collision with root package name */
    private final int f17386g;

    /* renamed from: h  reason: collision with root package name */
    private final int f17387h;

    /* renamed from: i  reason: collision with root package name */
    private final short[] f17388i;

    /* renamed from: j  reason: collision with root package name */
    private short[] f17389j;

    /* renamed from: k  reason: collision with root package name */
    private int f17390k;

    /* renamed from: l  reason: collision with root package name */
    private short[] f17391l;

    /* renamed from: m  reason: collision with root package name */
    private int f17392m;

    /* renamed from: n  reason: collision with root package name */
    private short[] f17393n;

    /* renamed from: o  reason: collision with root package name */
    private int f17394o;

    /* renamed from: p  reason: collision with root package name */
    private int f17395p;

    /* renamed from: q  reason: collision with root package name */
    private int f17396q;

    /* renamed from: r  reason: collision with root package name */
    private int f17397r;

    /* renamed from: s  reason: collision with root package name */
    private int f17398s;

    /* renamed from: t  reason: collision with root package name */
    private int f17399t;

    /* renamed from: u  reason: collision with root package name */
    private int f17400u;

    /* renamed from: v  reason: collision with root package name */
    private int f17401v;

    public l(int i10, int i11, float f10, float f11, int i12) {
        this.f17380a = i10;
        this.f17381b = i11;
        this.f17382c = f10;
        this.f17383d = f11;
        this.f17384e = i10 / i12;
        this.f17385f = i10 / 400;
        int i13 = i10 / 65;
        this.f17386g = i13;
        int i14 = i13 * 2;
        this.f17387h = i14;
        this.f17388i = new short[i14];
        this.f17389j = new short[i14 * i11];
        this.f17391l = new short[i14 * i11];
        this.f17393n = new short[i14 * i11];
    }

    private void a(float f10, int i10) {
        int i11;
        int i12;
        if (this.f17392m == i10) {
            return;
        }
        int i13 = this.f17380a;
        int i14 = (int) (i13 / f10);
        while (true) {
            if (i14 <= 16384 && i13 <= 16384) {
                break;
            }
            i14 /= 2;
            i13 /= 2;
        }
        o(i10);
        int i15 = 0;
        while (true) {
            int i16 = this.f17394o;
            boolean z10 = true;
            if (i15 < i16 - 1) {
                while (true) {
                    i11 = this.f17395p;
                    int i17 = (i11 + 1) * i14;
                    i12 = this.f17396q;
                    if (i17 <= i12 * i13) {
                        break;
                    }
                    this.f17391l = f(this.f17391l, this.f17392m, 1);
                    int i18 = 0;
                    while (true) {
                        int i19 = this.f17381b;
                        if (i18 < i19) {
                            this.f17391l[(this.f17392m * i19) + i18] = n(this.f17393n, (i19 * i15) + i18, i13, i14);
                            i18++;
                        }
                    }
                    this.f17396q++;
                    this.f17392m++;
                }
                int i20 = i11 + 1;
                this.f17395p = i20;
                if (i20 == i13) {
                    this.f17395p = 0;
                    if (i12 != i14) {
                        z10 = false;
                    }
                    b7.a.g(z10);
                    this.f17396q = 0;
                }
                i15++;
            } else {
                u(i16 - 1);
                return;
            }
        }
    }

    private void b(float f10) {
        int m10;
        int i10 = this.f17390k;
        if (i10 < this.f17387h) {
            return;
        }
        int i11 = 0;
        do {
            if (this.f17397r > 0) {
                m10 = c(i11);
            } else {
                int g10 = g(this.f17389j, i11);
                if (f10 > 1.0d) {
                    m10 = g10 + w(this.f17389j, i11, f10, g10);
                } else {
                    m10 = m(this.f17389j, i11, f10, g10);
                }
            }
            i11 += m10;
        } while (this.f17387h + i11 <= i10);
        v(i11);
    }

    private int c(int i10) {
        int min = Math.min(this.f17387h, this.f17397r);
        d(this.f17389j, i10, min);
        this.f17397r -= min;
        return min;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] f10 = f(this.f17391l, this.f17392m, i11);
        this.f17391l = f10;
        int i12 = this.f17381b;
        System.arraycopy(sArr, i10 * i12, f10, this.f17392m * i12, i12 * i11);
        this.f17392m += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.f17387h / i11;
        int i13 = this.f17381b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f17388i[i16] = (short) (i17 / i14);
        }
    }

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f17381b;
        int i13 = length / i12;
        if (i10 + i11 <= i13) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    private int g(short[] sArr, int i10) {
        int i11;
        int i12;
        int i13;
        int i14 = this.f17380a;
        if (i14 > 4000) {
            i11 = i14 / 4000;
        } else {
            i11 = 1;
        }
        if (this.f17381b == 1 && i11 == 1) {
            i12 = h(sArr, i10, this.f17385f, this.f17386g);
        } else {
            e(sArr, i10, i11);
            int h10 = h(this.f17388i, 0, this.f17385f / i11, this.f17386g / i11);
            if (i11 != 1) {
                int i15 = h10 * i11;
                int i16 = i11 * 4;
                int i17 = i15 - i16;
                int i18 = i15 + i16;
                int i19 = this.f17385f;
                if (i17 < i19) {
                    i17 = i19;
                }
                int i20 = this.f17386g;
                if (i18 > i20) {
                    i18 = i20;
                }
                if (this.f17381b == 1) {
                    i12 = h(sArr, i10, i17, i18);
                } else {
                    e(sArr, i10, 1);
                    i12 = h(this.f17388i, 0, i17, i18);
                }
            } else {
                i12 = h10;
            }
        }
        if (q(this.f17400u, this.f17401v)) {
            i13 = this.f17398s;
        } else {
            i13 = i12;
        }
        this.f17399t = this.f17400u;
        this.f17398s = i12;
        return i13;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f17381b;
        int i14 = 255;
        int i15 = 1;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int i18 = 0;
            for (int i19 = 0; i19 < i11; i19++) {
                i18 += Math.abs(sArr[i13 + i19] - sArr[(i13 + i11) + i19]);
            }
            if (i18 * i16 < i15 * i11) {
                i16 = i11;
                i15 = i18;
            }
            if (i18 * i14 > i17 * i11) {
                i14 = i11;
                i17 = i18;
            }
            i11++;
        }
        this.f17400u = i15 / i16;
        this.f17401v = i17 / i14;
        return i16;
    }

    private int m(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 < 0.5f) {
            i12 = (int) ((i11 * f10) / (1.0f - f10));
        } else {
            this.f17397r = (int) ((i11 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            i12 = i11;
        }
        int i13 = i11 + i12;
        short[] f11 = f(this.f17391l, this.f17392m, i13);
        this.f17391l = f11;
        int i14 = this.f17381b;
        System.arraycopy(sArr, i10 * i14, f11, this.f17392m * i14, i14 * i11);
        p(i12, this.f17381b, this.f17391l, this.f17392m + i11, sArr, i10 + i11, sArr, i10);
        this.f17392m += i13;
        return i12;
    }

    private short n(short[] sArr, int i10, int i11, int i12) {
        short s10 = sArr[i10];
        short s11 = sArr[i10 + this.f17381b];
        int i13 = this.f17396q * i11;
        int i14 = this.f17395p;
        int i15 = i14 * i12;
        int i16 = (i14 + 1) * i12;
        int i17 = i16 - i13;
        int i18 = i16 - i15;
        return (short) (((s10 * i17) + ((i18 - i17) * s11)) / i18);
    }

    private void o(int i10) {
        int i11 = this.f17392m - i10;
        short[] f10 = f(this.f17393n, this.f17394o, i11);
        this.f17393n = f10;
        short[] sArr = this.f17391l;
        int i12 = this.f17381b;
        System.arraycopy(sArr, i10 * i12, f10, this.f17394o * i12, i12 * i11);
        this.f17392m = i10;
        this.f17394o += i11;
    }

    private static void p(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i16] = (short) (((sArr2[i18] * (i10 - i19)) + (sArr3[i17] * i19)) / i10);
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    private boolean q(int i10, int i11) {
        if (i10 == 0 || this.f17398s == 0 || i11 > i10 * 3 || i10 * 2 <= this.f17399t * 3) {
            return false;
        }
        return true;
    }

    private void r() {
        int i10 = this.f17392m;
        float f10 = this.f17382c;
        float f11 = this.f17383d;
        float f12 = f10 / f11;
        float f13 = this.f17384e * f11;
        double d10 = f12;
        if (d10 <= 1.00001d && d10 >= 0.99999d) {
            d(this.f17389j, 0, this.f17390k);
            this.f17390k = 0;
        } else {
            b(f12);
        }
        if (f13 != 1.0f) {
            a(f13, i10);
        }
    }

    private void u(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.f17393n;
        int i11 = this.f17381b;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.f17394o - i10) * i11);
        this.f17394o -= i10;
    }

    private void v(int i10) {
        int i11 = this.f17390k - i10;
        short[] sArr = this.f17389j;
        int i12 = this.f17381b;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.f17390k = i11;
    }

    private int w(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 >= 2.0f) {
            i12 = (int) (i11 / (f10 - 1.0f));
        } else {
            this.f17397r = (int) ((i11 * (2.0f - f10)) / (f10 - 1.0f));
            i12 = i11;
        }
        short[] f11 = f(this.f17391l, this.f17392m, i12);
        this.f17391l = f11;
        p(i12, this.f17381b, f11, this.f17392m, sArr, i10, sArr, i10 + i11);
        this.f17392m += i12;
        return i12;
    }

    public void i() {
        this.f17390k = 0;
        this.f17392m = 0;
        this.f17394o = 0;
        this.f17395p = 0;
        this.f17396q = 0;
        this.f17397r = 0;
        this.f17398s = 0;
        this.f17399t = 0;
        this.f17400u = 0;
        this.f17401v = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f17381b, this.f17392m);
        shortBuffer.put(this.f17391l, 0, this.f17381b * min);
        int i10 = this.f17392m - min;
        this.f17392m = i10;
        short[] sArr = this.f17391l;
        int i11 = this.f17381b;
        System.arraycopy(sArr, min * i11, sArr, 0, i10 * i11);
    }

    public int k() {
        return this.f17392m * this.f17381b * 2;
    }

    public int l() {
        return this.f17390k * this.f17381b * 2;
    }

    public void s() {
        int i10;
        int i11 = this.f17390k;
        float f10 = this.f17382c;
        float f11 = this.f17383d;
        int i12 = this.f17392m + ((int) ((((i11 / (f10 / f11)) + this.f17394o) / (this.f17384e * f11)) + 0.5f));
        this.f17389j = f(this.f17389j, i11, (this.f17387h * 2) + i11);
        int i13 = 0;
        while (true) {
            i10 = this.f17387h;
            int i14 = this.f17381b;
            if (i13 >= i10 * 2 * i14) {
                break;
            }
            this.f17389j[(i14 * i11) + i13] = 0;
            i13++;
        }
        this.f17390k += i10 * 2;
        r();
        if (this.f17392m > i12) {
            this.f17392m = i12;
        }
        this.f17390k = 0;
        this.f17397r = 0;
        this.f17394o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i10 = this.f17381b;
        int i11 = remaining / i10;
        short[] f10 = f(this.f17389j, this.f17390k, i11);
        this.f17389j = f10;
        shortBuffer.get(f10, this.f17390k * this.f17381b, ((i10 * i11) * 2) / 2);
        this.f17390k += i11;
        r();
    }
}

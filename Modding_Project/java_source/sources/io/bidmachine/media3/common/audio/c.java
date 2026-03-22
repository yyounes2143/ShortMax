package io.bidmachine.media3.common.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* compiled from: Sonic.java */
/* loaded from: classes8.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f55232a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55233b;

    /* renamed from: c  reason: collision with root package name */
    private final float f55234c;

    /* renamed from: d  reason: collision with root package name */
    private final float f55235d;

    /* renamed from: e  reason: collision with root package name */
    private final float f55236e;

    /* renamed from: f  reason: collision with root package name */
    private final int f55237f;

    /* renamed from: g  reason: collision with root package name */
    private final int f55238g;

    /* renamed from: h  reason: collision with root package name */
    private final int f55239h;

    /* renamed from: i  reason: collision with root package name */
    private final short[] f55240i;

    /* renamed from: j  reason: collision with root package name */
    private short[] f55241j;

    /* renamed from: k  reason: collision with root package name */
    private int f55242k;

    /* renamed from: l  reason: collision with root package name */
    private short[] f55243l;

    /* renamed from: m  reason: collision with root package name */
    private int f55244m;

    /* renamed from: n  reason: collision with root package name */
    private short[] f55245n;

    /* renamed from: o  reason: collision with root package name */
    private int f55246o;

    /* renamed from: p  reason: collision with root package name */
    private int f55247p;

    /* renamed from: q  reason: collision with root package name */
    private int f55248q;

    /* renamed from: r  reason: collision with root package name */
    private int f55249r;

    /* renamed from: s  reason: collision with root package name */
    private int f55250s;

    /* renamed from: t  reason: collision with root package name */
    private int f55251t;

    /* renamed from: u  reason: collision with root package name */
    private int f55252u;

    /* renamed from: v  reason: collision with root package name */
    private int f55253v;

    /* renamed from: w  reason: collision with root package name */
    private double f55254w;

    public c(int i10, int i11, float f10, float f11, int i12) {
        this.f55232a = i10;
        this.f55233b = i11;
        this.f55234c = f10;
        this.f55235d = f11;
        this.f55236e = i10 / i12;
        this.f55237f = i10 / 400;
        int i13 = i10 / 65;
        this.f55238g = i13;
        int i14 = i13 * 2;
        this.f55239h = i14;
        this.f55240i = new short[i14];
        this.f55241j = new short[i14 * i11];
        this.f55243l = new short[i14 * i11];
        this.f55245n = new short[i14 * i11];
    }

    private void a(float f10, int i10) {
        int i11;
        int i12;
        if (this.f55244m == i10) {
            return;
        }
        int i13 = this.f55232a;
        long j10 = i13 / f10;
        long j11 = i13;
        while (j10 != 0 && j11 != 0 && j10 % 2 == 0 && j11 % 2 == 0) {
            j10 /= 2;
            j11 /= 2;
        }
        o(i10);
        int i14 = 0;
        while (true) {
            int i15 = this.f55246o;
            boolean z10 = true;
            if (i14 < i15 - 1) {
                while (true) {
                    i11 = this.f55247p;
                    i12 = this.f55248q;
                    if ((i11 + 1) * j10 <= i12 * j11) {
                        break;
                    }
                    this.f55243l = f(this.f55243l, this.f55244m, 1);
                    int i16 = 0;
                    while (true) {
                        int i17 = this.f55233b;
                        if (i16 < i17) {
                            this.f55243l[(this.f55244m * i17) + i16] = n(this.f55245n, (i17 * i14) + i16, j11, j10);
                            i16++;
                        }
                    }
                    this.f55248q++;
                    this.f55244m++;
                }
                int i18 = i11 + 1;
                this.f55247p = i18;
                if (i18 == j11) {
                    this.f55247p = 0;
                    if (i12 != j10) {
                        z10 = false;
                    }
                    cn.a.g(z10);
                    this.f55248q = 0;
                }
                i14++;
            } else {
                u(i15 - 1);
                return;
            }
        }
    }

    private void b(double d10) {
        int m10;
        int i10 = this.f55242k;
        if (i10 < this.f55239h) {
            return;
        }
        int i11 = 0;
        do {
            if (this.f55249r > 0) {
                m10 = c(i11);
            } else {
                int g10 = g(this.f55241j, i11);
                if (d10 > 1.0d) {
                    i11 += g10 + w(this.f55241j, i11, d10, g10);
                } else {
                    m10 = m(this.f55241j, i11, d10, g10);
                }
            }
            i11 += m10;
        } while (this.f55239h + i11 <= i10);
        v(i11);
    }

    private int c(int i10) {
        int min = Math.min(this.f55239h, this.f55249r);
        d(this.f55241j, i10, min);
        this.f55249r -= min;
        return min;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] f10 = f(this.f55243l, this.f55244m, i11);
        this.f55243l = f10;
        int i12 = this.f55233b;
        System.arraycopy(sArr, i10 * i12, f10, this.f55244m * i12, i12 * i11);
        this.f55244m += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.f55239h / i11;
        int i13 = this.f55233b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f55240i[i16] = (short) (i17 / i14);
        }
    }

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f55233b;
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
        int i14 = this.f55232a;
        if (i14 > 4000) {
            i11 = i14 / 4000;
        } else {
            i11 = 1;
        }
        if (this.f55233b == 1 && i11 == 1) {
            i12 = h(sArr, i10, this.f55237f, this.f55238g);
        } else {
            e(sArr, i10, i11);
            int h10 = h(this.f55240i, 0, this.f55237f / i11, this.f55238g / i11);
            if (i11 != 1) {
                int i15 = h10 * i11;
                int i16 = i11 * 4;
                int i17 = i15 - i16;
                int i18 = i15 + i16;
                int i19 = this.f55237f;
                if (i17 < i19) {
                    i17 = i19;
                }
                int i20 = this.f55238g;
                if (i18 > i20) {
                    i18 = i20;
                }
                if (this.f55233b == 1) {
                    i12 = h(sArr, i10, i17, i18);
                } else {
                    e(sArr, i10, 1);
                    i12 = h(this.f55240i, 0, i17, i18);
                }
            } else {
                i12 = h10;
            }
        }
        if (q(this.f55252u, this.f55253v)) {
            i13 = this.f55250s;
        } else {
            i13 = i12;
        }
        this.f55251t = this.f55252u;
        this.f55250s = i12;
        return i13;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f55233b;
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
        this.f55252u = i15 / i16;
        this.f55253v = i17 / i14;
        return i16;
    }

    private int m(short[] sArr, int i10, double d10, int i11) {
        int i12;
        if (d10 < 0.5d) {
            double d11 = ((i11 * d10) / (1.0d - d10)) + this.f55254w;
            i12 = (int) Math.round(d11);
            this.f55254w = d11 - i12;
        } else {
            double d12 = ((i11 * ((2.0d * d10) - 1.0d)) / (1.0d - d10)) + this.f55254w;
            int round = (int) Math.round(d12);
            this.f55249r = round;
            this.f55254w = d12 - round;
            i12 = i11;
        }
        int i13 = i11 + i12;
        short[] f10 = f(this.f55243l, this.f55244m, i13);
        this.f55243l = f10;
        int i14 = this.f55233b;
        System.arraycopy(sArr, i10 * i14, f10, this.f55244m * i14, i14 * i11);
        p(i12, this.f55233b, this.f55243l, this.f55244m + i11, sArr, i10 + i11, sArr, i10);
        this.f55244m += i13;
        return i12;
    }

    private short n(short[] sArr, int i10, long j10, long j11) {
        short s10 = sArr[i10];
        short s11 = sArr[i10 + this.f55233b];
        long j12 = this.f55248q * j10;
        int i11 = this.f55247p;
        long j13 = i11 * j11;
        long j14 = (i11 + 1) * j11;
        long j15 = j14 - j12;
        long j16 = j14 - j13;
        return (short) (((s10 * j15) + ((j16 - j15) * s11)) / j16);
    }

    private void o(int i10) {
        int i11 = this.f55244m - i10;
        short[] f10 = f(this.f55245n, this.f55246o, i11);
        this.f55245n = f10;
        short[] sArr = this.f55243l;
        int i12 = this.f55233b;
        System.arraycopy(sArr, i10 * i12, f10, this.f55246o * i12, i12 * i11);
        this.f55244m = i10;
        this.f55246o += i11;
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
        if (i10 == 0 || this.f55250s == 0 || i11 > i10 * 3 || i10 * 2 <= this.f55251t * 3) {
            return false;
        }
        return true;
    }

    private void r() {
        int i10 = this.f55244m;
        float f10 = this.f55234c;
        float f11 = this.f55235d;
        double d10 = f10 / f11;
        float f12 = this.f55236e * f11;
        if (d10 <= 1.0000100135803223d && d10 >= 0.9999899864196777d) {
            d(this.f55241j, 0, this.f55242k);
            this.f55242k = 0;
        } else {
            b(d10);
        }
        if (f12 != 1.0f) {
            a(f12, i10);
        }
    }

    private void u(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.f55245n;
        int i11 = this.f55233b;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.f55246o - i10) * i11);
        this.f55246o -= i10;
    }

    private void v(int i10) {
        int i11 = this.f55242k - i10;
        short[] sArr = this.f55241j;
        int i12 = this.f55233b;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.f55242k = i11;
    }

    private int w(short[] sArr, int i10, double d10, int i11) {
        int i12;
        if (d10 >= 2.0d) {
            double d11 = (i11 / (d10 - 1.0d)) + this.f55254w;
            i12 = (int) Math.round(d11);
            this.f55254w = d11 - i12;
        } else {
            double d12 = ((i11 * (2.0d - d10)) / (d10 - 1.0d)) + this.f55254w;
            int round = (int) Math.round(d12);
            this.f55249r = round;
            this.f55254w = d12 - round;
            i12 = i11;
        }
        short[] f10 = f(this.f55243l, this.f55244m, i12);
        this.f55243l = f10;
        p(i12, this.f55233b, f10, this.f55244m, sArr, i10, sArr, i10 + i11);
        this.f55244m += i12;
        return i12;
    }

    public void i() {
        this.f55242k = 0;
        this.f55244m = 0;
        this.f55246o = 0;
        this.f55247p = 0;
        this.f55248q = 0;
        this.f55249r = 0;
        this.f55250s = 0;
        this.f55251t = 0;
        this.f55252u = 0;
        this.f55253v = 0;
        this.f55254w = 0.0d;
    }

    public void j(ShortBuffer shortBuffer) {
        boolean z10;
        if (this.f55244m >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        int min = Math.min(shortBuffer.remaining() / this.f55233b, this.f55244m);
        shortBuffer.put(this.f55243l, 0, this.f55233b * min);
        int i10 = this.f55244m - min;
        this.f55244m = i10;
        short[] sArr = this.f55243l;
        int i11 = this.f55233b;
        System.arraycopy(sArr, min * i11, sArr, 0, i10 * i11);
    }

    public int k() {
        boolean z10;
        if (this.f55244m >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        return this.f55244m * this.f55233b * 2;
    }

    public int l() {
        return this.f55242k * this.f55233b * 2;
    }

    public void s() {
        int i10;
        int i11;
        int i12 = this.f55242k;
        float f10 = this.f55234c;
        float f11 = this.f55235d;
        int i13 = this.f55244m + ((int) (((((((i12 - i10) / (f10 / f11)) + this.f55249r) + this.f55254w) + this.f55246o) / (this.f55236e * f11)) + 0.5d));
        this.f55254w = 0.0d;
        this.f55241j = f(this.f55241j, i12, (this.f55239h * 2) + i12);
        int i14 = 0;
        while (true) {
            i11 = this.f55239h;
            int i15 = this.f55233b;
            if (i14 >= i11 * 2 * i15) {
                break;
            }
            this.f55241j[(i15 * i12) + i14] = 0;
            i14++;
        }
        this.f55242k += i11 * 2;
        r();
        if (this.f55244m > i13) {
            this.f55244m = Math.max(i13, 0);
        }
        this.f55242k = 0;
        this.f55249r = 0;
        this.f55246o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i10 = this.f55233b;
        int i11 = remaining / i10;
        short[] f10 = f(this.f55241j, this.f55242k, i11);
        this.f55241j = f10;
        shortBuffer.get(f10, this.f55242k * this.f55233b, ((i10 * i11) * 2) / 2);
        this.f55242k += i11;
        r();
    }
}

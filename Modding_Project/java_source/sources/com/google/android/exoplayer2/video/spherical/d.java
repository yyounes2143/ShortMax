package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import b7.f0;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.video.spherical.c;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* compiled from: ProjectionDecoder.java */
/* loaded from: classes4.dex */
final class d {
    @Nullable
    public static c a(byte[] bArr, int i10) {
        ArrayList<c.a> arrayList;
        g0 g0Var = new g0(bArr);
        try {
            if (c(g0Var)) {
                arrayList = f(g0Var);
            } else {
                arrayList = e(g0Var);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size != 1) {
            if (size != 2) {
                return null;
            }
            return new c(arrayList.get(0), arrayList.get(1), i10);
        }
        return new c(arrayList.get(0), i10);
    }

    private static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >> 1);
    }

    private static boolean c(g0 g0Var) {
        g0Var.Q(4);
        int n10 = g0Var.n();
        g0Var.P(0);
        if (n10 != 1886547818) {
            return false;
        }
        return true;
    }

    @Nullable
    private static c.a d(g0 g0Var) {
        int n10 = g0Var.n();
        if (n10 > 10000) {
            return null;
        }
        float[] fArr = new float[n10];
        for (int i10 = 0; i10 < n10; i10++) {
            fArr[i10] = g0Var.m();
        }
        int n11 = g0Var.n();
        if (n11 > 32000) {
            return null;
        }
        double d10 = 2.0d;
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(n10 * 2.0d) / log);
        f0 f0Var = new f0(g0Var.d());
        int i11 = 8;
        f0Var.p(g0Var.e() * 8);
        float[] fArr2 = new float[n11 * 5];
        int i12 = 5;
        int[] iArr = new int[5];
        int i13 = 0;
        int i14 = 0;
        while (i13 < n11) {
            int i15 = 0;
            while (i15 < i12) {
                int b10 = iArr[i15] + b(f0Var.h(ceil));
                if (b10 >= n10 || b10 < 0) {
                    return null;
                }
                fArr2[i14] = fArr[b10];
                iArr[i15] = b10;
                i15++;
                i14++;
                i12 = 5;
            }
            i13++;
            i12 = 5;
        }
        f0Var.p((f0Var.e() + 7) & (-8));
        int i16 = 32;
        int h10 = f0Var.h(32);
        c.b[] bVarArr = new c.b[h10];
        int i17 = 0;
        while (i17 < h10) {
            int h11 = f0Var.h(i11);
            int h12 = f0Var.h(i11);
            int h13 = f0Var.h(i16);
            if (h13 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(n11 * d10) / log);
            float[] fArr3 = new float[h13 * 3];
            float[] fArr4 = new float[h13 * 2];
            int i18 = 0;
            for (int i19 = 0; i19 < h13; i19++) {
                i18 += b(f0Var.h(ceil2));
                if (i18 < 0 || i18 >= n11) {
                    return null;
                }
                int i20 = i19 * 3;
                int i21 = i18 * 5;
                fArr3[i20] = fArr2[i21];
                fArr3[i20 + 1] = fArr2[i21 + 1];
                fArr3[i20 + 2] = fArr2[i21 + 2];
                int i22 = i19 * 2;
                fArr4[i22] = fArr2[i21 + 3];
                fArr4[i22 + 1] = fArr2[i21 + 4];
            }
            bVarArr[i17] = new c.b(h11, fArr3, fArr4, h12);
            i17++;
            i16 = 32;
            d10 = 2.0d;
            i11 = 8;
        }
        return new c.a(bVarArr);
    }

    @Nullable
    private static ArrayList<c.a> e(g0 g0Var) {
        if (g0Var.D() != 0) {
            return null;
        }
        g0Var.Q(7);
        int n10 = g0Var.n();
        if (n10 == 1684433976) {
            g0 g0Var2 = new g0();
            Inflater inflater = new Inflater(true);
            try {
                if (!s0.l0(g0Var, g0Var2, inflater)) {
                    return null;
                }
                inflater.end();
                g0Var = g0Var2;
            } finally {
                inflater.end();
            }
        } else if (n10 != 1918990112) {
            return null;
        }
        return g(g0Var);
    }

    @Nullable
    private static ArrayList<c.a> f(g0 g0Var) {
        int n10;
        g0Var.Q(8);
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        while (e10 < f10 && (n10 = g0Var.n() + e10) > e10 && n10 <= f10) {
            int n11 = g0Var.n();
            if (n11 != 2037673328 && n11 != 1836279920) {
                g0Var.P(n10);
                e10 = n10;
            } else {
                g0Var.O(n10);
                return e(g0Var);
            }
        }
        return null;
    }

    @Nullable
    private static ArrayList<c.a> g(g0 g0Var) {
        ArrayList<c.a> arrayList = new ArrayList<>();
        int e10 = g0Var.e();
        int f10 = g0Var.f();
        while (e10 < f10) {
            int n10 = g0Var.n() + e10;
            if (n10 <= e10 || n10 > f10) {
                return null;
            }
            if (g0Var.n() == 1835365224) {
                c.a d10 = d(g0Var);
                if (d10 == null) {
                    return null;
                }
                arrayList.add(d10);
            }
            g0Var.P(n10);
            e10 = n10;
        }
        return arrayList;
    }
}

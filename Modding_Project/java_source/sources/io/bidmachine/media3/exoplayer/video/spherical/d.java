package io.bidmachine.media3.exoplayer.video.spherical;

import androidx.annotation.Nullable;
import cn.a0;
import cn.b0;
import cn.m0;
import io.bidmachine.media3.exoplayer.video.spherical.c;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* compiled from: ProjectionDecoder.java */
/* loaded from: classes8.dex */
final class d {
    @Nullable
    public static c a(byte[] bArr, int i10) {
        ArrayList<c.a> arrayList;
        b0 b0Var = new b0(bArr);
        try {
            if (c(b0Var)) {
                arrayList = f(b0Var);
            } else {
                arrayList = e(b0Var);
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

    private static boolean c(b0 b0Var) {
        b0Var.X(4);
        int q10 = b0Var.q();
        b0Var.W(0);
        if (q10 != 1886547818) {
            return false;
        }
        return true;
    }

    @Nullable
    private static c.a d(b0 b0Var) {
        int q10 = b0Var.q();
        if (q10 > 10000) {
            return null;
        }
        float[] fArr = new float[q10];
        for (int i10 = 0; i10 < q10; i10++) {
            fArr[i10] = b0Var.p();
        }
        int q11 = b0Var.q();
        if (q11 > 32000) {
            return null;
        }
        double d10 = 2.0d;
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(q10 * 2.0d) / log);
        a0 a0Var = new a0(b0Var.e());
        int i11 = 8;
        a0Var.p(b0Var.f() * 8);
        float[] fArr2 = new float[q11 * 5];
        int i12 = 5;
        int[] iArr = new int[5];
        int i13 = 0;
        int i14 = 0;
        while (i13 < q11) {
            int i15 = 0;
            while (i15 < i12) {
                int b10 = iArr[i15] + b(a0Var.h(ceil));
                if (b10 >= q10 || b10 < 0) {
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
        a0Var.p((a0Var.e() + 7) & (-8));
        int i16 = 32;
        int h10 = a0Var.h(32);
        c.b[] bVarArr = new c.b[h10];
        int i17 = 0;
        while (i17 < h10) {
            int h11 = a0Var.h(i11);
            int h12 = a0Var.h(i11);
            int h13 = a0Var.h(i16);
            if (h13 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(q11 * d10) / log);
            float[] fArr3 = new float[h13 * 3];
            float[] fArr4 = new float[h13 * 2];
            int i18 = 0;
            for (int i19 = 0; i19 < h13; i19++) {
                i18 += b(a0Var.h(ceil2));
                if (i18 < 0 || i18 >= q11) {
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
    private static ArrayList<c.a> e(b0 b0Var) {
        if (b0Var.H() != 0) {
            return null;
        }
        b0Var.X(7);
        int q10 = b0Var.q();
        if (q10 == 1684433976) {
            b0 b0Var2 = new b0();
            Inflater inflater = new Inflater(true);
            try {
                if (!m0.B0(b0Var, b0Var2, inflater)) {
                    return null;
                }
                inflater.end();
                b0Var = b0Var2;
            } finally {
                inflater.end();
            }
        } else if (q10 != 1918990112) {
            return null;
        }
        return g(b0Var);
    }

    @Nullable
    private static ArrayList<c.a> f(b0 b0Var) {
        int q10;
        b0Var.X(8);
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        while (f10 < g10 && (q10 = b0Var.q() + f10) > f10 && q10 <= g10) {
            int q11 = b0Var.q();
            if (q11 != 2037673328 && q11 != 1836279920) {
                b0Var.W(q10);
                f10 = q10;
            } else {
                b0Var.V(q10);
                return e(b0Var);
            }
        }
        return null;
    }

    @Nullable
    private static ArrayList<c.a> g(b0 b0Var) {
        ArrayList<c.a> arrayList = new ArrayList<>();
        int f10 = b0Var.f();
        int g10 = b0Var.g();
        while (f10 < g10) {
            int q10 = b0Var.q() + f10;
            if (q10 <= f10 || q10 > g10) {
                return null;
            }
            if (b0Var.q() == 1835365224) {
                c.a d10 = d(b0Var);
                if (d10 == null) {
                    return null;
                }
                arrayList.add(d10);
            }
            b0Var.W(q10);
            f10 = q10;
        }
        return arrayList;
    }
}

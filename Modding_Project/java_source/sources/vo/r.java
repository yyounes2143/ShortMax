package vo;

import androidx.annotation.Nullable;
import cn.b0;
/* compiled from: SmtaAtomUtil.java */
/* loaded from: classes8.dex */
public final class r {
    private static int a(int i10, b0 b0Var, int i11) {
        if (i10 == 12) {
            return 240;
        }
        if (i10 == 13) {
            return 120;
        }
        if (i10 == 21 && b0Var.a() >= 8 && b0Var.f() + 8 <= i11) {
            int q10 = b0Var.q();
            int q11 = b0Var.q();
            if (q10 >= 12 && q11 == 1936877170) {
                return b0Var.I();
            }
        }
        return -2147483647;
    }

    @Nullable
    public static zm.t b(b0 b0Var, int i10) {
        b0Var.X(12);
        while (b0Var.f() < i10) {
            int f10 = b0Var.f();
            int q10 = b0Var.q();
            if (b0Var.q() == 1935766900) {
                if (q10 < 16) {
                    return null;
                }
                b0Var.X(4);
                int i11 = -1;
                int i12 = 0;
                for (int i13 = 0; i13 < 2; i13++) {
                    int H = b0Var.H();
                    int H2 = b0Var.H();
                    if (H == 0) {
                        i11 = H2;
                    } else if (H == 1) {
                        i12 = H2;
                    }
                }
                int a10 = a(i11, b0Var, i10);
                if (a10 == -2147483647) {
                    return null;
                }
                return new zm.t(new qo.d(a10, i12));
            }
            b0Var.W(f10 + q10);
        }
        return null;
    }
}

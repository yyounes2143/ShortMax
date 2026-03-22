package t5;

import b7.g0;
/* compiled from: CeaUtil.java */
/* loaded from: classes4.dex */
public final class b {
    public static void a(long j10, g0 g0Var, b0[] b0VarArr) {
        int i10;
        boolean z10;
        while (true) {
            boolean z11 = true;
            if (g0Var.a() > 1) {
                int c10 = c(g0Var);
                int c11 = c(g0Var);
                int e10 = g0Var.e() + c11;
                if (c11 != -1 && c11 <= g0Var.a()) {
                    if (c10 == 4 && c11 >= 8) {
                        int D = g0Var.D();
                        int J = g0Var.J();
                        if (J == 49) {
                            i10 = g0Var.n();
                        } else {
                            i10 = 0;
                        }
                        int D2 = g0Var.D();
                        if (J == 47) {
                            g0Var.Q(1);
                        }
                        if (D == 181 && ((J == 49 || J == 47) && D2 == 3)) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (J == 49) {
                            if (i10 != 1195456820) {
                                z11 = false;
                            }
                            z10 &= z11;
                        }
                        if (z10) {
                            b(j10, g0Var, b0VarArr);
                        }
                    }
                } else {
                    b7.q.i("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    e10 = g0Var.f();
                }
                g0Var.P(e10);
            } else {
                return;
            }
        }
    }

    public static void b(long j10, g0 g0Var, b0[] b0VarArr) {
        int D = g0Var.D();
        if ((D & 64) != 0) {
            g0Var.Q(1);
            int i10 = (D & 31) * 3;
            int e10 = g0Var.e();
            for (b0 b0Var : b0VarArr) {
                g0Var.P(e10);
                b0Var.a(g0Var, i10);
                if (j10 != -9223372036854775807L) {
                    b0Var.e(j10, 1, i10, 0, null);
                }
            }
        }
    }

    private static int c(g0 g0Var) {
        int i10 = 0;
        while (g0Var.a() != 0) {
            int D = g0Var.D();
            i10 += D;
            if (D != 255) {
                return i10;
            }
        }
        return -1;
    }
}

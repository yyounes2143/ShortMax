package ao;
/* compiled from: CeaUtil.java */
/* loaded from: classes8.dex */
public final class f {
    public static void a(long j10, cn.b0 b0Var, o0[] o0VarArr) {
        int i10;
        boolean z10;
        while (true) {
            boolean z11 = true;
            if (b0Var.a() > 1) {
                int c10 = c(b0Var);
                int c11 = c(b0Var);
                int f10 = b0Var.f() + c11;
                if (c11 != -1 && c11 <= b0Var.a()) {
                    if (c10 == 4 && c11 >= 8) {
                        int H = b0Var.H();
                        int P = b0Var.P();
                        if (P == 49) {
                            i10 = b0Var.q();
                        } else {
                            i10 = 0;
                        }
                        int H2 = b0Var.H();
                        if (P == 47) {
                            b0Var.X(1);
                        }
                        if (H == 181 && ((P == 49 || P == 47) && H2 == 3)) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (P == 49) {
                            if (i10 != 1195456820) {
                                z11 = false;
                            }
                            z10 &= z11;
                        }
                        if (z10) {
                            b(j10, b0Var, o0VarArr);
                        }
                    }
                } else {
                    cn.r.h("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    f10 = b0Var.g();
                }
                b0Var.W(f10);
            } else {
                return;
            }
        }
    }

    public static void b(long j10, cn.b0 b0Var, o0[] o0VarArr) {
        boolean z10;
        int H = b0Var.H();
        if ((H & 64) != 0) {
            b0Var.X(1);
            int i10 = (H & 31) * 3;
            int f10 = b0Var.f();
            for (o0 o0Var : o0VarArr) {
                b0Var.W(f10);
                o0Var.a(b0Var, i10);
                if (j10 != -9223372036854775807L) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cn.a.g(z10);
                o0Var.c(j10, 1, i10, 0, null);
            }
        }
    }

    private static int c(cn.b0 b0Var) {
        int i10 = 0;
        while (b0Var.a() != 0) {
            int H = b0Var.H();
            i10 += H;
            if (H != 255) {
                return i10;
            }
        }
        return -1;
    }
}

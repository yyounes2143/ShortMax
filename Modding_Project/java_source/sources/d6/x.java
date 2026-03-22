package d6;

import b7.o0;
import b7.s0;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import t5.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PsBinarySearchSeeker.java */
/* loaded from: classes4.dex */
public final class x extends t5.a {

    /* compiled from: PsBinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    private static final class b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final o0 f50182a;

        /* renamed from: b  reason: collision with root package name */
        private final b7.g0 f50183b;

        private a.e c(b7.g0 g0Var, long j10, long j11) {
            int i10 = -1;
            int i11 = -1;
            long j12 = -9223372036854775807L;
            while (g0Var.a() >= 4) {
                if (x.k(g0Var.d(), g0Var.e()) != 442) {
                    g0Var.Q(1);
                } else {
                    g0Var.Q(4);
                    long l10 = y.l(g0Var);
                    if (l10 != -9223372036854775807L) {
                        long b10 = this.f50182a.b(l10);
                        if (b10 > j10) {
                            if (j12 == -9223372036854775807L) {
                                return a.e.d(b10, j11);
                            }
                            return a.e.e(j11 + i11);
                        } else if (100000 + b10 > j10) {
                            return a.e.e(j11 + g0Var.e());
                        } else {
                            i11 = g0Var.e();
                            j12 = b10;
                        }
                    }
                    d(g0Var);
                    i10 = g0Var.e();
                }
            }
            if (j12 != -9223372036854775807L) {
                return a.e.f(j12, j11 + i10);
            }
            return a.e.f67093d;
        }

        private static void d(b7.g0 g0Var) {
            int k10;
            int f10 = g0Var.f();
            if (g0Var.a() < 10) {
                g0Var.P(f10);
                return;
            }
            g0Var.Q(9);
            int D = g0Var.D() & 7;
            if (g0Var.a() < D) {
                g0Var.P(f10);
                return;
            }
            g0Var.Q(D);
            if (g0Var.a() < 4) {
                g0Var.P(f10);
                return;
            }
            if (x.k(g0Var.d(), g0Var.e()) == 443) {
                g0Var.Q(4);
                int J = g0Var.J();
                if (g0Var.a() < J) {
                    g0Var.P(f10);
                    return;
                }
                g0Var.Q(J);
            }
            while (g0Var.a() >= 4 && (k10 = x.k(g0Var.d(), g0Var.e())) != 442 && k10 != 441 && (k10 >>> 8) == 1) {
                g0Var.Q(4);
                if (g0Var.a() < 2) {
                    g0Var.P(f10);
                    return;
                }
                g0Var.P(Math.min(g0Var.f(), g0Var.e() + g0Var.J()));
            }
        }

        @Override // t5.a.f
        public void a() {
            this.f50183b.M(s0.f2511f);
        }

        @Override // t5.a.f
        public a.e b(t5.l lVar, long j10) throws IOException {
            long position = lVar.getPosition();
            int min = (int) Math.min(20000L, lVar.getLength() - position);
            this.f50183b.L(min);
            lVar.peekFully(this.f50183b.d(), 0, min);
            return c(this.f50183b, j10, position);
        }

        private b(o0 o0Var) {
            this.f50182a = o0Var;
            this.f50183b = new b7.g0();
        }
    }

    public x(o0 o0Var, long j10, long j11) {
        super(new a.b(), new b(o0Var), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }
}

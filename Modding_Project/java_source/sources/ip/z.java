package ip;

import ao.e;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PsBinarySearchSeeker.java */
/* loaded from: classes8.dex */
public final class z extends ao.e {

    /* compiled from: PsBinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    private static final class b implements e.f {

        /* renamed from: a  reason: collision with root package name */
        private final cn.h0 f60066a;

        /* renamed from: b  reason: collision with root package name */
        private final cn.b0 f60067b;

        private e.C0071e c(cn.b0 b0Var, long j10, long j11) {
            int i10 = -1;
            int i11 = -1;
            long j12 = -9223372036854775807L;
            while (b0Var.a() >= 4) {
                if (z.k(b0Var.e(), b0Var.f()) != 442) {
                    b0Var.X(1);
                } else {
                    b0Var.X(4);
                    long l10 = a0.l(b0Var);
                    if (l10 != -9223372036854775807L) {
                        long b10 = this.f60066a.b(l10);
                        if (b10 > j10) {
                            if (j12 == -9223372036854775807L) {
                                return e.C0071e.d(b10, j11);
                            }
                            return e.C0071e.e(j11 + i11);
                        } else if (100000 + b10 > j10) {
                            return e.C0071e.e(j11 + b0Var.f());
                        } else {
                            i11 = b0Var.f();
                            j12 = b10;
                        }
                    }
                    d(b0Var);
                    i10 = b0Var.f();
                }
            }
            if (j12 != -9223372036854775807L) {
                return e.C0071e.f(j12, j11 + i10);
            }
            return e.C0071e.f1814d;
        }

        private static void d(cn.b0 b0Var) {
            int k10;
            int g10 = b0Var.g();
            if (b0Var.a() < 10) {
                b0Var.W(g10);
                return;
            }
            b0Var.X(9);
            int H = b0Var.H() & 7;
            if (b0Var.a() < H) {
                b0Var.W(g10);
                return;
            }
            b0Var.X(H);
            if (b0Var.a() < 4) {
                b0Var.W(g10);
                return;
            }
            if (z.k(b0Var.e(), b0Var.f()) == 443) {
                b0Var.X(4);
                int P = b0Var.P();
                if (b0Var.a() < P) {
                    b0Var.W(g10);
                    return;
                }
                b0Var.X(P);
            }
            while (b0Var.a() >= 4 && (k10 = z.k(b0Var.e(), b0Var.f())) != 442 && k10 != 441 && (k10 >>> 8) == 1) {
                b0Var.X(4);
                if (b0Var.a() < 2) {
                    b0Var.W(g10);
                    return;
                }
                b0Var.W(Math.min(b0Var.g(), b0Var.f() + b0Var.P()));
            }
        }

        @Override // ao.e.f
        public void a() {
            this.f60067b.T(cn.m0.f3619f);
        }

        @Override // ao.e.f
        public e.C0071e b(ao.q qVar, long j10) throws IOException {
            long position = qVar.getPosition();
            int min = (int) Math.min(20000L, qVar.getLength() - position);
            this.f60067b.S(min);
            qVar.peekFully(this.f60067b.e(), 0, min);
            return c(this.f60067b, j10, position);
        }

        private b(cn.h0 h0Var) {
            this.f60066a = h0Var;
            this.f60067b = new cn.b0();
        }
    }

    public z(cn.h0 h0Var, long j10, long j11) {
        super(new e.b(), new b(h0Var), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }
}

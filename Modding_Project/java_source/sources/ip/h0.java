package ip;

import ao.e;
import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
/* compiled from: TsBinarySearchSeeker.java */
/* loaded from: classes8.dex */
final class h0 extends ao.e {

    /* compiled from: TsBinarySearchSeeker.java */
    /* loaded from: classes8.dex */
    private static final class a implements e.f {

        /* renamed from: a  reason: collision with root package name */
        private final cn.h0 f59736a;

        /* renamed from: b  reason: collision with root package name */
        private final cn.b0 f59737b = new cn.b0();

        /* renamed from: c  reason: collision with root package name */
        private final int f59738c;

        /* renamed from: d  reason: collision with root package name */
        private final int f59739d;

        public a(int i10, cn.h0 h0Var, int i11) {
            this.f59738c = i10;
            this.f59736a = h0Var;
            this.f59739d = i11;
        }

        private e.C0071e c(cn.b0 b0Var, long j10, long j11) {
            int a10;
            int a11;
            int g10 = b0Var.g();
            long j12 = -1;
            long j13 = -1;
            long j14 = -9223372036854775807L;
            while (b0Var.a() >= 188 && (a11 = (a10 = m0.a(b0Var.e(), b0Var.f(), g10)) + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) <= g10) {
                long c10 = m0.c(b0Var, a10, this.f59738c);
                if (c10 != -9223372036854775807L) {
                    long b10 = this.f59736a.b(c10);
                    if (b10 > j10) {
                        if (j14 == -9223372036854775807L) {
                            return e.C0071e.d(b10, j11);
                        }
                        return e.C0071e.e(j11 + j13);
                    } else if (100000 + b10 > j10) {
                        return e.C0071e.e(j11 + a10);
                    } else {
                        j13 = a10;
                        j14 = b10;
                    }
                }
                b0Var.W(a11);
                j12 = a11;
            }
            if (j14 != -9223372036854775807L) {
                return e.C0071e.f(j14, j11 + j12);
            }
            return e.C0071e.f1814d;
        }

        @Override // ao.e.f
        public void a() {
            this.f59737b.T(cn.m0.f3619f);
        }

        @Override // ao.e.f
        public e.C0071e b(ao.q qVar, long j10) throws IOException {
            long position = qVar.getPosition();
            int min = (int) Math.min(this.f59739d, qVar.getLength() - position);
            this.f59737b.S(min);
            qVar.peekFully(this.f59737b.e(), 0, min);
            return c(this.f59737b, j10, position);
        }
    }

    public h0(cn.h0 h0Var, long j10, long j11, int i10, int i11) {
        super(new e.b(), new a(i10, h0Var, i11), j10, 0L, j10 + 1, 0L, j11, 188L, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PARAMS);
    }
}

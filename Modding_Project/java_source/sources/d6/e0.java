package d6;

import b7.o0;
import b7.s0;
import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
import t5.a;
/* compiled from: TsBinarySearchSeeker.java */
/* loaded from: classes4.dex */
final class e0 extends t5.a {

    /* compiled from: TsBinarySearchSeeker.java */
    /* loaded from: classes4.dex */
    private static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final o0 f49878a;

        /* renamed from: b  reason: collision with root package name */
        private final b7.g0 f49879b = new b7.g0();

        /* renamed from: c  reason: collision with root package name */
        private final int f49880c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49881d;

        public a(int i10, o0 o0Var, int i11) {
            this.f49880c = i10;
            this.f49878a = o0Var;
            this.f49881d = i11;
        }

        private a.e c(b7.g0 g0Var, long j10, long j11) {
            int a10;
            int a11;
            int f10 = g0Var.f();
            long j12 = -1;
            long j13 = -1;
            long j14 = -9223372036854775807L;
            while (g0Var.a() >= 188 && (a11 = (a10 = j0.a(g0Var.d(), g0Var.e(), f10)) + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) <= f10) {
                long c10 = j0.c(g0Var, a10, this.f49880c);
                if (c10 != -9223372036854775807L) {
                    long b10 = this.f49878a.b(c10);
                    if (b10 > j10) {
                        if (j14 == -9223372036854775807L) {
                            return a.e.d(b10, j11);
                        }
                        return a.e.e(j11 + j13);
                    } else if (100000 + b10 > j10) {
                        return a.e.e(j11 + a10);
                    } else {
                        j13 = a10;
                        j14 = b10;
                    }
                }
                g0Var.P(a11);
                j12 = a11;
            }
            if (j14 != -9223372036854775807L) {
                return a.e.f(j14, j11 + j12);
            }
            return a.e.f67093d;
        }

        @Override // t5.a.f
        public void a() {
            this.f49879b.M(s0.f2511f);
        }

        @Override // t5.a.f
        public a.e b(t5.l lVar, long j10) throws IOException {
            long position = lVar.getPosition();
            int min = (int) Math.min(this.f49881d, lVar.getLength() - position);
            this.f49879b.L(min);
            lVar.peekFully(this.f49879b.d(), 0, min);
            return c(this.f49879b, j10, position);
        }
    }

    public e0(o0 o0Var, long j10, long j11, int i10, int i11) {
        super(new a.b(), new a(i10, o0Var, i11), j10, 0L, j10 + 1, 0L, j11, 188L, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_PARAMS);
    }
}

package io.bidmachine.media3.exoplayer.hls;

import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import cn.m0;
import en.d;
import en.o;
import io.bidmachine.media3.common.StreamKey;
import io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import io.bidmachine.media3.exoplayer.hls.playlist.c;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.source.t;
import java.io.IOException;
import java.util.List;
import sn.u;
import wn.e;
import yo.r;
import zm.q;
/* loaded from: classes8.dex */
public final class HlsMediaSource extends io.bidmachine.media3.exoplayer.source.a implements HlsPlaylistTracker.c {

    /* renamed from: h  reason: collision with root package name */
    private final mn.e f55970h;

    /* renamed from: i  reason: collision with root package name */
    private final mn.d f55971i;

    /* renamed from: j  reason: collision with root package name */
    private final sn.e f55972j;

    /* renamed from: k  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.drm.i f55973k;

    /* renamed from: l  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f55974l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f55975m;

    /* renamed from: n  reason: collision with root package name */
    private final int f55976n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f55977o;

    /* renamed from: p  reason: collision with root package name */
    private final HlsPlaylistTracker f55978p;

    /* renamed from: q  reason: collision with root package name */
    private final long f55979q;

    /* renamed from: r  reason: collision with root package name */
    private final long f55980r;

    /* renamed from: s  reason: collision with root package name */
    private q.g f55981s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private o f55982t;
    @GuardedBy("this")

    /* renamed from: u  reason: collision with root package name */
    private q f55983u;

    /* loaded from: classes8.dex */
    public static final class Factory implements t {

        /* renamed from: s  reason: collision with root package name */
        public static final /* synthetic */ int f55984s = 0;

        /* renamed from: c  reason: collision with root package name */
        private final mn.d f55985c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private mn.e f55986d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private r.a f55987e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f55988f;

        /* renamed from: g  reason: collision with root package name */
        private int f55989g;

        /* renamed from: h  reason: collision with root package name */
        private nn.e f55990h;

        /* renamed from: i  reason: collision with root package name */
        private HlsPlaylistTracker.a f55991i;

        /* renamed from: j  reason: collision with root package name */
        private sn.e f55992j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private e.a f55993k;

        /* renamed from: l  reason: collision with root package name */
        private ln.k f55994l;

        /* renamed from: m  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.upstream.b f55995m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f55996n;

        /* renamed from: o  reason: collision with root package name */
        private int f55997o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f55998p;

        /* renamed from: q  reason: collision with root package name */
        private long f55999q;

        /* renamed from: r  reason: collision with root package name */
        private long f56000r;

        public Factory(d.a aVar) {
            this(new mn.b(aVar));
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: h */
        public HlsMediaSource d(q qVar) {
            nn.c cVar;
            cn.a.e(qVar.f71992b);
            if (this.f55986d == null) {
                this.f55986d = new mn.c();
            }
            r.a aVar = this.f55987e;
            if (aVar != null) {
                this.f55986d.a(aVar);
            }
            this.f55986d.c(this.f55988f);
            this.f55986d.b(this.f55989g);
            mn.e eVar = this.f55986d;
            nn.e eVar2 = this.f55990h;
            List<StreamKey> list = qVar.f71992b.f72087d;
            if (!list.isEmpty()) {
                cVar = new nn.c(eVar2, list);
            } else {
                cVar = eVar2;
            }
            e.a aVar2 = this.f55993k;
            if (aVar2 != null) {
                aVar2.a(qVar);
            }
            mn.d dVar = this.f55985c;
            sn.e eVar3 = this.f55992j;
            io.bidmachine.media3.exoplayer.drm.i a10 = this.f55994l.a(qVar);
            io.bidmachine.media3.exoplayer.upstream.b bVar = this.f55995m;
            return new HlsMediaSource(qVar, dVar, eVar, eVar3, null, a10, bVar, this.f55991i.a(this.f55985c, bVar, cVar, null), this.f55999q, this.f55996n, this.f55997o, this.f55998p, this.f56000r);
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        @Deprecated
        /* renamed from: i */
        public Factory c(boolean z10) {
            this.f55988f = z10;
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: j */
        public Factory b(int i10) {
            this.f55989g = i10;
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: k */
        public Factory g(e.a aVar) {
            this.f55993k = (e.a) cn.a.e(aVar);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: l */
        public Factory e(ln.k kVar) {
            this.f55994l = (ln.k) cn.a.f(kVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: m */
        public Factory f(io.bidmachine.media3.exoplayer.upstream.b bVar) {
            this.f55995m = (io.bidmachine.media3.exoplayer.upstream.b) cn.a.f(bVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: n */
        public Factory a(r.a aVar) {
            this.f55987e = aVar;
            return this;
        }

        public Factory(mn.d dVar) {
            this.f55985c = (mn.d) cn.a.e(dVar);
            this.f55994l = new io.bidmachine.media3.exoplayer.drm.g();
            this.f55990h = new nn.a();
            this.f55991i = io.bidmachine.media3.exoplayer.hls.playlist.a.f56174p;
            this.f55995m = new io.bidmachine.media3.exoplayer.upstream.a();
            this.f55992j = new sn.f();
            this.f55997o = 1;
            this.f55999q = -9223372036854775807L;
            this.f55996n = true;
            c(true);
        }
    }

    static {
        zm.r.a("media3.exoplayer.hls");
    }

    private u B(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10, long j11, c cVar2) {
        long j12;
        long H;
        boolean z10;
        long a10 = cVar.f56209h - this.f55978p.a();
        if (cVar.f56216o) {
            j12 = a10 + cVar.f56222u;
        } else {
            j12 = -9223372036854775807L;
        }
        long F = F(cVar);
        long j13 = this.f55981s.f72066a;
        if (j13 != -9223372036854775807L) {
            H = m0.S0(j13);
        } else {
            H = H(cVar, F);
        }
        I(cVar, m0.q(H, F, cVar.f56222u + F));
        long G = G(cVar, F);
        if (cVar.f56205d == 2 && cVar.f56207f) {
            z10 = true;
        } else {
            z10 = false;
        }
        return new u(j10, j11, -9223372036854775807L, j12, cVar.f56222u, a10, G, true, !cVar.f56216o, z10, cVar2, a(), this.f55981s);
    }

    private u C(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10, long j11, c cVar2) {
        long j12;
        if (cVar.f56206e != -9223372036854775807L && !cVar.f56219r.isEmpty()) {
            if (!cVar.f56208g) {
                long j13 = cVar.f56206e;
                if (j13 != cVar.f56222u) {
                    j12 = E(cVar.f56219r, j13).f56254e;
                }
            }
            j12 = cVar.f56206e;
        } else {
            j12 = 0;
        }
        long j14 = j12;
        long j15 = cVar.f56222u;
        return new u(j10, j11, -9223372036854775807L, j15, j15, 0L, j14, true, false, true, cVar2, a(), null);
    }

    @Nullable
    private static c.d D(List<c.d> list, long j10) {
        c.d dVar = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c.d dVar2 = list.get(i10);
            long j11 = dVar2.f56254e;
            if (j11 <= j10 && dVar2.f56243l) {
                dVar = dVar2;
            } else if (j11 > j10) {
                break;
            }
        }
        return dVar;
    }

    private static c.f E(List<c.f> list, long j10) {
        return list.get(m0.f(list, Long.valueOf(j10), true, true));
    }

    private long F(io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        if (cVar.f56217p) {
            return m0.S0(m0.h0(this.f55979q)) - cVar.d();
        }
        return 0L;
    }

    private long G(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10) {
        long j11 = cVar.f56206e;
        if (j11 == -9223372036854775807L) {
            j11 = (cVar.f56222u + j10) - m0.S0(this.f55981s.f72066a);
        }
        if (cVar.f56208g) {
            return j11;
        }
        c.d D = D(cVar.f56220s, j11);
        if (D != null) {
            return D.f56254e;
        }
        if (cVar.f56219r.isEmpty()) {
            return 0L;
        }
        c.f E = E(cVar.f56219r, j11);
        c.d D2 = D(E.f56249m, j11);
        if (D2 != null) {
            return D2.f56254e;
        }
        return E.f56254e;
    }

    private static long H(io.bidmachine.media3.exoplayer.hls.playlist.c cVar, long j10) {
        long j11;
        c.h hVar = cVar.f56223v;
        long j12 = cVar.f56206e;
        if (j12 != -9223372036854775807L) {
            j11 = cVar.f56222u - j12;
        } else {
            long j13 = hVar.f56264d;
            if (j13 != -9223372036854775807L && cVar.f56215n != -9223372036854775807L) {
                j11 = j13;
            } else {
                long j14 = hVar.f56263c;
                if (j14 != -9223372036854775807L) {
                    j11 = j14;
                } else {
                    j11 = cVar.f56214m * 3;
                }
            }
        }
        return j11 + j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void I(io.bidmachine.media3.exoplayer.hls.playlist.c r5, long r6) {
        /*
            r4 = this;
            zm.q r0 = r4.a()
            zm.q$g r0 = r0.f71994d
            float r1 = r0.f72069d
            r2 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 != 0) goto L2a
            float r0 = r0.f72070e
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L2a
            io.bidmachine.media3.exoplayer.hls.playlist.c$h r5 = r5.f56223v
            long r0 = r5.f56263c
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L2a
            long r0 = r5.f56264d
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 != 0) goto L2a
            r5 = 1
            goto L2b
        L2a:
            r5 = 0
        L2b:
            zm.q$g$a r0 = new zm.q$g$a
            r0.<init>()
            long r6 = cn.m0.u1(r6)
            zm.q$g$a r6 = r0.k(r6)
            r7 = 1065353216(0x3f800000, float:1.0)
            if (r5 == 0) goto L3e
            r0 = r7
            goto L42
        L3e:
            zm.q$g r0 = r4.f55981s
            float r0 = r0.f72069d
        L42:
            zm.q$g$a r6 = r6.j(r0)
            if (r5 == 0) goto L49
            goto L4d
        L49:
            zm.q$g r5 = r4.f55981s
            float r7 = r5.f72070e
        L4d:
            zm.q$g$a r5 = r6.h(r7)
            zm.q$g r5 = r5.f()
            r4.f55981s = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.hls.HlsMediaSource.I(io.bidmachine.media3.exoplayer.hls.playlist.c, long):void");
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void A() {
        this.f55978p.stop();
        this.f55973k.release();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized q a() {
        return this.f55983u;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized void d(q qVar) {
        this.f55983u = qVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public io.bidmachine.media3.exoplayer.source.q f(r.b bVar, wn.b bVar2, long j10) {
        s.a t10 = t(bVar);
        return new f(this.f55970h, this.f55978p, this.f55971i, this.f55982t, null, this.f55973k, r(bVar), this.f55974l, t10, bVar2, this.f55972j, this.f55975m, this.f55976n, this.f55977o, w(), this.f55980r);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.c
    public void j(io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        long j10;
        long j11;
        u C;
        if (cVar.f56217p) {
            j10 = m0.u1(cVar.f56209h);
        } else {
            j10 = -9223372036854775807L;
        }
        int i10 = cVar.f56205d;
        if (i10 != 2 && i10 != 1) {
            j11 = -9223372036854775807L;
        } else {
            j11 = j10;
        }
        c cVar2 = new c((io.bidmachine.media3.exoplayer.hls.playlist.d) cn.a.e(this.f55978p.k()), cVar);
        if (this.f55978p.n()) {
            C = B(cVar, j11, j10, cVar2);
        } else {
            C = C(cVar, j11, j10, cVar2);
        }
        z(C);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(io.bidmachine.media3.exoplayer.source.q qVar) {
        ((f) qVar).u();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.f55978p.p();
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void y(@Nullable o oVar) {
        this.f55982t = oVar;
        this.f55973k.c((Looper) cn.a.e(Looper.myLooper()), w());
        this.f55973k.prepare();
        this.f55978p.i(((q.h) cn.a.e(a().f71992b)).f72084a, t(null), this);
    }

    private HlsMediaSource(q qVar, mn.d dVar, mn.e eVar, sn.e eVar2, @Nullable wn.e eVar3, io.bidmachine.media3.exoplayer.drm.i iVar, io.bidmachine.media3.exoplayer.upstream.b bVar, HlsPlaylistTracker hlsPlaylistTracker, long j10, boolean z10, int i10, boolean z11, long j11) {
        this.f55983u = qVar;
        this.f55981s = qVar.f71994d;
        this.f55971i = dVar;
        this.f55970h = eVar;
        this.f55972j = eVar2;
        this.f55973k = iVar;
        this.f55974l = bVar;
        this.f55978p = hlsPlaylistTracker;
        this.f55979q = j10;
        this.f55975m = z10;
        this.f55976n = i10;
        this.f55977o = z11;
        this.f55980r = j11;
    }
}

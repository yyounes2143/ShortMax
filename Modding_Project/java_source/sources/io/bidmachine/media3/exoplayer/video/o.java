package io.bidmachine.media3.exoplayer.video;

import cn.g0;
import cn.t;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.video.n;
import zm.i0;
/* compiled from: VideoFrameRenderControl.java */
/* loaded from: classes8.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    private final a f57307a;

    /* renamed from: b  reason: collision with root package name */
    private final n f57308b;

    /* renamed from: k  reason: collision with root package name */
    private long f57317k;

    /* renamed from: c  reason: collision with root package name */
    private final n.a f57309c = new n.a();

    /* renamed from: d  reason: collision with root package name */
    private final g0<i0> f57310d = new g0<>();

    /* renamed from: e  reason: collision with root package name */
    private final g0<Long> f57311e = new g0<>();

    /* renamed from: f  reason: collision with root package name */
    private final t f57312f = new t();

    /* renamed from: g  reason: collision with root package name */
    private long f57313g = -9223372036854775807L;

    /* renamed from: j  reason: collision with root package name */
    private i0 f57316j = i0.f71955e;

    /* renamed from: h  reason: collision with root package name */
    private long f57314h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    private long f57315i = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoFrameRenderControl.java */
    /* loaded from: classes8.dex */
    public interface a {
        void m(i0 i0Var);

        void n(long j10, long j11, boolean z10);

        void o();
    }

    public o(a aVar, n nVar) {
        this.f57307a = aVar;
        this.f57308b = nVar;
    }

    private void a() {
        this.f57312f.f();
        this.f57307a.o();
    }

    private static <T> T c(g0<T> g0Var) {
        boolean z10;
        if (g0Var.l() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        while (g0Var.l() > 1) {
            g0Var.i();
        }
        return (T) cn.a.e(g0Var.i());
    }

    private boolean e(long j10) {
        Long j11 = this.f57311e.j(j10);
        if (j11 != null && j11.longValue() != this.f57317k) {
            this.f57317k = j11.longValue();
            return true;
        }
        return false;
    }

    private boolean f(long j10) {
        i0 j11 = this.f57310d.j(j10);
        if (j11 != null && !j11.equals(i0.f71955e) && !j11.equals(this.f57316j)) {
            this.f57316j = j11;
            return true;
        }
        return false;
    }

    private void k(boolean z10) {
        long g10;
        long f10 = this.f57312f.f();
        if (f(f10)) {
            this.f57307a.m(this.f57316j);
        }
        if (z10) {
            g10 = -1;
        } else {
            g10 = this.f57309c.g();
        }
        this.f57307a.n(g10, f10, this.f57308b.i());
    }

    public void b() {
        this.f57312f.b();
        this.f57313g = -9223372036854775807L;
        this.f57314h = -9223372036854775807L;
        this.f57315i = -9223372036854775807L;
        if (this.f57311e.l() > 0) {
            Long l10 = (Long) c(this.f57311e);
            l10.longValue();
            this.f57311e.a(0L, l10);
        }
        if (this.f57310d.l() > 0) {
            this.f57310d.a(0L, (i0) c(this.f57310d));
        }
    }

    public boolean d() {
        long j10 = this.f57315i;
        if (j10 != -9223372036854775807L && this.f57314h == j10) {
            return true;
        }
        return false;
    }

    public void g(long j10) {
        this.f57312f.a(j10);
        this.f57313g = j10;
        this.f57315i = -9223372036854775807L;
    }

    public void h(long j10) {
        long j11;
        g0<Long> g0Var = this.f57311e;
        long j12 = this.f57313g;
        if (j12 == -9223372036854775807L) {
            j11 = 0;
        } else {
            j11 = j12 + 1;
        }
        g0Var.a(j11, Long.valueOf(j10));
    }

    public void i(int i10, int i11) {
        long j10;
        g0<i0> g0Var = this.f57310d;
        long j11 = this.f57313g;
        if (j11 == -9223372036854775807L) {
            j10 = 0;
        } else {
            j10 = j11 + 1;
        }
        g0Var.a(j10, new i0(i10, i11));
    }

    public void j(long j10, long j11) throws ExoPlaybackException {
        while (!this.f57312f.e()) {
            long d10 = this.f57312f.d();
            if (e(d10)) {
                this.f57308b.j();
            }
            int c10 = this.f57308b.c(d10, j10, j11, this.f57317k, false, false, this.f57309c);
            boolean z10 = true;
            if (c10 != 0 && c10 != 1) {
                if (c10 != 2 && c10 != 3) {
                    if (c10 != 4) {
                        if (c10 == 5) {
                            return;
                        }
                        throw new IllegalStateException(String.valueOf(c10));
                    }
                    this.f57314h = d10;
                } else {
                    this.f57314h = d10;
                    a();
                }
            } else {
                this.f57314h = d10;
                if (c10 != 0) {
                    z10 = false;
                }
                k(z10);
            }
        }
    }

    public void l() {
        this.f57315i = this.f57313g;
    }
}

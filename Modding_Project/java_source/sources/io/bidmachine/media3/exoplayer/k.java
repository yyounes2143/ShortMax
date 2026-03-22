package io.bidmachine.media3.exoplayer;

import androidx.annotation.Nullable;
/* compiled from: DefaultMediaClock.java */
/* loaded from: classes8.dex */
final class k implements gn.e0 {

    /* renamed from: a  reason: collision with root package name */
    private final gn.j0 f56405a;

    /* renamed from: b  reason: collision with root package name */
    private final a f56406b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private h2 f56407c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private gn.e0 f56408d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56409e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56410f;

    /* compiled from: DefaultMediaClock.java */
    /* loaded from: classes8.dex */
    public interface a {
        void t(zm.v vVar);
    }

    public k(a aVar, cn.h hVar) {
        this.f56406b = aVar;
        this.f56405a = new gn.j0(hVar);
    }

    private boolean e(boolean z10) {
        h2 h2Var = this.f56407c;
        if (h2Var != null && !h2Var.isEnded() && ((!z10 || this.f56407c.getState() == 2) && (this.f56407c.isReady() || (!z10 && !this.f56407c.hasReadStreamToEnd())))) {
            return false;
        }
        return true;
    }

    private void i(boolean z10) {
        if (e(z10)) {
            this.f56409e = true;
            if (this.f56410f) {
                this.f56405a.c();
                return;
            }
            return;
        }
        gn.e0 e0Var = (gn.e0) cn.a.e(this.f56408d);
        long positionUs = e0Var.getPositionUs();
        if (this.f56409e) {
            if (positionUs < this.f56405a.getPositionUs()) {
                this.f56405a.d();
                return;
            }
            this.f56409e = false;
            if (this.f56410f) {
                this.f56405a.c();
            }
        }
        this.f56405a.a(positionUs);
        zm.v playbackParameters = e0Var.getPlaybackParameters();
        if (!playbackParameters.equals(this.f56405a.getPlaybackParameters())) {
            this.f56405a.b(playbackParameters);
            this.f56406b.t(playbackParameters);
        }
    }

    public void a(h2 h2Var) {
        if (h2Var == this.f56407c) {
            this.f56408d = null;
            this.f56407c = null;
            this.f56409e = true;
        }
    }

    @Override // gn.e0
    public void b(zm.v vVar) {
        gn.e0 e0Var = this.f56408d;
        if (e0Var != null) {
            e0Var.b(vVar);
            vVar = this.f56408d.getPlaybackParameters();
        }
        this.f56405a.b(vVar);
    }

    public void c(h2 h2Var) throws ExoPlaybackException {
        gn.e0 e0Var;
        gn.e0 mediaClock = h2Var.getMediaClock();
        if (mediaClock != null && mediaClock != (e0Var = this.f56408d)) {
            if (e0Var == null) {
                this.f56408d = mediaClock;
                this.f56407c = h2Var;
                mediaClock.b(this.f56405a.getPlaybackParameters());
                return;
            }
            throw ExoPlaybackException.f(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
    }

    public void d(long j10) {
        this.f56405a.a(j10);
    }

    public void f() {
        this.f56410f = true;
        this.f56405a.c();
    }

    public void g() {
        this.f56410f = false;
        this.f56405a.d();
    }

    @Override // gn.e0
    public zm.v getPlaybackParameters() {
        gn.e0 e0Var = this.f56408d;
        if (e0Var != null) {
            return e0Var.getPlaybackParameters();
        }
        return this.f56405a.getPlaybackParameters();
    }

    @Override // gn.e0
    public long getPositionUs() {
        if (this.f56409e) {
            return this.f56405a.getPositionUs();
        }
        return ((gn.e0) cn.a.e(this.f56408d)).getPositionUs();
    }

    public long h(boolean z10) {
        i(z10);
        return getPositionUs();
    }

    @Override // gn.e0
    public boolean n() {
        if (this.f56409e) {
            return this.f56405a.n();
        }
        return ((gn.e0) cn.a.e(this.f56408d)).n();
    }
}

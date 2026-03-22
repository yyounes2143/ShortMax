package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
/* compiled from: DefaultMediaClock.java */
/* loaded from: classes4.dex */
final class i implements b7.s {

    /* renamed from: a  reason: collision with root package name */
    private final b7.k0 f17705a;

    /* renamed from: b  reason: collision with root package name */
    private final a f17706b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private p1 f17707c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b7.s f17708d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f17709e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f17710f;

    /* compiled from: DefaultMediaClock.java */
    /* loaded from: classes4.dex */
    public interface a {
        void s(k1 k1Var);
    }

    public i(a aVar, b7.d dVar) {
        this.f17706b = aVar;
        this.f17705a = new b7.k0(dVar);
    }

    private boolean e(boolean z10) {
        p1 p1Var = this.f17707c;
        if (p1Var != null && !p1Var.isEnded() && (this.f17707c.isReady() || (!z10 && !this.f17707c.hasReadStreamToEnd()))) {
            return false;
        }
        return true;
    }

    private void i(boolean z10) {
        if (e(z10)) {
            this.f17709e = true;
            if (this.f17710f) {
                this.f17705a.c();
                return;
            }
            return;
        }
        b7.s sVar = (b7.s) b7.a.e(this.f17708d);
        long positionUs = sVar.getPositionUs();
        if (this.f17709e) {
            if (positionUs < this.f17705a.getPositionUs()) {
                this.f17705a.d();
                return;
            }
            this.f17709e = false;
            if (this.f17710f) {
                this.f17705a.c();
            }
        }
        this.f17705a.a(positionUs);
        k1 playbackParameters = sVar.getPlaybackParameters();
        if (!playbackParameters.equals(this.f17705a.getPlaybackParameters())) {
            this.f17705a.b(playbackParameters);
            this.f17706b.s(playbackParameters);
        }
    }

    public void a(p1 p1Var) {
        if (p1Var == this.f17707c) {
            this.f17708d = null;
            this.f17707c = null;
            this.f17709e = true;
        }
    }

    @Override // b7.s
    public void b(k1 k1Var) {
        b7.s sVar = this.f17708d;
        if (sVar != null) {
            sVar.b(k1Var);
            k1Var = this.f17708d.getPlaybackParameters();
        }
        this.f17705a.b(k1Var);
    }

    public void c(p1 p1Var) throws ExoPlaybackException {
        b7.s sVar;
        b7.s mediaClock = p1Var.getMediaClock();
        if (mediaClock != null && mediaClock != (sVar = this.f17708d)) {
            if (sVar == null) {
                this.f17708d = mediaClock;
                this.f17707c = p1Var;
                mediaClock.b(this.f17705a.getPlaybackParameters());
                return;
            }
            throw ExoPlaybackException.k(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public void d(long j10) {
        this.f17705a.a(j10);
    }

    public void f() {
        this.f17710f = true;
        this.f17705a.c();
    }

    public void g() {
        this.f17710f = false;
        this.f17705a.d();
    }

    @Override // b7.s
    public k1 getPlaybackParameters() {
        b7.s sVar = this.f17708d;
        if (sVar != null) {
            return sVar.getPlaybackParameters();
        }
        return this.f17705a.getPlaybackParameters();
    }

    @Override // b7.s
    public long getPositionUs() {
        if (this.f17709e) {
            return this.f17705a.getPositionUs();
        }
        return ((b7.s) b7.a.e(this.f17708d)).getPositionUs();
    }

    public long h(boolean z10) {
        i(z10);
        return getPositionUs();
    }
}

package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.io.IOException;
import p5.t3;
/* compiled from: BaseRenderer.java */
/* loaded from: classes4.dex */
public abstract class f implements p1, o5.o0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f17636a;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private o5.p0 f17638c;

    /* renamed from: d  reason: collision with root package name */
    private int f17639d;

    /* renamed from: e  reason: collision with root package name */
    private t3 f17640e;

    /* renamed from: f  reason: collision with root package name */
    private int f17641f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private n6.q f17642g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private v0[] f17643h;

    /* renamed from: i  reason: collision with root package name */
    private long f17644i;

    /* renamed from: j  reason: collision with root package name */
    private long f17645j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f17647l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f17648m;

    /* renamed from: b  reason: collision with root package name */
    private final o5.b0 f17637b = new o5.b0();

    /* renamed from: k  reason: collision with root package name */
    private long f17646k = Long.MIN_VALUE;

    public f(int i10) {
        this.f17636a = i10;
    }

    private void F(long j10, boolean z10) throws ExoPlaybackException {
        this.f17647l = false;
        this.f17645j = j10;
        this.f17646k = j10;
        z(j10, z10);
    }

    protected abstract void D(v0[] v0VarArr, long j10, long j11) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final int E(o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        int a10 = ((n6.q) b7.a.e(this.f17642g)).a(b0Var, decoderInputBuffer, i10);
        if (a10 == -4) {
            if (decoderInputBuffer.h()) {
                this.f17646k = Long.MIN_VALUE;
                if (this.f17647l) {
                    return -4;
                }
                return -3;
            }
            long j10 = decoderInputBuffer.f17475e + this.f17644i;
            decoderInputBuffer.f17475e = j10;
            this.f17646k = Math.max(this.f17646k, j10);
        } else if (a10 == -5) {
            v0 v0Var = (v0) b7.a.e(b0Var.f63093b);
            if (v0Var.f19161p != Long.MAX_VALUE) {
                b0Var.f63093b = v0Var.b().i0(v0Var.f19161p + this.f17644i).E();
            }
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int G(long j10) {
        return ((n6.q) b7.a.e(this.f17642g)).skipData(j10 - this.f17644i);
    }

    @Override // com.google.android.exoplayer2.p1
    public final void disable() {
        boolean z10 = true;
        if (this.f17641f != 1) {
            z10 = false;
        }
        b7.a.g(z10);
        this.f17637b.a();
        this.f17641f = 0;
        this.f17642g = null;
        this.f17643h = null;
        this.f17647l = false;
        x();
    }

    @Override // com.google.android.exoplayer2.p1
    public final long e() {
        return this.f17646k;
    }

    @Override // com.google.android.exoplayer2.p1
    @Nullable
    public b7.s getMediaClock() {
        return null;
    }

    @Override // com.google.android.exoplayer2.p1
    public final int getState() {
        return this.f17641f;
    }

    @Override // com.google.android.exoplayer2.p1
    @Nullable
    public final n6.q getStream() {
        return this.f17642g;
    }

    @Override // com.google.android.exoplayer2.p1, o5.o0
    public final int getTrackType() {
        return this.f17636a;
    }

    @Override // com.google.android.exoplayer2.p1
    public final boolean hasReadStreamToEnd() {
        if (this.f17646k == Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.p1
    public final boolean isCurrentStreamFinal() {
        return this.f17647l;
    }

    @Override // com.google.android.exoplayer2.p1
    public final void m(o5.p0 p0Var, v0[] v0VarArr, n6.q qVar, long j10, boolean z10, boolean z11, long j11, long j12) throws ExoPlaybackException {
        boolean z12;
        if (this.f17641f == 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        b7.a.g(z12);
        this.f17638c = p0Var;
        this.f17641f = 1;
        y(z10, z11);
        n(v0VarArr, qVar, j11, j12);
        F(j10, z10);
    }

    @Override // com.google.android.exoplayer2.p1
    public final void maybeThrowStreamError() throws IOException {
        ((n6.q) b7.a.e(this.f17642g)).maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.p1
    public final void n(v0[] v0VarArr, n6.q qVar, long j10, long j11) throws ExoPlaybackException {
        b7.a.g(!this.f17647l);
        this.f17642g = qVar;
        if (this.f17646k == Long.MIN_VALUE) {
            this.f17646k = j10;
        }
        this.f17643h = v0VarArr;
        this.f17644i = j11;
        D(v0VarArr, j10, j11);
    }

    @Override // com.google.android.exoplayer2.p1
    public final void o(int i10, t3 t3Var) {
        this.f17639d = i10;
        this.f17640e = t3Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException p(Throwable th2, @Nullable v0 v0Var, int i10) {
        return q(th2, v0Var, false, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException q(Throwable th2, @Nullable v0 v0Var, boolean z10, int i10) {
        int i11;
        if (v0Var != null && !this.f17648m) {
            this.f17648m = true;
            try {
                i11 = o5.o0.f(a(v0Var));
            } catch (ExoPlaybackException unused) {
            } finally {
                this.f17648m = false;
            }
            return ExoPlaybackException.i(th2, getName(), t(), v0Var, i11, z10, i10);
        }
        i11 = 4;
        return ExoPlaybackException.i(th2, getName(), t(), v0Var, i11, z10, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final o5.p0 r() {
        return (o5.p0) b7.a.e(this.f17638c);
    }

    @Override // com.google.android.exoplayer2.p1
    public final void reset() {
        boolean z10;
        if (this.f17641f == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f17637b.a();
        A();
    }

    @Override // com.google.android.exoplayer2.p1
    public final void resetPosition(long j10) throws ExoPlaybackException {
        F(j10, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final o5.b0 s() {
        this.f17637b.a();
        return this.f17637b;
    }

    @Override // com.google.android.exoplayer2.p1
    public final void setCurrentStreamFinal() {
        this.f17647l = true;
    }

    @Override // com.google.android.exoplayer2.p1
    public final void start() throws ExoPlaybackException {
        boolean z10 = true;
        if (this.f17641f != 1) {
            z10 = false;
        }
        b7.a.g(z10);
        this.f17641f = 2;
        B();
    }

    @Override // com.google.android.exoplayer2.p1
    public final void stop() {
        boolean z10;
        if (this.f17641f == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f17641f = 1;
        C();
    }

    @Override // o5.o0
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    protected final int t() {
        return this.f17639d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final t3 u() {
        return (t3) b7.a.e(this.f17640e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final v0[] v() {
        return (v0[]) b7.a.e(this.f17643h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean w() {
        if (hasReadStreamToEnd()) {
            return this.f17647l;
        }
        return ((n6.q) b7.a.e(this.f17642g)).isReady();
    }

    protected abstract void x();

    protected abstract void z(long j10, boolean z10) throws ExoPlaybackException;

    protected void A() {
    }

    protected void B() throws ExoPlaybackException {
    }

    protected void C() {
    }

    @Override // com.google.android.exoplayer2.p1
    public final o5.o0 getCapabilities() {
        return this;
    }

    @Override // com.google.android.exoplayer2.m1.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
    }

    protected void y(boolean z10, boolean z11) throws ExoPlaybackException {
    }
}

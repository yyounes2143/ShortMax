package io.bidmachine.media3.exoplayer;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
import java.util.Objects;
/* compiled from: BaseRenderer.java */
/* loaded from: classes8.dex */
public abstract class h implements h2, i2 {

    /* renamed from: b  reason: collision with root package name */
    private final int f55949b;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private gn.g0 f55951d;

    /* renamed from: e  reason: collision with root package name */
    private int f55952e;

    /* renamed from: f  reason: collision with root package name */
    private hn.b2 f55953f;

    /* renamed from: g  reason: collision with root package name */
    private cn.h f55954g;

    /* renamed from: h  reason: collision with root package name */
    private int f55955h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private sn.s f55956i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private io.bidmachine.media3.common.a[] f55957j;

    /* renamed from: k  reason: collision with root package name */
    private long f55958k;

    /* renamed from: l  reason: collision with root package name */
    private long f55959l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f55961n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f55962o;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: q  reason: collision with root package name */
    private i2.a f55964q;

    /* renamed from: a  reason: collision with root package name */
    private final Object f55948a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final gn.c0 f55950c = new gn.c0();

    /* renamed from: m  reason: collision with root package name */
    private long f55960m = Long.MIN_VALUE;

    /* renamed from: p  reason: collision with root package name */
    private zm.a0 f55963p = zm.a0.f71731a;

    public h(int i10) {
        this.f55949b = i10;
    }

    private void Z(long j10, boolean z10) throws ExoPlaybackException {
        this.f55961n = false;
        this.f55959l = j10;
        this.f55960m = j10;
        Q(j10, z10);
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void A(int i10, hn.b2 b2Var, cn.h hVar) {
        this.f55952e = i10;
        this.f55953f = b2Var;
        this.f55954g = hVar;
        P();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException B(Throwable th2, @Nullable io.bidmachine.media3.common.a aVar, int i10) {
        return C(th2, aVar, false, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ExoPlaybackException C(Throwable th2, @Nullable io.bidmachine.media3.common.a aVar, boolean z10, int i10) {
        int i11;
        if (aVar != null && !this.f55962o) {
            this.f55962o = true;
            try {
                i11 = i2.f(a(aVar));
            } catch (ExoPlaybackException unused) {
            } finally {
                this.f55962o = false;
            }
            return ExoPlaybackException.d(th2, getName(), G(), aVar, i11, z10, i10);
        }
        i11 = 4;
        return ExoPlaybackException.d(th2, getName(), G(), aVar, i11, z10, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final cn.h D() {
        return (cn.h) cn.a.e(this.f55954g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final gn.g0 E() {
        return (gn.g0) cn.a.e(this.f55951d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final gn.c0 F() {
        this.f55950c.a();
        return this.f55950c;
    }

    protected final int G() {
        return this.f55952e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long H() {
        return this.f55959l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final hn.b2 I() {
        return (hn.b2) cn.a.e(this.f55953f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final io.bidmachine.media3.common.a[] J() {
        return (io.bidmachine.media3.common.a[]) cn.a.e(this.f55957j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long K() {
        return this.f55958k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zm.a0 L() {
        return this.f55963p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean M() {
        if (hasReadStreamToEnd()) {
            return this.f55961n;
        }
        return ((sn.s) cn.a.e(this.f55956i)).isReady();
    }

    protected abstract void N();

    protected abstract void Q(long j10, boolean z10) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void S() {
        i2.a aVar;
        synchronized (this.f55948a) {
            aVar = this.f55964q;
        }
        if (aVar != null) {
            aVar.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int Y(gn.c0 c0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        int c10 = ((sn.s) cn.a.e(this.f55956i)).c(c0Var, decoderInputBuffer, i10);
        if (c10 == -4) {
            if (decoderInputBuffer.f()) {
                this.f55960m = Long.MIN_VALUE;
                if (this.f55961n) {
                    return -4;
                }
                return -3;
            }
            long j10 = decoderInputBuffer.f55347f + this.f55958k;
            decoderInputBuffer.f55347f = j10;
            this.f55960m = Math.max(this.f55960m, j10);
        } else if (c10 == -5) {
            io.bidmachine.media3.common.a aVar = (io.bidmachine.media3.common.a) cn.a.e(c0Var.f52440b);
            if (aVar.f55179t != Long.MAX_VALUE) {
                c0Var.f52440b = aVar.b().y0(aVar.f55179t + this.f55958k).N();
            }
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a0(long j10) {
        return ((sn.s) cn.a.e(this.f55956i)).skipData(j10 - this.f55958k);
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void disable() {
        boolean z10 = true;
        if (this.f55955h != 1) {
            z10 = false;
        }
        cn.a.g(z10);
        this.f55950c.a();
        this.f55955h = 0;
        this.f55956i = null;
        this.f55957j = null;
        this.f55961n = false;
        N();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final long e() {
        return this.f55960m;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    @Nullable
    public gn.e0 getMediaClock() {
        return null;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final int getState() {
        return this.f55955h;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    @Nullable
    public final sn.s getStream() {
        return this.f55956i;
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public final int getTrackType() {
        return this.f55949b;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final boolean hasReadStreamToEnd() {
        if (this.f55960m == Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final boolean isCurrentStreamFinal() {
        return this.f55961n;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void maybeThrowStreamError() throws IOException {
        ((sn.s) cn.a.e(this.f55956i)).maybeThrowError();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void r(zm.a0 a0Var) {
        if (!Objects.equals(this.f55963p, a0Var)) {
            this.f55963p = a0Var;
            X(a0Var);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void release() {
        boolean z10;
        if (this.f55955h == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        R();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void reset() {
        boolean z10;
        if (this.f55955h == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f55950c.a();
        T();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void resetPosition(long j10) throws ExoPlaybackException {
        Z(j10, false);
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void setCurrentStreamFinal() {
        this.f55961n = true;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void start() throws ExoPlaybackException {
        boolean z10 = true;
        if (this.f55955h != 1) {
            z10 = false;
        }
        cn.a.g(z10);
        this.f55955h = 2;
        U();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void stop() {
        boolean z10;
        if (this.f55955h == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        this.f55955h = 1;
        V();
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void t(io.bidmachine.media3.common.a[] aVarArr, sn.s sVar, long j10, long j11, r.b bVar) throws ExoPlaybackException {
        cn.a.g(!this.f55961n);
        this.f55956i = sVar;
        if (this.f55960m == Long.MIN_VALUE) {
            this.f55960m = j10;
        }
        this.f55957j = aVarArr;
        this.f55958k = j11;
        W(aVarArr, j10, j11, bVar);
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public final void u(i2.a aVar) {
        synchronized (this.f55948a) {
            this.f55964q = aVar;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public final void v() {
        synchronized (this.f55948a) {
            this.f55964q = null;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final void w(gn.g0 g0Var, io.bidmachine.media3.common.a[] aVarArr, sn.s sVar, long j10, boolean z10, boolean z11, long j11, long j12, r.b bVar) throws ExoPlaybackException {
        boolean z12;
        if (this.f55955h == 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        cn.a.g(z12);
        this.f55951d = g0Var;
        this.f55955h = 1;
        O(z10, z11);
        t(aVarArr, sVar, j11, j12, bVar);
        Z(j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void P() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void R() {
    }

    protected void T() {
    }

    protected void U() throws ExoPlaybackException {
    }

    protected void V() {
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public final i2 getCapabilities() {
        return this;
    }

    protected void X(zm.a0 a0Var) {
    }

    protected void O(boolean z10, boolean z11) throws ExoPlaybackException {
    }

    @Override // io.bidmachine.media3.exoplayer.f2.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W(io.bidmachine.media3.common.a[] aVarArr, long j10, long j11, r.b bVar) throws ExoPlaybackException {
    }
}

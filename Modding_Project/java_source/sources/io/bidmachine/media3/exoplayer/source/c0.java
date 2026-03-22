package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import cn.m0;
import en.d;
import hn.b2;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.source.b0;
import io.bidmachine.media3.exoplayer.source.c0;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.source.w;
import zm.a0;
import zm.q;
/* compiled from: ProgressiveMediaSource.java */
/* loaded from: classes8.dex */
public final class c0 extends io.bidmachine.media3.exoplayer.source.a implements b0.c {

    /* renamed from: h  reason: collision with root package name */
    private final d.a f56802h;

    /* renamed from: i  reason: collision with root package name */
    private final w.a f56803i;

    /* renamed from: j  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.drm.i f56804j;

    /* renamed from: k  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56805k;

    /* renamed from: l  reason: collision with root package name */
    private final int f56806l;

    /* renamed from: m  reason: collision with root package name */
    private final int f56807m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final io.bidmachine.media3.common.a f56808n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final h7.n<xn.a> f56809o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f56810p;

    /* renamed from: q  reason: collision with root package name */
    private long f56811q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f56812r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f56813s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private en.o f56814t;
    @GuardedBy("this")

    /* renamed from: u  reason: collision with root package name */
    private zm.q f56815u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaSource.java */
    /* loaded from: classes8.dex */
    public class a extends m {
        a(zm.a0 a0Var) {
            super(a0Var);
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            super.g(i10, bVar, z10);
            bVar.f71745f = true;
            return bVar;
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.c o(int i10, a0.c cVar, long j10) {
            super.o(i10, cVar, j10);
            cVar.f71767k = true;
            return cVar;
        }
    }

    /* compiled from: ProgressiveMediaSource.java */
    /* loaded from: classes8.dex */
    public static final class b implements t {

        /* renamed from: c  reason: collision with root package name */
        private final d.a f56817c;

        /* renamed from: d  reason: collision with root package name */
        private w.a f56818d;

        /* renamed from: e  reason: collision with root package name */
        private ln.k f56819e;

        /* renamed from: f  reason: collision with root package name */
        private io.bidmachine.media3.exoplayer.upstream.b f56820f;

        /* renamed from: g  reason: collision with root package name */
        private int f56821g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private h7.n<xn.a> f56822h;

        /* renamed from: i  reason: collision with root package name */
        private int f56823i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private io.bidmachine.media3.common.a f56824j;

        public b(d.a aVar, final ao.u uVar) {
            this(aVar, new w.a() { // from class: sn.r
                @Override // io.bidmachine.media3.exoplayer.source.w.a
                public final io.bidmachine.media3.exoplayer.source.w a(b2 b2Var) {
                    io.bidmachine.media3.exoplayer.source.w k10;
                    k10 = c0.b.k(ao.u.this, b2Var);
                    return k10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ w k(ao.u uVar, b2 b2Var) {
            return new sn.b(uVar);
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: i */
        public c0 d(zm.q qVar) {
            cn.a.e(qVar.f71992b);
            return new c0(qVar, this.f56817c, this.f56818d, this.f56819e.a(qVar), this.f56820f, this.f56821g, this.f56823i, this.f56824j, this.f56822h, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b j(int i10, io.bidmachine.media3.common.a aVar) {
            this.f56823i = i10;
            this.f56824j = (io.bidmachine.media3.common.a) cn.a.e(aVar);
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: l */
        public b e(ln.k kVar) {
            this.f56819e = (ln.k) cn.a.f(kVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // io.bidmachine.media3.exoplayer.source.r.a
        /* renamed from: m */
        public b f(io.bidmachine.media3.exoplayer.upstream.b bVar) {
            this.f56820f = (io.bidmachine.media3.exoplayer.upstream.b) cn.a.f(bVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public b(d.a aVar, w.a aVar2) {
            this(aVar, aVar2, new io.bidmachine.media3.exoplayer.drm.g(), new io.bidmachine.media3.exoplayer.upstream.a(), 1048576);
        }

        public b(d.a aVar, w.a aVar2, ln.k kVar, io.bidmachine.media3.exoplayer.upstream.b bVar, int i10) {
            this.f56817c = aVar;
            this.f56818d = aVar2;
            this.f56819e = kVar;
            this.f56820f = bVar;
            this.f56821g = i10;
        }
    }

    /* synthetic */ c0(zm.q qVar, d.a aVar, w.a aVar2, io.bidmachine.media3.exoplayer.drm.i iVar, io.bidmachine.media3.exoplayer.upstream.b bVar, int i10, int i11, io.bidmachine.media3.common.a aVar3, h7.n nVar, a aVar4) {
        this(qVar, aVar, aVar2, iVar, bVar, i10, i11, aVar3, nVar);
    }

    private q.h B() {
        return (q.h) cn.a.e(a().f71992b);
    }

    private void C() {
        zm.a0 uVar = new sn.u(this.f56811q, this.f56812r, false, this.f56813s, null, a());
        if (this.f56810p) {
            uVar = new a(uVar);
        }
        z(uVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void A() {
        this.f56804j.release();
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized zm.q a() {
        return this.f56815u;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public synchronized void d(zm.q qVar) {
        this.f56815u = qVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public q f(r.b bVar, wn.b bVar2, long j10) {
        xn.a aVar;
        en.d createDataSource = this.f56802h.createDataSource();
        en.o oVar = this.f56814t;
        if (oVar != null) {
            createDataSource.c(oVar);
        }
        q.h B = B();
        Uri uri = B.f72084a;
        w a10 = this.f56803i.a(w());
        io.bidmachine.media3.exoplayer.drm.i iVar = this.f56804j;
        h.a r10 = r(bVar);
        io.bidmachine.media3.exoplayer.upstream.b bVar3 = this.f56805k;
        s.a t10 = t(bVar);
        String str = B.f72088e;
        int i10 = this.f56806l;
        int i11 = this.f56807m;
        io.bidmachine.media3.common.a aVar2 = this.f56808n;
        long S0 = m0.S0(B.f72092i);
        h7.n<xn.a> nVar = this.f56809o;
        if (nVar != null) {
            aVar = nVar.get();
        } else {
            aVar = null;
        }
        return new b0(uri, createDataSource, a10, iVar, r10, bVar3, t10, this, bVar2, str, i10, i11, aVar2, S0, aVar);
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void m(q qVar) {
        ((b0) qVar).W();
    }

    @Override // io.bidmachine.media3.exoplayer.source.b0.c
    public void o(long j10, ao.j0 j0Var, boolean z10) {
        if (j10 == -9223372036854775807L) {
            j10 = this.f56811q;
        }
        boolean isSeekable = j0Var.isSeekable();
        if (!this.f56810p && this.f56811q == j10 && this.f56812r == isSeekable && this.f56813s == z10) {
            return;
        }
        this.f56811q = j10;
        this.f56812r = isSeekable;
        this.f56813s = z10;
        this.f56810p = false;
        C();
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    protected void y(@Nullable en.o oVar) {
        this.f56814t = oVar;
        this.f56804j.c((Looper) cn.a.e(Looper.myLooper()), w());
        this.f56804j.prepare();
        C();
    }

    private c0(zm.q qVar, d.a aVar, w.a aVar2, io.bidmachine.media3.exoplayer.drm.i iVar, io.bidmachine.media3.exoplayer.upstream.b bVar, int i10, int i11, @Nullable io.bidmachine.media3.common.a aVar3, @Nullable h7.n<xn.a> nVar) {
        this.f56815u = qVar;
        this.f56802h = aVar;
        this.f56803i = aVar2;
        this.f56804j = iVar;
        this.f56805k = bVar;
        this.f56806l = i10;
        this.f56808n = aVar3;
        this.f56807m = i11;
        this.f56810p = true;
        this.f56811q = -9223372036854775807L;
        this.f56809o = nVar;
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
    }
}

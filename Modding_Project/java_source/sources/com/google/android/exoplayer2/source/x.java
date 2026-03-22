package com.google.android.exoplayer2.source;

import a7.h;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.w;
import com.google.android.exoplayer2.source.x;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.y0;
import p5.t3;
/* compiled from: ProgressiveMediaSource.java */
/* loaded from: classes4.dex */
public final class x extends com.google.android.exoplayer2.source.a implements w.b {

    /* renamed from: h  reason: collision with root package name */
    private final y0 f18440h;

    /* renamed from: i  reason: collision with root package name */
    private final y0.h f18441i;

    /* renamed from: j  reason: collision with root package name */
    private final h.a f18442j;

    /* renamed from: k  reason: collision with root package name */
    private final r.a f18443k;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.i f18444l;

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f18445m;

    /* renamed from: n  reason: collision with root package name */
    private final int f18446n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f18447o;

    /* renamed from: p  reason: collision with root package name */
    private long f18448p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f18449q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f18450r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private a7.y f18451s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressiveMediaSource.java */
    /* loaded from: classes4.dex */
    public class a extends j {
        a(x xVar, u1 u1Var) {
            super(u1Var);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.b k(int i10, u1.b bVar, boolean z10) {
            super.k(i10, bVar, z10);
            bVar.f18540f = true;
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.u1
        public u1.d s(int i10, u1.d dVar, long j10) {
            super.s(i10, dVar, j10);
            dVar.f18561l = true;
            return dVar;
        }
    }

    /* compiled from: ProgressiveMediaSource.java */
    /* loaded from: classes4.dex */
    public static final class b implements o.a {

        /* renamed from: a  reason: collision with root package name */
        private final h.a f18452a;

        /* renamed from: b  reason: collision with root package name */
        private r.a f18453b;

        /* renamed from: c  reason: collision with root package name */
        private s5.k f18454c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.b f18455d;

        /* renamed from: e  reason: collision with root package name */
        private int f18456e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f18457f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Object f18458g;

        public b(h.a aVar, final t5.p pVar) {
            this(aVar, new r.a() { // from class: n6.p
                @Override // com.google.android.exoplayer2.source.r.a
                public final com.google.android.exoplayer2.source.r a(t3 t3Var) {
                    com.google.android.exoplayer2.source.r f10;
                    f10 = x.b.f(t5.p.this, t3Var);
                    return f10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ r f(t5.p pVar, t3 t3Var) {
            return new n6.a(pVar);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* renamed from: e */
        public x c(y0 y0Var) {
            boolean z10;
            b7.a.e(y0Var.f19334b);
            y0.h hVar = y0Var.f19334b;
            boolean z11 = false;
            if (hVar.f19404h == null && this.f18458g != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (hVar.f19401e == null && this.f18457f != null) {
                z11 = true;
            }
            if (z10 && z11) {
                y0Var = y0Var.b().f(this.f18458g).b(this.f18457f).a();
            } else if (z10) {
                y0Var = y0Var.b().f(this.f18458g).a();
            } else if (z11) {
                y0Var = y0Var.b().b(this.f18457f).a();
            }
            y0 y0Var2 = y0Var;
            return new x(y0Var2, this.f18452a, this.f18453b, this.f18454c.a(y0Var2), this.f18455d, this.f18456e, null);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* renamed from: g */
        public b a(s5.k kVar) {
            this.f18454c = (s5.k) b7.a.f(kVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* renamed from: h */
        public b b(com.google.android.exoplayer2.upstream.b bVar) {
            this.f18455d = (com.google.android.exoplayer2.upstream.b) b7.a.f(bVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public b(h.a aVar, r.a aVar2) {
            this(aVar, aVar2, new com.google.android.exoplayer2.drm.g(), new com.google.android.exoplayer2.upstream.a(), 1048576);
        }

        public b(h.a aVar, r.a aVar2, s5.k kVar, com.google.android.exoplayer2.upstream.b bVar, int i10) {
            this.f18452a = aVar;
            this.f18453b = aVar2;
            this.f18454c = kVar;
            this.f18455d = bVar;
            this.f18456e = i10;
        }
    }

    /* synthetic */ x(y0 y0Var, h.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.i iVar, com.google.android.exoplayer2.upstream.b bVar, int i10, a aVar3) {
        this(y0Var, aVar, aVar2, iVar, bVar, i10);
    }

    private void z() {
        u1 sVar = new n6.s(this.f18448p, this.f18449q, false, this.f18450r, null, this.f18440h);
        if (this.f18447o) {
            sVar = new a(this, sVar);
        }
        x(sVar);
    }

    @Override // com.google.android.exoplayer2.source.o
    public y0 a() {
        return this.f18440h;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n f(o.b bVar, a7.b bVar2, long j10) {
        a7.h createDataSource = this.f18442j.createDataSource();
        a7.y yVar = this.f18451s;
        if (yVar != null) {
            createDataSource.c(yVar);
        }
        return new w(this.f18441i.f19397a, createDataSource, this.f18443k.a(u()), this.f18444l, p(bVar), this.f18445m, r(bVar), this, bVar2, this.f18441i.f19401e, this.f18446n);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void i(n nVar) {
        ((w) nVar).S();
    }

    @Override // com.google.android.exoplayer2.source.w.b
    public void l(long j10, boolean z10, boolean z11) {
        if (j10 == -9223372036854775807L) {
            j10 = this.f18448p;
        }
        if (!this.f18447o && this.f18448p == j10 && this.f18449q == z10 && this.f18450r == z11) {
            return;
        }
        this.f18448p = j10;
        this.f18449q = z10;
        this.f18450r = z11;
        this.f18447o = false;
        z();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void w(@Nullable a7.y yVar) {
        this.f18451s = yVar;
        this.f18444l.prepare();
        this.f18444l.a((Looper) b7.a.e(Looper.myLooper()), u());
        z();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void y() {
        this.f18444l.release();
    }

    private x(y0 y0Var, h.a aVar, r.a aVar2, com.google.android.exoplayer2.drm.i iVar, com.google.android.exoplayer2.upstream.b bVar, int i10) {
        this.f18441i = (y0.h) b7.a.e(y0Var.f19334b);
        this.f18440h = y0Var;
        this.f18442j = aVar;
        this.f18443k = aVar2;
        this.f18444l = iVar;
        this.f18445m = bVar;
        this.f18446n = i10;
        this.f18447o = true;
        this.f18448p = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }
}

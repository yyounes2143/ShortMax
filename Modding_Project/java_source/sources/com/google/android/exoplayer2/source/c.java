package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.drm.h;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.u1;
import java.io.IOException;
import java.util.HashMap;
/* compiled from: CompositeMediaSource.java */
/* loaded from: classes4.dex */
public abstract class c<T> extends com.google.android.exoplayer2.source.a {

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<T, b<T>> f18261h = new HashMap<>();
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Handler f18262i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private a7.y f18263j;

    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes4.dex */
    private final class a implements p, com.google.android.exoplayer2.drm.h {

        /* renamed from: a  reason: collision with root package name */
        private final T f18264a;

        /* renamed from: b  reason: collision with root package name */
        private p.a f18265b;

        /* renamed from: c  reason: collision with root package name */
        private h.a f18266c;

        public a(T t10) {
            this.f18265b = c.this.r(null);
            this.f18266c = c.this.p(null);
            this.f18264a = t10;
        }

        private boolean a(int i10, @Nullable o.b bVar) {
            o.b bVar2;
            if (bVar != null) {
                bVar2 = c.this.A(this.f18264a, bVar);
                if (bVar2 == null) {
                    return false;
                }
            } else {
                bVar2 = null;
            }
            int C = c.this.C(this.f18264a, i10);
            p.a aVar = this.f18265b;
            if (aVar.f18365a != C || !s0.c(aVar.f18366b, bVar2)) {
                this.f18265b = c.this.q(C, bVar2, 0L);
            }
            h.a aVar2 = this.f18266c;
            if (aVar2.f17580a != C || !s0.c(aVar2.f17581b, bVar2)) {
                this.f18266c = c.this.o(C, bVar2);
                return true;
            }
            return true;
        }

        private n6.i q(n6.i iVar) {
            long B = c.this.B(this.f18264a, iVar.f62785f);
            long B2 = c.this.B(this.f18264a, iVar.f62786g);
            if (B == iVar.f62785f && B2 == iVar.f62786g) {
                return iVar;
            }
            return new n6.i(iVar.f62780a, iVar.f62781b, iVar.f62782c, iVar.f62783d, iVar.f62784e, B, B2);
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void N(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f18266c.j();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void Q(int i10, @Nullable o.b bVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f18265b.i(q(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void R(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f18266c.i();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void T(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f18265b.p(hVar, q(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void V(int i10, @Nullable o.b bVar, Exception exc) {
            if (a(i10, bVar)) {
                this.f18266c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void W(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f18265b.r(hVar, q(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void Z(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar) {
            if (a(i10, bVar)) {
                this.f18265b.v(hVar, q(iVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void c0(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f18266c.m();
            }
        }

        @Override // com.google.android.exoplayer2.source.p
        public void i(int i10, @Nullable o.b bVar, n6.h hVar, n6.i iVar, IOException iOException, boolean z10) {
            if (a(i10, bVar)) {
                this.f18265b.t(hVar, q(iVar), iOException, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void v(int i10, @Nullable o.b bVar) {
            if (a(i10, bVar)) {
                this.f18266c.h();
            }
        }

        @Override // com.google.android.exoplayer2.drm.h
        public void x(int i10, @Nullable o.b bVar, int i11) {
            if (a(i10, bVar)) {
                this.f18266c.k(i11);
            }
        }
    }

    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes4.dex */
    private static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final o f18268a;

        /* renamed from: b  reason: collision with root package name */
        public final o.c f18269b;

        /* renamed from: c  reason: collision with root package name */
        public final c<T>.a f18270c;

        public b(o oVar, o.c cVar, c<T>.a aVar) {
            this.f18268a = oVar;
            this.f18269b = cVar;
            this.f18270c = aVar;
        }
    }

    @Nullable
    protected abstract o.b A(T t10, o.b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E */
    public abstract void D(T t10, o oVar, u1 u1Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void F(final T t10, o oVar) {
        b7.a.a(!this.f18261h.containsKey(t10));
        o.c cVar = new o.c() { // from class: n6.b
            @Override // com.google.android.exoplayer2.source.o.c
            public final void a(com.google.android.exoplayer2.source.o oVar2, u1 u1Var) {
                com.google.android.exoplayer2.source.c.this.D(t10, oVar2, u1Var);
            }
        };
        a aVar = new a(t10);
        this.f18261h.put(t10, new b<>(oVar, cVar, aVar));
        oVar.h((Handler) b7.a.e(this.f18262i), aVar);
        oVar.m((Handler) b7.a.e(this.f18262i), aVar);
        oVar.g(cVar, this.f18263j, u());
        if (!v()) {
            oVar.k(cVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.o
    @CallSuper
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        for (b<T> bVar : this.f18261h.values()) {
            bVar.f18268a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void s() {
        for (b<T> bVar : this.f18261h.values()) {
            bVar.f18268a.k(bVar.f18269b);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void t() {
        for (b<T> bVar : this.f18261h.values()) {
            bVar.f18268a.j(bVar.f18269b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    public void w(@Nullable a7.y yVar) {
        this.f18263j = yVar;
        this.f18262i = s0.u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    public void y() {
        for (b<T> bVar : this.f18261h.values()) {
            bVar.f18268a.d(bVar.f18269b);
            bVar.f18268a.e(bVar.f18270c);
            bVar.f18268a.n(bVar.f18270c);
        }
        this.f18261h.clear();
    }

    protected long B(T t10, long j10) {
        return j10;
    }

    protected int C(T t10, int i10) {
        return i10;
    }
}

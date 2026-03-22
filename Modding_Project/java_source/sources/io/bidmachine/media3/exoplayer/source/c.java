package io.bidmachine.media3.exoplayer.source;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.source.r;
import io.bidmachine.media3.exoplayer.source.s;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import zm.a0;
/* compiled from: CompositeMediaSource.java */
/* loaded from: classes8.dex */
public abstract class c<T> extends io.bidmachine.media3.exoplayer.source.a {

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<T, b<T>> f56792h = new HashMap<>();
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Handler f56793i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private en.o f56794j;

    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes8.dex */
    private final class a implements s, io.bidmachine.media3.exoplayer.drm.h {

        /* renamed from: a  reason: collision with root package name */
        private final T f56795a;

        /* renamed from: b  reason: collision with root package name */
        private s.a f56796b;

        /* renamed from: c  reason: collision with root package name */
        private h.a f56797c;

        public a(T t10) {
            this.f56796b = c.this.t(null);
            this.f56797c = c.this.r(null);
            this.f56795a = t10;
        }

        private boolean a(int i10, @Nullable r.b bVar) {
            r.b bVar2;
            if (bVar != null) {
                bVar2 = c.this.C(this.f56795a, bVar);
                if (bVar2 == null) {
                    return false;
                }
            } else {
                bVar2 = null;
            }
            int E = c.this.E(this.f56795a, i10);
            s.a aVar = this.f56796b;
            if (aVar.f56995a != E || !Objects.equals(aVar.f56996b, bVar2)) {
                this.f56796b = c.this.s(E, bVar2);
            }
            h.a aVar2 = this.f56797c;
            if (aVar2.f55863a != E || !Objects.equals(aVar2.f55864b, bVar2)) {
                this.f56797c = c.this.q(E, bVar2);
                return true;
            }
            return true;
        }

        private sn.j m(sn.j jVar, @Nullable r.b bVar) {
            long D = c.this.D(this.f56795a, jVar.f66501f, bVar);
            long D2 = c.this.D(this.f56795a, jVar.f66502g, bVar);
            if (D == jVar.f66501f && D2 == jVar.f66502g) {
                return jVar;
            }
            return new sn.j(jVar.f66496a, jVar.f66497b, jVar.f66498c, jVar.f66499d, jVar.f66500e, D, D2);
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void K(int i10, @Nullable r.b bVar, Exception exc) {
            if (a(i10, bVar)) {
                this.f56797c.l(exc);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void N(int i10, @Nullable r.b bVar) {
            if (a(i10, bVar)) {
                this.f56797c.i();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void O(int i10, @Nullable r.b bVar) {
            if (a(i10, bVar)) {
                this.f56797c.m();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void S(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar, IOException iOException, boolean z10) {
            if (a(i10, bVar)) {
                this.f56796b.A(iVar, m(jVar, bVar), iOException, z10);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void V(int i10, @Nullable r.b bVar, sn.j jVar) {
            if (a(i10, bVar)) {
                this.f56796b.G(m(jVar, bVar));
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void W(int i10, @Nullable r.b bVar, sn.j jVar) {
            if (a(i10, bVar)) {
                this.f56796b.k(m(jVar, bVar));
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void Y(int i10, @Nullable r.b bVar, int i11) {
            if (a(i10, bVar)) {
                this.f56797c.k(i11);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void Z(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar) {
            if (a(i10, bVar)) {
                this.f56796b.u(iVar, m(jVar, bVar));
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void d0(int i10, @Nullable r.b bVar) {
            if (a(i10, bVar)) {
                this.f56797c.j();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.drm.h
        public void g0(int i10, @Nullable r.b bVar) {
            if (a(i10, bVar)) {
                this.f56797c.h();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void i(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar, int i11) {
            if (a(i10, bVar)) {
                this.f56796b.D(iVar, m(jVar, bVar), i11);
            }
        }

        @Override // io.bidmachine.media3.exoplayer.source.s
        public void x(int i10, @Nullable r.b bVar, sn.i iVar, sn.j jVar) {
            if (a(i10, bVar)) {
                this.f56796b.x(iVar, m(jVar, bVar));
            }
        }
    }

    /* compiled from: CompositeMediaSource.java */
    /* loaded from: classes8.dex */
    private static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final r f56799a;

        /* renamed from: b  reason: collision with root package name */
        public final r.c f56800b;

        /* renamed from: c  reason: collision with root package name */
        public final c<T>.a f56801c;

        public b(r rVar, r.c cVar, c<T>.a aVar) {
            this.f56799a = rVar;
            this.f56800b = cVar;
            this.f56801c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.a
    @CallSuper
    public void A() {
        for (b<T> bVar : this.f56792h.values()) {
            bVar.f56799a.k(bVar.f56800b);
            bVar.f56799a.h(bVar.f56801c);
            bVar.f56799a.i(bVar.f56801c);
        }
        this.f56792h.clear();
    }

    @Nullable
    protected abstract r.b C(T t10, r.b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: G */
    public abstract void F(T t10, r rVar, zm.a0 a0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void H(final T t10, r rVar) {
        cn.a.a(!this.f56792h.containsKey(t10));
        r.c cVar = new r.c() { // from class: sn.c
            @Override // io.bidmachine.media3.exoplayer.source.r.c
            public final void a(io.bidmachine.media3.exoplayer.source.r rVar2, a0 a0Var) {
                io.bidmachine.media3.exoplayer.source.c.this.F(t10, rVar2, a0Var);
            }
        };
        a aVar = new a(t10);
        this.f56792h.put(t10, new b<>(rVar, cVar, aVar));
        rVar.p((Handler) cn.a.e(this.f56793i), aVar);
        rVar.g((Handler) cn.a.e(this.f56793i), aVar);
        rVar.l(cVar, this.f56794j, w());
        if (!x()) {
            rVar.n(cVar);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.r
    @CallSuper
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        for (b<T> bVar : this.f56792h.values()) {
            bVar.f56799a.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    @CallSuper
    protected void u() {
        for (b<T> bVar : this.f56792h.values()) {
            bVar.f56799a.n(bVar.f56800b);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.a
    @CallSuper
    protected void v() {
        for (b<T> bVar : this.f56792h.values()) {
            bVar.f56799a.e(bVar.f56800b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.source.a
    @CallSuper
    public void y(@Nullable en.o oVar) {
        this.f56794j = oVar;
        this.f56793i = m0.A();
    }

    protected int E(T t10, int i10) {
        return i10;
    }

    protected long D(T t10, long j10, @Nullable r.b bVar) {
        return j10;
    }
}

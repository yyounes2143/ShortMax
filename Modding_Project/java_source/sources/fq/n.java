package fq;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.rendering.internal.view.f;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes8.dex */
public class n implements fq.a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final sq.h f51885a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Context f51886b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final rq.b f51887c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final o f51888d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final eq.c f51889e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.state.a f51890f;
    @NonNull
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    final Queue<q> f51891g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f51892h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final AtomicBoolean f51893i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f51894j;
    @Nullable
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    io.bidmachine.rendering.internal.view.f f51895k;
    @Nullable
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    volatile q f51896l;
    @Nullable
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    volatile q f51897m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51898a;

        static {
            int[] iArr = new int[CacheType.values().length];
            f51898a = iArr;
            try {
                iArr[CacheType.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51898a[CacheType.PartialLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51898a[CacheType.StreamLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes8.dex */
    class b implements r {
        b() {
        }

        @Override // fq.r
        public void c(@NonNull q qVar, @NonNull rq.t tVar) {
            tp.s.b(n.this.f51885a, "onAdPhaseFailToLoad (%s) - %s", qVar, tVar);
            n.this.v(qVar);
            if (n.this.I()) {
                if (n.this.f51890f.d()) {
                    n nVar = n.this;
                    nVar.r(qVar, new rq.t("Fail to load after show (CacheType - " + n.this.B() + ") - " + tVar));
                    return;
                }
                n.this.L();
                return;
            }
            n.this.o(tVar);
        }

        @Override // fq.r
        public void d(@NonNull q qVar) {
            tp.s.g(n.this.f51885a, "onAdPhaseLoaded (%s)", qVar);
            if (!n.this.H()) {
                return;
            }
            n.this.R();
            n.this.M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class c implements s {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final o f51900a;

        public c(@NonNull o oVar) {
            this.f51900a = oVar;
        }

        @Override // fq.s
        public void a() {
            this.f51900a.a();
        }

        @Override // fq.s
        public void b() {
            n.this.z();
        }

        @Override // fq.s
        public void c() {
            this.f51900a.c();
        }

        @Override // fq.s
        public void d() {
            this.f51900a.onAdClicked();
        }

        @Override // fq.s
        public void e() {
            if (n.this.G()) {
                n.this.R();
                n.this.S();
                return;
            }
            b();
        }

        @Override // fq.s
        public void a(@NonNull rq.n nVar) {
            n.this.m(nVar);
        }

        @Override // fq.s
        public void b(@NonNull PrivacySheetParams privacySheetParams) {
            this.f51900a.b(privacySheetParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class d implements f.d {
        private d() {
        }

        @Override // io.bidmachine.rendering.internal.view.f.d
        public void a() {
            n.this.N();
        }

        @Override // io.bidmachine.rendering.internal.view.f.d
        public void b() {
            n.this.P();
        }

        /* synthetic */ d(n nVar, a aVar) {
            this();
        }

        @Override // io.bidmachine.rendering.internal.view.f.d
        public void a(@NonNull rq.n nVar) {
            n.this.m(nVar);
        }
    }

    public n(@NonNull Context context, @NonNull rq.b bVar, @NonNull o oVar, @NonNull eq.c cVar) {
        sq.h hVar = new sq.h("AdController");
        this.f51885a = hVar;
        this.f51890f = new nq.b(hVar.toString());
        this.f51886b = context.getApplicationContext();
        this.f51887c = bVar;
        this.f51888d = oVar;
        this.f51889e = cVar;
        this.f51891g = new ConcurrentLinkedQueue();
        this.f51892h = new AtomicBoolean(false);
        this.f51893i = new AtomicBoolean(false);
        this.f51894j = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(q qVar) {
        j(qVar, this.f51897m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C(q qVar) {
        qVar.d();
        qVar.onShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        yq.r.m(this.f51896l, new yq.d() { // from class: fq.j
            @Override // yq.d
            public final void execute(Object obj) {
                n.this.A((q) obj);
            }
        });
    }

    private void j(@NonNull final q qVar, @Nullable q qVar2) {
        yq.r.m(qVar2, new yq.d() { // from class: fq.l
            @Override // yq.d
            public final void execute(Object obj) {
                n.this.t((q) obj);
            }
        });
        this.f51889e.d(qVar.e(), AnimationEventType.Appear, false, null, new tp.r() { // from class: fq.m
            @Override // yq.m
            public final void s() {
                n.C(q.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(q qVar, rq.t tVar) {
        this.f51888d.c(qVar, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(rq.c cVar) {
        if (this.f51895k != null) {
            return;
        }
        io.bidmachine.rendering.internal.view.f fVar = new io.bidmachine.rendering.internal.view.f(this.f51886b, cVar, this.f51889e);
        this.f51895k = fVar;
        fVar.setListener(new d(this, null));
        this.f51895k.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(@NonNull final q qVar) {
        tp.r rVar = new tp.r() { // from class: fq.d
            @Override // yq.m
            public final void s() {
                n.this.v(qVar);
            }
        };
        qVar.a(true);
        this.f51889e.d(qVar.e(), AnimationEventType.Disappear, false, null, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(q qVar) {
        if (!this.f51890f.i()) {
            return;
        }
        S();
        this.f51888d.j(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        final o oVar = this.f51888d;
        Objects.requireNonNull(oVar);
        tp.r rVar = new tp.r() { // from class: fq.g
            @Override // yq.m
            public final void s() {
                o.this.b();
            }
        };
        q qVar = this.f51896l;
        if (qVar != null) {
            qVar.a(true);
            this.f51889e.d(qVar.e(), AnimationEventType.Disappear, false, null, rVar);
            return;
        }
        rVar.run();
    }

    @NonNull
    @VisibleForTesting
    CacheType B() {
        return this.f51887c.c();
    }

    @Nullable
    @VisibleForTesting
    q D() {
        return this.f51891g.peek();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public boolean E(@NonNull q qVar) {
        return this.f51891g.remove(qVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: F */
    public void v(@Nullable q qVar) {
        tp.s.g(this.f51885a, "removeAndDestroyAdPhaseController (%s)", qVar);
        yq.r.m(qVar, new yq.d() { // from class: fq.e
            @Override // yq.d
            public final void execute(Object obj) {
                n.this.E((q) obj);
            }
        });
        q(qVar);
    }

    @VisibleForTesting
    boolean G() {
        if (D() != null) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    boolean H() {
        for (q qVar : this.f51891g) {
            if (!qVar.b()) {
                return false;
            }
        }
        return true;
    }

    public boolean I() {
        return this.f51890f.b();
    }

    @VisibleForTesting
    void J() {
        if (!this.f51892h.compareAndSet(false, true)) {
            return;
        }
        for (q qVar : this.f51891g) {
            tp.s.g(this.f51885a, "loadAdPhase (%s)", qVar);
            qVar.c();
        }
    }

    @VisibleForTesting
    void K() {
        final rq.c e10 = this.f51887c.e();
        sq.j.k(new tp.r() { // from class: fq.b
            @Override // yq.m
            public final void s() {
                n.this.l(e10);
            }
        });
    }

    @VisibleForTesting
    void L() {
        if (!this.f51890f.k()) {
            return;
        }
        this.f51888d.h(this);
    }

    @VisibleForTesting
    boolean M() {
        if (!this.f51890f.a(true)) {
            return false;
        }
        this.f51888d.i(this);
        return true;
    }

    void N() {
        this.f51888d.e();
    }

    void O() {
        io.bidmachine.rendering.internal.view.f fVar = this.f51895k;
        if (fVar == null || !this.f51894j.compareAndSet(true, false)) {
            return;
        }
        fVar.q();
        this.f51888d.e(fVar);
    }

    void P() {
        M();
    }

    void Q() {
        io.bidmachine.rendering.internal.view.f fVar = this.f51895k;
        if (fVar == null || !this.f51894j.compareAndSet(false, true)) {
            return;
        }
        this.f51888d.f(fVar);
        fVar.r();
    }

    @VisibleForTesting
    void R() {
        rq.t tVar;
        if (!this.f51893i.compareAndSet(false, true)) {
            return;
        }
        this.f51888d.d();
        this.f51897m = this.f51896l;
        q D = D();
        if (D == null) {
            q qVar = this.f51897m;
            if (this.f51897m == null) {
                tVar = new rq.t("No ad phase to show");
            } else {
                tVar = null;
            }
            r(qVar, tVar);
        } else {
            if (this.f51897m != D) {
                E(D);
                D.d(new c(this.f51888d));
                this.f51896l = D;
                this.f51889e.g(D.e(), AnimationEventType.Appear);
            }
            this.f51888d.d(D);
            O();
        }
        this.f51893i.set(false);
    }

    void m(@NonNull rq.n nVar) {
        if (this.f51890f.h()) {
            return;
        }
        this.f51888d.a(nVar);
    }

    @VisibleForTesting
    boolean n(@NonNull q qVar) {
        return this.f51891g.add(qVar);
    }

    @VisibleForTesting
    boolean o(@NonNull rq.t tVar) {
        if (!this.f51890f.a(false)) {
            return false;
        }
        this.f51888d.g(this, tVar);
        return true;
    }

    @Override // fq.a
    public void onShown() {
        tp.s.g(this.f51885a, "onShown", new Object[0]);
        yq.r.m(this.f51896l, new yq.d() { // from class: fq.h
            @Override // yq.d
            public final void execute(Object obj) {
                n.this.x((q) obj);
            }
        });
    }

    @VisibleForTesting
    void q(@Nullable q qVar) {
        tp.s.g(this.f51885a, "destroyAdPhaseController (%s)", qVar);
        yq.r.m(qVar, new yq.d() { // from class: fq.c
            @Override // yq.d
            public final void execute(Object obj) {
                ((q) obj).a();
            }
        });
        if (this.f51896l == qVar) {
            this.f51896l = null;
        }
        if (this.f51897m == qVar) {
            this.f51897m = null;
        }
    }

    @VisibleForTesting
    void r(@Nullable final q qVar, @Nullable rq.t tVar) {
        yq.r.m(tVar, new yq.d() { // from class: fq.i
            @Override // yq.d
            public final void execute(Object obj) {
                n.this.k(qVar, (rq.t) obj);
            }
        });
        z();
    }

    @NonNull
    public String toString() {
        return this.f51885a.toString();
    }

    @VisibleForTesting
    void w() {
        this.f51891g.clear();
    }

    @Override // fq.a
    public void a() {
        tp.s.g(this.f51885a, "destroy", new Object[0]);
        this.f51889e.a();
        q(this.f51896l);
        for (q qVar : this.f51891g) {
            q(qVar);
        }
        w();
        yq.r.m(this.f51895k, new yq.d() { // from class: fq.k
            @Override // yq.d
            public final void execute(Object obj) {
                ((io.bidmachine.rendering.internal.view.f) obj).i();
            }
        });
        this.f51895k = null;
        this.f51890f.a();
    }

    @Override // fq.a
    @Nullable
    public Orientation b() {
        return this.f51887c.d();
    }

    @Override // fq.a
    public void c() {
        tp.s.g(this.f51885a, "load (cacheType - %s)", B());
        tp.i.b(this.f51886b);
        Queue<rq.c> a10 = this.f51887c.a();
        if (a10.isEmpty()) {
            this.f51888d.g(this, new rq.t("Ad phase queue is empty"));
        } else if (I()) {
            this.f51888d.i(this);
        } else if (this.f51890f.c()) {
            for (rq.c cVar : a10) {
                sq.h hVar = new sq.h("AdPhaseController");
                n(new io.bidmachine.rendering.internal.controller.h(this.f51886b, cVar, hVar, new io.bidmachine.rendering.internal.state.c(hVar.toString(), io.bidmachine.rendering.internal.h.j()), new b(), this.f51889e));
            }
            int i10 = a.f51898a[B().ordinal()];
            if (i10 == 1) {
                J();
            } else if (i10 == 2) {
                K();
                J();
            } else if (i10 == 3) {
                K();
            }
        }
    }

    @Override // fq.a
    public boolean d() {
        tp.s.g(this.f51885a, "performShow", new Object[0]);
        this.f51890f.l();
        q qVar = this.f51896l;
        if (qVar != null) {
            if (this.f51890f.m()) {
                qVar.d();
                return true;
            }
            return true;
        }
        Q();
        J();
        return false;
    }

    @Override // fq.a
    public void f() {
        tp.s.g(this.f51885a, "performHide", new Object[0]);
        yq.r.m(this.f51896l, new yq.d() { // from class: fq.f
            @Override // yq.d
            public final void execute(Object obj) {
                ((q) obj).a(false);
            }
        });
        O();
    }
}

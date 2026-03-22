package com.facebook.imagepipeline.producers;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import com.facebook.common.internal.ImmutableMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: PostprocessorProducer.java */
/* loaded from: classes3.dex */
public class z0 implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final b1<o2.a<y3.e>> f16002a;

    /* renamed from: b  reason: collision with root package name */
    private final q3.d f16003b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f16004c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes3.dex */
    public class a extends u<o2.a<y3.e>, o2.a<y3.e>> {

        /* renamed from: c  reason: collision with root package name */
        private final e1 f16005c;

        /* renamed from: d  reason: collision with root package name */
        private final c1 f16006d;

        /* renamed from: e  reason: collision with root package name */
        private final e4.b f16007e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f16008f;

        /* renamed from: g  reason: collision with root package name */
        private o2.a<y3.e> f16009g;

        /* renamed from: h  reason: collision with root package name */
        private int f16010h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f16011i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f16012j;

        /* compiled from: PostprocessorProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.z0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0270a extends f {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ z0 f16014a;

            C0270a(z0 z0Var) {
                this.f16014a = z0Var;
            }

            @Override // com.facebook.imagepipeline.producers.d1
            public void b() {
                a.this.B();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes3.dex */
        public class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                o2.a aVar;
                int i10;
                synchronized (a.this) {
                    aVar = a.this.f16009g;
                    i10 = a.this.f16010h;
                    a.this.f16009g = null;
                    a.this.f16011i = false;
                }
                if (o2.a.v(aVar)) {
                    try {
                        a.this.y(aVar, i10);
                    } finally {
                        o2.a.r(aVar);
                    }
                }
                a.this.w();
            }
        }

        public a(n<o2.a<y3.e>> nVar, e1 e1Var, e4.b bVar, c1 c1Var) {
            super(nVar);
            this.f16009g = null;
            this.f16010h = 0;
            this.f16011i = false;
            this.f16012j = false;
            this.f16005c = e1Var;
            this.f16007e = bVar;
            this.f16006d = c1Var;
            c1Var.p(new C0270a(z0.this));
        }

        private synchronized boolean A() {
            return this.f16008f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B() {
            if (x()) {
                o().a();
            }
        }

        private void C(Throwable th2) {
            if (x()) {
                o().onFailure(th2);
            }
        }

        private void D(o2.a<y3.e> aVar, int i10) {
            boolean d10 = com.facebook.imagepipeline.producers.c.d(i10);
            if ((!d10 && !A()) || (d10 && x())) {
                o().b(aVar, i10);
            }
        }

        private o2.a<y3.e> F(y3.e eVar) {
            y3.f fVar = (y3.f) eVar;
            o2.a<Bitmap> a10 = this.f16007e.a(fVar.B0(), z0.this.f16003b);
            try {
                y3.f J = y3.f.J(a10, eVar.x0(), fVar.q0(), fVar.H());
                J.putExtras(fVar.getExtras());
                return o2.a.w(J);
            } finally {
                o2.a.r(a10);
            }
        }

        private synchronized boolean G() {
            if (!this.f16008f && this.f16011i && !this.f16012j && o2.a.v(this.f16009g)) {
                this.f16012j = true;
                return true;
            }
            return false;
        }

        private boolean H(y3.e eVar) {
            return eVar instanceof y3.f;
        }

        private void I() {
            z0.this.f16004c.execute(new b());
        }

        private void J(o2.a<y3.e> aVar, int i10) {
            synchronized (this) {
                try {
                    if (this.f16008f) {
                        return;
                    }
                    o2.a<y3.e> aVar2 = this.f16009g;
                    this.f16009g = o2.a.p(aVar);
                    this.f16010h = i10;
                    this.f16011i = true;
                    boolean G = G();
                    o2.a.r(aVar2);
                    if (G) {
                        I();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w() {
            boolean G;
            synchronized (this) {
                this.f16012j = false;
                G = G();
            }
            if (G) {
                I();
            }
        }

        private boolean x() {
            synchronized (this) {
                try {
                    if (this.f16008f) {
                        return false;
                    }
                    o2.a<y3.e> aVar = this.f16009g;
                    this.f16009g = null;
                    this.f16008f = true;
                    o2.a.r(aVar);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y(o2.a<y3.e> aVar, int i10) {
            k2.h.b(Boolean.valueOf(o2.a.v(aVar)));
            if (!H(aVar.s())) {
                D(aVar, i10);
                return;
            }
            this.f16005c.b(this.f16006d, "PostprocessorProducer");
            try {
                try {
                    o2.a<y3.e> F = F(aVar.s());
                    e1 e1Var = this.f16005c;
                    c1 c1Var = this.f16006d;
                    e1Var.j(c1Var, "PostprocessorProducer", z(e1Var, c1Var, this.f16007e));
                    D(F, i10);
                    o2.a.r(F);
                } catch (Exception e10) {
                    e1 e1Var2 = this.f16005c;
                    c1 c1Var2 = this.f16006d;
                    e1Var2.k(c1Var2, "PostprocessorProducer", e10, z(e1Var2, c1Var2, this.f16007e));
                    C(e10);
                    o2.a.r(null);
                }
            } catch (Throwable th2) {
                o2.a.r(null);
                throw th2;
            }
        }

        private Map<String, String> z(e1 e1Var, c1 c1Var, e4.b bVar) {
            if (!e1Var.f(c1Var, "PostprocessorProducer")) {
                return null;
            }
            return ImmutableMap.of("Postprocessor", bVar.getName());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: E */
        public void h(o2.a<y3.e> aVar, int i10) {
            if (!o2.a.v(aVar)) {
                if (com.facebook.imagepipeline.producers.c.d(i10)) {
                    D(null, i10);
                    return;
                }
                return;
            }
            J(aVar, i10);
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void f() {
            B();
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void g(Throwable th2) {
            C(th2);
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes3.dex */
    class b extends u<o2.a<y3.e>, o2.a<y3.e>> implements e4.d {

        /* renamed from: c  reason: collision with root package name */
        private boolean f16017c;

        /* renamed from: d  reason: collision with root package name */
        private o2.a<y3.e> f16018d;

        /* compiled from: PostprocessorProducer.java */
        /* loaded from: classes3.dex */
        class a extends f {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ z0 f16020a;

            a(z0 z0Var) {
                this.f16020a = z0Var;
            }

            @Override // com.facebook.imagepipeline.producers.d1
            public void b() {
                if (b.this.q()) {
                    b.this.o().a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean q() {
            synchronized (this) {
                try {
                    if (this.f16017c) {
                        return false;
                    }
                    o2.a<y3.e> aVar = this.f16018d;
                    this.f16018d = null;
                    this.f16017c = true;
                    o2.a.r(aVar);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        private void s(o2.a<y3.e> aVar) {
            synchronized (this) {
                try {
                    if (this.f16017c) {
                        return;
                    }
                    o2.a<y3.e> aVar2 = this.f16018d;
                    this.f16018d = o2.a.p(aVar);
                    o2.a.r(aVar2);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @SuppressLint({"WrongConstant"})
        private void t() {
            synchronized (this) {
                try {
                    if (this.f16017c) {
                        return;
                    }
                    o2.a<y3.e> p10 = o2.a.p(this.f16018d);
                    try {
                        o().b(p10, 0);
                    } finally {
                        o2.a.r(p10);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void f() {
            if (q()) {
                o().a();
            }
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void g(Throwable th2) {
            if (q()) {
                o().onFailure(th2);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: r */
        public void h(o2.a<y3.e> aVar, int i10) {
            if (com.facebook.imagepipeline.producers.c.e(i10)) {
                return;
            }
            s(aVar);
            t();
        }

        private b(a aVar, e4.c cVar, c1 c1Var) {
            super(aVar);
            this.f16017c = false;
            this.f16018d = null;
            cVar.c(this);
            c1Var.p(new a(z0.this));
        }
    }

    /* compiled from: PostprocessorProducer.java */
    /* loaded from: classes3.dex */
    class c extends u<o2.a<y3.e>, o2.a<y3.e>> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: p */
        public void h(o2.a<y3.e> aVar, int i10) {
            if (com.facebook.imagepipeline.producers.c.e(i10)) {
                return;
            }
            o().b(aVar, i10);
        }

        private c(a aVar) {
            super(aVar);
        }
    }

    public z0(b1<o2.a<y3.e>> b1Var, q3.d dVar, Executor executor) {
        this.f16002a = (b1) k2.h.g(b1Var);
        this.f16003b = dVar;
        this.f16004c = (Executor) k2.h.g(executor);
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        n<o2.a<y3.e>> cVar;
        e1 l10 = c1Var.l();
        e4.b m10 = c1Var.o().m();
        k2.h.g(m10);
        a aVar = new a(nVar, l10, m10, c1Var);
        if (m10 instanceof e4.c) {
            cVar = new b(aVar, (e4.c) m10, c1Var);
        } else {
            cVar = new c(aVar);
        }
        this.f16002a.b(cVar, c1Var);
    }
}

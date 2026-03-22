package com.facebook.imagepipeline.producers;

import android.util.Pair;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
/* compiled from: ThrottlingProducer.java */
/* loaded from: classes3.dex */
public class p1<T> implements b1<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b1<T> f15866a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15867b;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f15870e;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<n<T>, c1>> f15869d = new ConcurrentLinkedQueue<>();

    /* renamed from: c  reason: collision with root package name */
    private int f15868c = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThrottlingProducer.java */
    /* loaded from: classes3.dex */
    public class a extends u<T, T> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ThrottlingProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.p1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0268a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Pair f15872a;

            RunnableC0268a(Pair pair) {
                this.f15872a = pair;
            }

            @Override // java.lang.Runnable
            public void run() {
                p1 p1Var = p1.this;
                Pair pair = this.f15872a;
                p1Var.g((n) pair.first, (c1) pair.second);
            }
        }

        private void p() {
            Pair pair;
            synchronized (p1.this) {
                try {
                    pair = (Pair) p1.this.f15869d.poll();
                    if (pair == null) {
                        p1 p1Var = p1.this;
                        p1Var.f15868c--;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (pair != null) {
                p1.this.f15870e.execute(new RunnableC0268a(pair));
            }
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void f() {
            o().a();
            p();
        }

        @Override // com.facebook.imagepipeline.producers.u, com.facebook.imagepipeline.producers.c
        protected void g(Throwable th2) {
            o().onFailure(th2);
            p();
        }

        @Override // com.facebook.imagepipeline.producers.c
        protected void h(T t10, int i10) {
            o().b(t10, i10);
            if (c.d(i10)) {
                p();
            }
        }

        private a(n<T> nVar) {
            super(nVar);
        }
    }

    public p1(int i10, Executor executor, b1<T> b1Var) {
        this.f15867b = i10;
        this.f15870e = (Executor) k2.h.g(executor);
        this.f15866a = (b1) k2.h.g(b1Var);
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<T> nVar, c1 c1Var) {
        boolean z10;
        c1Var.l().b(c1Var, "ThrottlingProducer");
        synchronized (this) {
            try {
                int i10 = this.f15868c;
                z10 = true;
                if (i10 >= this.f15867b) {
                    this.f15869d.add(Pair.create(nVar, c1Var));
                } else {
                    this.f15868c = i10 + 1;
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z10) {
            g(nVar, c1Var);
        }
    }

    void g(n<T> nVar, c1 c1Var) {
        c1Var.l().j(c1Var, "ThrottlingProducer", null);
        this.f15866a.b(new a(nVar), c1Var);
    }
}

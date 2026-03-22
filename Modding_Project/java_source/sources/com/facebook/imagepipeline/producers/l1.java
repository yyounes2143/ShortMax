package com.facebook.imagepipeline.producers;
/* compiled from: SwallowResultProducer.java */
/* loaded from: classes3.dex */
public class l1<T> implements b1<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final b1<T> f15850a;

    /* compiled from: SwallowResultProducer.java */
    /* loaded from: classes3.dex */
    class a extends u<T, Void> {
        a(n nVar) {
            super(nVar);
        }

        @Override // com.facebook.imagepipeline.producers.c
        protected void h(T t10, int i10) {
            if (c.d(i10)) {
                o().b(null, i10);
            }
        }
    }

    public l1(b1<T> b1Var) {
        this.f15850a = b1Var;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<Void> nVar, c1 c1Var) {
        this.f15850a.b(new a(nVar), c1Var);
    }
}

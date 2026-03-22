package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
/* compiled from: LocalFetchProducer.java */
/* loaded from: classes3.dex */
public abstract class k0 implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15833a;

    /* renamed from: b  reason: collision with root package name */
    private final n2.g f15834b;

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes3.dex */
    class a extends k1<y3.k> {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ImageRequest f15835f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ e1 f15836g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ c1 f15837h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(n nVar, e1 e1Var, c1 c1Var, String str, ImageRequest imageRequest, e1 e1Var2, c1 c1Var2) {
            super(nVar, e1Var, c1Var, str);
            this.f15835f = imageRequest;
            this.f15836g = e1Var2;
            this.f15837h = c1Var2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // i2.h
        /* renamed from: k */
        public void c(y3.k kVar) {
            y3.k.i(kVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // i2.h
        /* renamed from: l */
        public y3.k d() throws Exception {
            y3.k d10 = k0.this.d(this.f15835f);
            if (d10 == null) {
                this.f15836g.a(this.f15837h, k0.this.f(), false);
                this.f15837h.q("local", "fetch");
                return null;
            }
            d10.W();
            this.f15836g.a(this.f15837h, k0.this.f(), true);
            this.f15837h.q("local", "fetch");
            this.f15837h.putExtra("image_color_space", d10.o());
            return d10;
        }
    }

    /* compiled from: LocalFetchProducer.java */
    /* loaded from: classes3.dex */
    class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1 f15839a;

        b(k1 k1Var) {
            this.f15839a = k1Var;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15839a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public k0(Executor executor, n2.g gVar) {
        this.f15833a = executor;
        this.f15834b = gVar;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        e1 l10 = c1Var.l();
        ImageRequest o10 = c1Var.o();
        c1Var.q("local", "fetch");
        a aVar = new a(nVar, l10, c1Var, f(), o10, l10, c1Var);
        c1Var.p(new b(aVar));
        this.f15833a.execute(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y3.k c(InputStream inputStream, int i10) throws IOException {
        o2.a w10;
        o2.a aVar = null;
        try {
            if (i10 <= 0) {
                w10 = o2.a.w(this.f15834b.a(inputStream));
            } else {
                w10 = o2.a.w(this.f15834b.e(inputStream, i10));
            }
            aVar = w10;
            y3.k kVar = new y3.k(aVar);
            k2.b.b(inputStream);
            o2.a.r(aVar);
            return kVar;
        } catch (Throwable th2) {
            k2.b.b(inputStream);
            o2.a.r(aVar);
            throw th2;
        }
    }

    protected abstract y3.k d(ImageRequest imageRequest) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public y3.k e(InputStream inputStream, int i10) throws IOException {
        return c(inputStream, i10);
    }

    protected abstract String f();
}

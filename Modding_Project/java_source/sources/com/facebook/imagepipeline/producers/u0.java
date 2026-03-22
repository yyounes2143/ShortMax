package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.producers.v0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
/* compiled from: NetworkFetchProducer.java */
/* loaded from: classes3.dex */
public class u0 implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    protected final n2.g f15949a;

    /* renamed from: b  reason: collision with root package name */
    private final n2.a f15950b;

    /* renamed from: c  reason: collision with root package name */
    private final v0 f15951c;

    /* compiled from: NetworkFetchProducer.java */
    /* loaded from: classes3.dex */
    class a implements v0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c0 f15952a;

        a(c0 c0Var) {
            this.f15952a = c0Var;
        }

        @Override // com.facebook.imagepipeline.producers.v0.a
        public void a() {
            u0.this.k(this.f15952a);
        }

        @Override // com.facebook.imagepipeline.producers.v0.a
        public void b(InputStream inputStream, int i10) throws IOException {
            if (f4.b.d()) {
                f4.b.a("NetworkFetcher->onResponse");
            }
            u0.this.m(this.f15952a, inputStream, i10);
            if (f4.b.d()) {
                f4.b.b();
            }
        }

        @Override // com.facebook.imagepipeline.producers.v0.a
        public void onFailure(Throwable th2) {
            u0.this.l(this.f15952a, th2);
        }
    }

    public u0(n2.g gVar, n2.a aVar, v0 v0Var) {
        this.f15949a = gVar;
        this.f15950b = aVar;
        this.f15951c = v0Var;
    }

    protected static float e(int i10, int i11) {
        if (i11 > 0) {
            return i10 / i11;
        }
        return 1.0f - ((float) Math.exp((-i10) / 50000.0d));
    }

    private Map<String, String> f(c0 c0Var, int i10) {
        if (!c0Var.d().f(c0Var.b(), "NetworkFetchProducer")) {
            return null;
        }
        return this.f15951c.e(c0Var, i10);
    }

    protected static void j(n2.i iVar, int i10, s3.b bVar, n<y3.k> nVar, c1 c1Var) {
        y3.k kVar;
        o2.a w10 = o2.a.w(iVar.d());
        y3.k kVar2 = null;
        try {
            kVar = new y3.k(w10);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            kVar.b0(bVar);
            kVar.W();
            nVar.b(kVar, i10);
            y3.k.i(kVar);
            o2.a.r(w10);
        } catch (Throwable th3) {
            th = th3;
            kVar2 = kVar;
            y3.k.i(kVar2);
            o2.a.r(w10);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(c0 c0Var) {
        c0Var.d().d(c0Var.b(), "NetworkFetchProducer", null);
        c0Var.a().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(c0 c0Var, Throwable th2) {
        c0Var.d().k(c0Var.b(), "NetworkFetchProducer", th2, null);
        c0Var.d().a(c0Var.b(), "NetworkFetchProducer", false);
        c0Var.b().s("network");
        c0Var.a().onFailure(th2);
    }

    private boolean n(c0 c0Var, c1 c1Var) {
        w3.d c10 = c1Var.k().c();
        if (c10 == null || !c10.c() || !c0Var.b().t()) {
            return false;
        }
        return this.f15951c.d(c0Var);
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        c1Var.l().b(c1Var, "NetworkFetchProducer");
        c0 b10 = this.f15951c.b(nVar, c1Var);
        this.f15951c.c(b10, new a(b10));
    }

    @VisibleForTesting
    protected long g() {
        return SystemClock.uptimeMillis();
    }

    protected void h(n2.i iVar, c0 c0Var) {
        Map<String, String> f10 = f(c0Var, iVar.size());
        e1 d10 = c0Var.d();
        d10.j(c0Var.b(), "NetworkFetchProducer", f10);
        d10.a(c0Var.b(), "NetworkFetchProducer", true);
        c0Var.b().s("network");
        j(iVar, c0Var.e() | 1, c0Var.f(), c0Var.a(), c0Var.b());
    }

    protected void i(n2.i iVar, c0 c0Var) {
        if (n(c0Var, c0Var.b())) {
            long g10 = g();
            if (g10 - c0Var.c() >= 100) {
                c0Var.h(g10);
                c0Var.d().h(c0Var.b(), "NetworkFetchProducer", "intermediate_result");
                j(iVar, c0Var.e(), c0Var.f(), c0Var.a(), c0Var.b());
            }
        }
    }

    protected void m(c0 c0Var, InputStream inputStream, int i10) throws IOException {
        n2.i b10;
        if (i10 > 0) {
            b10 = this.f15949a.d(i10);
        } else {
            b10 = this.f15949a.b();
        }
        byte[] bArr = this.f15950b.get(16384);
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read >= 0) {
                    if (read > 0) {
                        b10.write(bArr, 0, read);
                        i(b10, c0Var);
                        c0Var.a().c(e(b10.size(), i10));
                    }
                } else {
                    this.f15951c.a(c0Var, b10.size());
                    h(b10, c0Var);
                    this.f15950b.release(bArr);
                    b10.close();
                    return;
                }
            } catch (Throwable th2) {
                this.f15950b.release(bArr);
                b10.close();
                throw th2;
            }
        }
    }
}

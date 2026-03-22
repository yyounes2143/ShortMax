package com.facebook.imagepipeline.producers;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.producers.DiskCacheDecision;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: DiskCacheReadProducer.java */
/* loaded from: classes3.dex */
public class v implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final k2.k<t3.c> f15954a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15955b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<y3.k> f15956c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes3.dex */
    public class a implements w.d<y3.k, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e1 f15957a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c1 f15958b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ n f15959c;

        a(e1 e1Var, c1 c1Var, n nVar) {
            this.f15957a = e1Var;
            this.f15958b = c1Var;
            this.f15959c = nVar;
        }

        @Override // w.d
        /* renamed from: b */
        public Void a(w.e<y3.k> eVar) throws Exception {
            if (v.f(eVar)) {
                this.f15957a.d(this.f15958b, "DiskCacheProducer", null);
                this.f15959c.a();
            } else if (eVar.n()) {
                this.f15957a.k(this.f15958b, "DiskCacheProducer", eVar.i(), null);
                v.this.f15956c.b(this.f15959c, this.f15958b);
            } else {
                y3.k j10 = eVar.j();
                if (j10 != null) {
                    e1 e1Var = this.f15957a;
                    c1 c1Var = this.f15958b;
                    e1Var.j(c1Var, "DiskCacheProducer", v.e(e1Var, c1Var, true, j10.u()));
                    this.f15957a.a(this.f15958b, "DiskCacheProducer", true);
                    this.f15958b.s("disk");
                    this.f15959c.c(1.0f);
                    this.f15959c.b(j10, 1);
                    j10.close();
                } else {
                    e1 e1Var2 = this.f15957a;
                    c1 c1Var2 = this.f15958b;
                    e1Var2.j(c1Var2, "DiskCacheProducer", v.e(e1Var2, c1Var2, false, 0));
                    v.this.f15956c.b(this.f15959c, this.f15958b);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskCacheReadProducer.java */
    /* loaded from: classes3.dex */
    public class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f15961a;

        b(AtomicBoolean atomicBoolean) {
            this.f15961a = atomicBoolean;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15961a.set(true);
        }
    }

    public v(k2.k<t3.c> kVar, r3.j jVar, b1<y3.k> b1Var) {
        this.f15954a = kVar;
        this.f15955b = jVar;
        this.f15956c = b1Var;
    }

    @VisibleForTesting
    static Map<String, String> e(e1 e1Var, c1 c1Var, boolean z10, int i10) {
        if (!e1Var.f(c1Var, "DiskCacheProducer")) {
            return null;
        }
        if (z10) {
            return ImmutableMap.of("cached_value_found", String.valueOf(z10), "encodedImageSize", String.valueOf(i10));
        }
        return ImmutableMap.of("cached_value_found", String.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(w.e<?> eVar) {
        if (!eVar.l() && (!eVar.n() || !(eVar.i() instanceof CancellationException))) {
            return false;
        }
        return true;
    }

    private void g(n<y3.k> nVar, c1 c1Var) {
        if (c1Var.v().getValue() >= ImageRequest.RequestLevel.DISK_CACHE.getValue()) {
            c1Var.q("disk", "nil-result_read");
            nVar.b(null, 1);
            return;
        }
        this.f15956c.b(nVar, c1Var);
    }

    private w.d<y3.k, Void> h(n<y3.k> nVar, c1 c1Var) {
        return new a(c1Var.l(), c1Var, nVar);
    }

    private void i(AtomicBoolean atomicBoolean, c1 c1Var) {
        c1Var.p(new b(atomicBoolean));
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        ImageRequest o10 = c1Var.o();
        if (!c1Var.o().z(16)) {
            g(nVar, c1Var);
            return;
        }
        c1Var.l().b(c1Var, "DiskCacheProducer");
        f2.a b10 = this.f15955b.b(o10, c1Var.d());
        t3.c cVar = this.f15954a.get();
        r3.i a10 = DiskCacheDecision.a(o10, cVar.a(), cVar.b(), cVar.c());
        if (a10 == null) {
            e1 l10 = c1Var.l();
            l10.k(c1Var, "DiskCacheProducer", new DiskCacheDecision.DiskCacheDecisionNoDiskCacheChosenException("Got no disk cache for CacheChoice: " + Integer.valueOf(o10.d().ordinal()).toString()), null);
            g(nVar, c1Var);
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        a10.j(b10, atomicBoolean).e(h(nVar, c1Var));
        i(atomicBoolean, c1Var);
    }
}

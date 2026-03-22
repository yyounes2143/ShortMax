package com.facebook.imagepipeline.producers;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: PartialDiskCacheProducer.java */
/* loaded from: classes3.dex */
public class w0 implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final k2.k<t3.c> f15969a;

    /* renamed from: b  reason: collision with root package name */
    private final r3.j f15970b;

    /* renamed from: c  reason: collision with root package name */
    private final n2.g f15971c;

    /* renamed from: d  reason: collision with root package name */
    private final n2.a f15972d;

    /* renamed from: e  reason: collision with root package name */
    private final b1<y3.k> f15973e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes3.dex */
    public class a implements w.d<y3.k, Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e1 f15974a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c1 f15975b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ n f15976c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ f2.a f15977d;

        a(e1 e1Var, c1 c1Var, n nVar, f2.a aVar) {
            this.f15974a = e1Var;
            this.f15975b = c1Var;
            this.f15976c = nVar;
            this.f15977d = aVar;
        }

        @Override // w.d
        /* renamed from: b */
        public Void a(w.e<y3.k> eVar) throws Exception {
            if (w0.g(eVar)) {
                this.f15974a.d(this.f15975b, "PartialDiskCacheProducer", null);
                this.f15976c.a();
            } else if (eVar.n()) {
                this.f15974a.k(this.f15975b, "PartialDiskCacheProducer", eVar.i(), null);
                w0.this.i(this.f15976c, this.f15975b, this.f15977d, null);
            } else {
                y3.k j10 = eVar.j();
                if (j10 != null) {
                    e1 e1Var = this.f15974a;
                    c1 c1Var = this.f15975b;
                    e1Var.j(c1Var, "PartialDiskCacheProducer", w0.f(e1Var, c1Var, true, j10.u()));
                    s3.b g10 = s3.b.g(j10.u() - 1);
                    j10.b0(g10);
                    int u10 = j10.u();
                    ImageRequest o10 = this.f15975b.o();
                    if (g10.c(o10.c())) {
                        this.f15975b.q("disk", "partial");
                        this.f15974a.a(this.f15975b, "PartialDiskCacheProducer", true);
                        this.f15976c.b(j10, 9);
                    } else {
                        this.f15976c.b(j10, 8);
                        w0.this.i(this.f15976c, new j1(ImageRequestBuilder.b(o10).y(s3.b.d(u10 - 1)).a(), this.f15975b), this.f15977d, j10);
                    }
                } else {
                    e1 e1Var2 = this.f15974a;
                    c1 c1Var2 = this.f15975b;
                    e1Var2.j(c1Var2, "PartialDiskCacheProducer", w0.f(e1Var2, c1Var2, false, 0));
                    w0.this.i(this.f15976c, this.f15975b, this.f15977d, j10);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes3.dex */
    public class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f15979a;

        b(AtomicBoolean atomicBoolean) {
            this.f15979a = atomicBoolean;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15979a.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PartialDiskCacheProducer.java */
    /* loaded from: classes3.dex */
    public static class c extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private final k2.k<t3.c> f15981c;

        /* renamed from: d  reason: collision with root package name */
        private final f2.a f15982d;

        /* renamed from: e  reason: collision with root package name */
        private final n2.g f15983e;

        /* renamed from: f  reason: collision with root package name */
        private final n2.a f15984f;

        /* renamed from: g  reason: collision with root package name */
        private final y3.k f15985g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f15986h;

        private void p(InputStream inputStream, OutputStream outputStream, int i10) throws IOException {
            byte[] bArr = this.f15984f.get(16384);
            int i11 = i10;
            while (i11 > 0) {
                try {
                    int read = inputStream.read(bArr, 0, Math.min(16384, i11));
                    if (read < 0) {
                        break;
                    } else if (read > 0) {
                        outputStream.write(bArr, 0, read);
                        i11 -= read;
                    }
                } finally {
                    this.f15984f.release(bArr);
                }
            }
            if (i11 <= 0) {
                return;
            }
            throw new IOException(String.format(null, "Failed to read %d bytes - finished %d short", Integer.valueOf(i10), Integer.valueOf(i11)));
        }

        private n2.i q(y3.k kVar, y3.k kVar2) throws IOException {
            int i10 = ((s3.b) k2.h.g(kVar2.m())).f66263a;
            n2.i d10 = this.f15983e.d(kVar2.u() + i10);
            p(kVar.s(), d10, i10);
            p(kVar2.s(), d10, kVar2.u());
            return d10;
        }

        private void s(n2.i iVar) {
            y3.k kVar;
            Throwable th2;
            o2.a w10 = o2.a.w(iVar.d());
            try {
                kVar = new y3.k(w10);
                try {
                    kVar.W();
                    o().b(kVar, 1);
                    y3.k.i(kVar);
                    o2.a.r(w10);
                } catch (Throwable th3) {
                    th2 = th3;
                    y3.k.i(kVar);
                    o2.a.r(w10);
                    throw th2;
                }
            } catch (Throwable th4) {
                kVar = null;
                th2 = th4;
            }
        }

        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: r */
        public void h(y3.k kVar, int i10) {
            if (com.facebook.imagepipeline.producers.c.e(i10)) {
                return;
            }
            if (this.f15985g != null && kVar != null && kVar.m() != null) {
                try {
                    try {
                        s(q(this.f15985g, kVar));
                    } catch (IOException e10) {
                        l2.a.j("PartialDiskCacheProducer", "Error while merging image data", e10);
                        o().onFailure(e10);
                    }
                    this.f15981c.get().b().p(this.f15982d);
                } finally {
                    kVar.close();
                    this.f15985g.close();
                }
            } else if (this.f15986h && com.facebook.imagepipeline.producers.c.m(i10, 8) && com.facebook.imagepipeline.producers.c.d(i10) && kVar != null && kVar.q() != com.facebook.imageformat.c.f15620d) {
                this.f15981c.get().b().m(this.f15982d, kVar);
                o().b(kVar, i10);
            } else {
                o().b(kVar, i10);
            }
        }

        private c(n<y3.k> nVar, k2.k<t3.c> kVar, f2.a aVar, n2.g gVar, n2.a aVar2, y3.k kVar2, boolean z10) {
            super(nVar);
            this.f15981c = kVar;
            this.f15982d = aVar;
            this.f15983e = gVar;
            this.f15984f = aVar2;
            this.f15985g = kVar2;
            this.f15986h = z10;
        }
    }

    public w0(k2.k<t3.c> kVar, r3.j jVar, n2.g gVar, n2.a aVar, b1<y3.k> b1Var) {
        this.f15969a = kVar;
        this.f15970b = jVar;
        this.f15971c = gVar;
        this.f15972d = aVar;
        this.f15973e = b1Var;
    }

    private static Uri e(ImageRequest imageRequest) {
        return imageRequest.w().buildUpon().appendQueryParameter("fresco_partial", "true").build();
    }

    @VisibleForTesting
    static Map<String, String> f(e1 e1Var, c1 c1Var, boolean z10, int i10) {
        if (!e1Var.f(c1Var, "PartialDiskCacheProducer")) {
            return null;
        }
        if (z10) {
            return ImmutableMap.of("cached_value_found", String.valueOf(z10), "encodedImageSize", String.valueOf(i10));
        }
        return ImmutableMap.of("cached_value_found", String.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(w.e<?> eVar) {
        if (!eVar.l() && (!eVar.n() || !(eVar.i() instanceof CancellationException))) {
            return false;
        }
        return true;
    }

    private w.d<y3.k, Void> h(n<y3.k> nVar, c1 c1Var, f2.a aVar) {
        return new a(c1Var.l(), c1Var, nVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(n<y3.k> nVar, c1 c1Var, f2.a aVar, y3.k kVar) {
        this.f15973e.b(new c(nVar, this.f15969a, aVar, this.f15971c, this.f15972d, kVar, c1Var.o().z(32)), c1Var);
    }

    private void j(AtomicBoolean atomicBoolean, c1 c1Var) {
        c1Var.p(new b(atomicBoolean));
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        ImageRequest o10 = c1Var.o();
        boolean z10 = c1Var.o().z(16);
        boolean z11 = c1Var.o().z(32);
        if (!z10 && !z11) {
            this.f15973e.b(nVar, c1Var);
            return;
        }
        e1 l10 = c1Var.l();
        l10.b(c1Var, "PartialDiskCacheProducer");
        f2.a d10 = this.f15970b.d(o10, e(o10), c1Var.d());
        if (!z10) {
            l10.j(c1Var, "PartialDiskCacheProducer", f(l10, c1Var, false, 0));
            i(nVar, c1Var, d10, null);
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f15969a.get().b().j(d10, atomicBoolean).e(h(nVar, c1Var, d10));
        j(atomicBoolean, c1Var);
    }
}

package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.producers.JobScheduler;
import com.facebook.imagepipeline.request.ImageRequest;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: ResizeAndRotateProducer.java */
/* loaded from: classes3.dex */
public class i1 implements b1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15799a;

    /* renamed from: b  reason: collision with root package name */
    private final n2.g f15800b;

    /* renamed from: c  reason: collision with root package name */
    private final b1<y3.k> f15801c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f15802d;

    /* renamed from: e  reason: collision with root package name */
    private final g4.d f15803e;

    /* compiled from: ResizeAndRotateProducer.java */
    /* loaded from: classes3.dex */
    private class a extends u<y3.k, y3.k> {

        /* renamed from: c  reason: collision with root package name */
        private final boolean f15804c;

        /* renamed from: d  reason: collision with root package name */
        private final g4.d f15805d;

        /* renamed from: e  reason: collision with root package name */
        private final c1 f15806e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f15807f;

        /* renamed from: g  reason: collision with root package name */
        private final JobScheduler f15808g;

        /* compiled from: ResizeAndRotateProducer.java */
        /* renamed from: com.facebook.imagepipeline.producers.i1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0267a implements JobScheduler.d {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ i1 f15810a;

            C0267a(i1 i1Var) {
                this.f15810a = i1Var;
            }

            @Override // com.facebook.imagepipeline.producers.JobScheduler.d
            public void a(y3.k kVar, int i10) {
                if (kVar != null) {
                    a aVar = a.this;
                    aVar.v(kVar, i10, (g4.c) k2.h.g(aVar.f15805d.createImageTranscoder(kVar.q(), a.this.f15804c)));
                    return;
                }
                a.this.o().b(null, i10);
            }
        }

        /* compiled from: ResizeAndRotateProducer.java */
        /* loaded from: classes3.dex */
        class b extends f {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ i1 f15812a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ n f15813b;

            b(i1 i1Var, n nVar) {
                this.f15812a = i1Var;
                this.f15813b = nVar;
            }

            @Override // com.facebook.imagepipeline.producers.f, com.facebook.imagepipeline.producers.d1
            public void a() {
                if (a.this.f15806e.t()) {
                    a.this.f15808g.h();
                }
            }

            @Override // com.facebook.imagepipeline.producers.d1
            public void b() {
                a.this.f15808g.c();
                a.this.f15807f = true;
                this.f15813b.a();
            }
        }

        a(n<y3.k> nVar, c1 c1Var, boolean z10, g4.d dVar) {
            super(nVar);
            this.f15807f = false;
            this.f15806e = c1Var;
            Boolean t10 = c1Var.o().t();
            this.f15804c = t10 != null ? t10.booleanValue() : z10;
            this.f15805d = dVar;
            this.f15808g = new JobScheduler(i1.this.f15799a, new C0267a(i1.this), 100);
            c1Var.p(new b(i1.this, nVar));
        }

        private y3.k A(y3.k kVar) {
            if (!this.f15806e.o().u().e() && kVar.q0() != 0 && kVar.q0() != -1) {
                return x(kVar, 0);
            }
            return kVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(y3.k kVar, int i10, g4.c cVar) {
            this.f15806e.l().b(this.f15806e, "ResizeAndRotateProducer");
            ImageRequest o10 = this.f15806e.o();
            n2.i b10 = i1.this.f15800b.b();
            try {
                try {
                    g4.b c10 = cVar.c(kVar, b10, o10.u(), o10.s(), null, 85, kVar.o());
                    if (c10.a() != 2) {
                        Map<String, String> y10 = y(kVar, o10.s(), c10, cVar.getIdentifier());
                        o2.a w10 = o2.a.w(b10.d());
                        try {
                            y3.k kVar2 = new y3.k(w10);
                            kVar2.e0(com.facebook.imageformat.b.f15604b);
                            kVar2.W();
                            this.f15806e.l().j(this.f15806e, "ResizeAndRotateProducer", y10);
                            if (c10.a() != 1) {
                                i10 |= 16;
                            }
                            o().b(kVar2, i10);
                            y3.k.i(kVar2);
                            return;
                        } finally {
                            o2.a.r(w10);
                        }
                    }
                    throw new RuntimeException("Error while transcoding the image");
                } catch (Exception e10) {
                    this.f15806e.l().k(this.f15806e, "ResizeAndRotateProducer", e10, null);
                    if (c.d(i10)) {
                        o().onFailure(e10);
                    }
                }
            } finally {
                b10.close();
            }
        }

        private void w(y3.k kVar, int i10, com.facebook.imageformat.c cVar) {
            y3.k A;
            if (cVar != com.facebook.imageformat.b.f15604b && cVar != com.facebook.imageformat.b.f15614l) {
                A = z(kVar);
            } else {
                A = A(kVar);
            }
            o().b(A, i10);
        }

        private y3.k x(y3.k kVar, int i10) {
            y3.k g10 = y3.k.g(kVar);
            if (g10 != null) {
                g10.f0(i10);
            }
            return g10;
        }

        private Map<String, String> y(y3.k kVar, s3.f fVar, g4.b bVar, String str) {
            String str2;
            if (!this.f15806e.l().f(this.f15806e, "ResizeAndRotateProducer")) {
                return null;
            }
            String str3 = kVar.getWidth() + TextureRenderKeys.KEY_IS_X + kVar.getHeight();
            if (fVar != null) {
                str2 = fVar.f66291a + TextureRenderKeys.KEY_IS_X + fVar.f66292b;
            } else {
                str2 = "Unspecified";
            }
            HashMap hashMap = new HashMap();
            hashMap.put("Image format", String.valueOf(kVar.q()));
            hashMap.put("Original size", str3);
            hashMap.put("Requested size", str2);
            hashMap.put("queueTime", String.valueOf(this.f15808g.f()));
            hashMap.put("Transcoder id", str);
            hashMap.put("Transcoding result", String.valueOf(bVar));
            return ImmutableMap.b(hashMap);
        }

        private y3.k z(y3.k kVar) {
            s3.g u10 = this.f15806e.o().u();
            if (!u10.h() && u10.g()) {
                return x(kVar, u10.f());
            }
            return kVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.c
        /* renamed from: B */
        public void h(y3.k kVar, int i10) {
            if (this.f15807f) {
                return;
            }
            boolean d10 = c.d(i10);
            if (kVar == null) {
                if (d10) {
                    o().b(null, 1);
                    return;
                }
                return;
            }
            com.facebook.imageformat.c q10 = kVar.q();
            TriState h10 = i1.h(this.f15806e.o(), kVar, (g4.c) k2.h.g(this.f15805d.createImageTranscoder(q10, this.f15804c)));
            if (!d10 && h10 == TriState.UNSET) {
                return;
            }
            if (h10 != TriState.YES) {
                w(kVar, i10, q10);
            } else if (!this.f15808g.k(kVar, i10)) {
            } else {
                if (d10 || this.f15806e.t()) {
                    this.f15808g.h();
                }
            }
        }
    }

    public i1(Executor executor, n2.g gVar, b1<y3.k> b1Var, boolean z10, g4.d dVar) {
        this.f15799a = (Executor) k2.h.g(executor);
        this.f15800b = (n2.g) k2.h.g(gVar);
        this.f15801c = (b1) k2.h.g(b1Var);
        this.f15803e = (g4.d) k2.h.g(dVar);
        this.f15802d = z10;
    }

    private static boolean f(s3.g gVar, y3.k kVar) {
        if (!gVar.e() && (g4.e.e(gVar, kVar) != 0 || g(gVar, kVar))) {
            return true;
        }
        return false;
    }

    private static boolean g(s3.g gVar, y3.k kVar) {
        if (gVar.g() && !gVar.e()) {
            return g4.e.f52202b.contains(Integer.valueOf(kVar.H()));
        }
        kVar.c0(0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static TriState h(ImageRequest imageRequest, y3.k kVar, g4.c cVar) {
        boolean z10;
        if (kVar != null && kVar.q() != com.facebook.imageformat.c.f15620d) {
            if (!cVar.a(kVar.q())) {
                return TriState.NO;
            }
            if (!f(imageRequest.u(), kVar) && !cVar.b(kVar, imageRequest.u(), imageRequest.s())) {
                z10 = false;
            } else {
                z10 = true;
            }
            return TriState.valueOf(z10);
        }
        return TriState.UNSET;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        this.f15801c.b(new a(nVar, c1Var, this.f15802d, this.f15803e), c1Var);
    }
}

package t3;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.g1;
import com.facebook.imagepipeline.producers.h1;
import com.facebook.imagepipeline.producers.i1;
import com.facebook.imagepipeline.producers.l1;
import com.facebook.imagepipeline.producers.n1;
import com.facebook.imagepipeline.producers.p1;
import com.facebook.imagepipeline.producers.r1;
import com.facebook.imagepipeline.producers.s1;
import com.facebook.imagepipeline.producers.v0;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.imagepipeline.producers.z0;
import com.facebook.imagepipeline.request.ImageRequest;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProducerSequenceFactory.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProducerSequenceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,636:1\n40#2,9:637\n40#2,9:646\n40#2,2:655\n44#2,5:658\n40#2,9:663\n40#2,9:672\n40#2,9:681\n40#2,9:690\n40#2,9:699\n40#2,9:708\n40#2,9:717\n40#2,9:726\n40#2,9:735\n40#2,9:744\n40#2,9:753\n40#2,9:762\n40#2,9:771\n1#3:657\n*S KotlinDebug\n*F\n+ 1 ProducerSequenceFactory.kt\ncom/facebook/imagepipeline/core/ProducerSequenceFactory\n*L\n79#1:637,9\n167#1:646,9\n198#1:655,2\n198#1:658,5\n298#1:663,9\n483#1:672,9\n511#1:681,9\n109#1:690,9\n118#1:699,9\n129#1:708,9\n257#1:717,9\n267#1:726,9\n279#1:735,9\n289#1:744,9\n317#1:753,9\n327#1:762,9\n341#1:771,9\n*E\n"})
/* loaded from: classes3.dex */
public final class s0 {
    @NotNull
    public static final a K = new a(null);
    @NotNull
    private final ms.i A;
    @NotNull
    private final ms.i B;
    @NotNull
    private final ms.i C;
    @NotNull
    private final ms.i D;
    @NotNull
    private final ms.i E;
    @NotNull
    private final ms.i F;
    @NotNull
    private final ms.i G;
    @NotNull
    private final ms.i H;
    @NotNull
    private final ms.i I;
    @NotNull
    private final ms.i J;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f66945a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final z f66946b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final v0<?> f66947c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f66948d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f66949e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final n1 f66950f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final DownsampleMode f66951g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f66952h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f66953i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f66954j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final g4.d f66955k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f66956l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f66957m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f66958n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final Set<com.facebook.imagepipeline.producers.o> f66959o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private Map<b1<o2.a<y3.e>>, b1<o2.a<y3.e>>> f66960p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private Map<b1<o2.a<y3.e>>, b1<Void>> f66961q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private Map<b1<o2.a<y3.e>>, b1<o2.a<y3.e>>> f66962r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final ms.i f66963s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final ms.i f66964t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final ms.i f66965u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final ms.i f66966v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final ms.i f66967w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final ms.i f66968x;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final ms.i f66969y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private final ms.i f66970z;

    /* compiled from: ProducerSequenceFactory.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String c(Uri uri) {
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
            if (uri2.length() > 30) {
                String substring = uri2.substring(0, 30);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                return substring + "...";
            }
            return uri2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(ImageRequest imageRequest) {
            boolean z10;
            if (imageRequest.l().getValue() <= ImageRequest.RequestLevel.ENCODED_MEMORY_CACHE.getValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
            k2.h.b(Boolean.valueOf(z10));
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s0(@NotNull ContentResolver contentResolver, @NotNull z producerFactory, @NotNull v0<?> networkFetcher, boolean z10, boolean z11, @NotNull n1 threadHandoffProducerQueue, @NotNull DownsampleMode downsampleMode, boolean z12, boolean z13, boolean z14, @NotNull g4.d imageTranscoderFactory, boolean z15, boolean z16, boolean z17, @Nullable Set<? extends com.facebook.imagepipeline.producers.o> set) {
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        Intrinsics.checkNotNullParameter(producerFactory, "producerFactory");
        Intrinsics.checkNotNullParameter(networkFetcher, "networkFetcher");
        Intrinsics.checkNotNullParameter(threadHandoffProducerQueue, "threadHandoffProducerQueue");
        Intrinsics.checkNotNullParameter(downsampleMode, "downsampleMode");
        Intrinsics.checkNotNullParameter(imageTranscoderFactory, "imageTranscoderFactory");
        this.f66945a = contentResolver;
        this.f66946b = producerFactory;
        this.f66947c = networkFetcher;
        this.f66948d = z10;
        this.f66949e = z11;
        this.f66950f = threadHandoffProducerQueue;
        this.f66951g = downsampleMode;
        this.f66952h = z12;
        this.f66953i = z13;
        this.f66954j = z14;
        this.f66955k = imageTranscoderFactory;
        this.f66956l = z15;
        this.f66957m = z16;
        this.f66958n = z17;
        this.f66959o = set;
        this.f66960p = new LinkedHashMap();
        this.f66961q = new LinkedHashMap();
        this.f66962r = new LinkedHashMap();
        this.f66963s = kotlin.c.b(new Function0() { // from class: t3.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                h1 b02;
                b02 = s0.b0(s0.this);
                return b02;
            }
        });
        this.f66964t = kotlin.c.b(new Function0() { // from class: t3.r0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                h1 V;
                V = s0.V(s0.this);
                return V;
            }
        });
        this.f66965u = kotlin.c.b(new Function0() { // from class: t3.b0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                h1 T;
                T = s0.T(s0.this);
                return T;
            }
        });
        this.f66966v = kotlin.c.b(new Function0() { // from class: t3.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 c02;
                c02 = s0.c0(s0.this);
                return c02;
            }
        });
        this.f66967w = kotlin.c.b(new Function0() { // from class: t3.d0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 u10;
                u10 = s0.u(s0.this);
                return u10;
            }
        });
        this.f66968x = kotlin.c.b(new Function0() { // from class: t3.e0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                l1 d02;
                d02 = s0.d0(s0.this);
                return d02;
            }
        });
        this.f66969y = kotlin.c.b(new Function0() { // from class: t3.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 v10;
                v10 = s0.v(s0.this);
                return v10;
            }
        });
        this.f66970z = kotlin.c.b(new Function0() { // from class: t3.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                l1 W;
                W = s0.W(s0.this);
                return W;
            }
        });
        this.A = kotlin.c.b(new Function0() { // from class: t3.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 t10;
                t10 = s0.t(s0.this);
                return t10;
            }
        });
        this.B = kotlin.c.b(new Function0() { // from class: t3.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 s10;
                s10 = s0.s(s0.this);
                return s10;
            }
        });
        this.C = kotlin.c.b(new Function0() { // from class: t3.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 X;
                X = s0.X(s0.this);
                return X;
            }
        });
        this.D = kotlin.c.b(new Function0() { // from class: t3.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 a02;
                a02 = s0.a0(s0.this);
                return a02;
            }
        });
        this.E = kotlin.c.b(new Function0() { // from class: t3.l0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 U;
                U = s0.U(s0.this);
                return U;
            }
        });
        this.F = kotlin.c.b(new Function0() { // from class: t3.m0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 Z;
                Z = s0.Z(s0.this);
                return Z;
            }
        });
        this.G = kotlin.c.b(new Function0() { // from class: t3.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 n02;
                n02 = s0.n0(s0.this);
                return n02;
            }
        });
        this.H = kotlin.c.b(new Function0() { // from class: t3.o0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 Y;
                Y = s0.Y(s0.this);
                return Y;
            }
        });
        this.I = kotlin.c.b(new Function0() { // from class: t3.p0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 S;
                S = s0.S(s0.this);
                return S;
            }
        });
        this.J = kotlin.c.b(new Function0() { // from class: t3.q0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                b1 w10;
                w10 = s0.w(s0.this);
                return w10;
            }
        });
    }

    private final b1<o2.a<y3.e>> A(ImageRequest imageRequest) {
        b1<o2.a<y3.e>> O;
        if (!f4.b.d()) {
            Uri w10 = imageRequest.w();
            Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
            if (w10 != null) {
                int x10 = imageRequest.x();
                if (x10 != 0) {
                    switch (x10) {
                        case 2:
                            if (imageRequest.j()) {
                                return M();
                            }
                            return N();
                        case 3:
                            if (imageRequest.j()) {
                                return M();
                            }
                            return K();
                        case 4:
                            if (imageRequest.j()) {
                                return M();
                            }
                            if (m2.a.c(this.f66945a.getType(w10))) {
                                return N();
                            }
                            return I();
                        case 5:
                            return H();
                        case 6:
                            return L();
                        case 7:
                            return D();
                        case 8:
                            return R();
                        default:
                            Set<com.facebook.imagepipeline.producers.o> set = this.f66959o;
                            if (set != null) {
                                for (com.facebook.imagepipeline.producers.o oVar : set) {
                                    b1<o2.a<y3.e>> b10 = oVar.b(imageRequest, this, this.f66946b, this.f66950f, this.f66956l, this.f66957m);
                                    if (b10 != null) {
                                        return b10;
                                    }
                                }
                            }
                            String c10 = K.c(w10);
                            throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + c10);
                    }
                }
                return O();
            }
            throw new IllegalStateException("Uri is null.");
        }
        f4.b.a("ProducerSequenceFactory#getBasicDecodedImageSequence");
        try {
            Uri w11 = imageRequest.w();
            Intrinsics.checkNotNullExpressionValue(w11, "getSourceUri(...)");
            if (w11 != null) {
                int x11 = imageRequest.x();
                if (x11 != 0) {
                    switch (x11) {
                        case 2:
                            if (imageRequest.j()) {
                                return M();
                            }
                            O = N();
                            break;
                        case 3:
                            if (imageRequest.j()) {
                                return M();
                            }
                            O = K();
                            break;
                        case 4:
                            if (imageRequest.j()) {
                                return M();
                            }
                            if (m2.a.c(this.f66945a.getType(w11))) {
                                return N();
                            }
                            O = I();
                            break;
                        case 5:
                            O = H();
                            break;
                        case 6:
                            O = L();
                            break;
                        case 7:
                            O = D();
                            break;
                        case 8:
                            O = R();
                            break;
                        default:
                            Set<com.facebook.imagepipeline.producers.o> set2 = this.f66959o;
                            if (set2 != null) {
                                for (com.facebook.imagepipeline.producers.o oVar2 : set2) {
                                    b1<o2.a<y3.e>> b11 = oVar2.b(imageRequest, this, this.f66946b, this.f66950f, this.f66956l, this.f66957m);
                                    if (b11 != null) {
                                        return b11;
                                    }
                                }
                            }
                            String c11 = K.c(w11);
                            throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + c11);
                    }
                } else {
                    O = O();
                }
                return O;
            }
            throw new IllegalStateException("Uri is null.");
        } finally {
            f4.b.b();
        }
    }

    private final synchronized b1<o2.a<y3.e>> B(b1<o2.a<y3.e>> b1Var) {
        b1<o2.a<y3.e>> b1Var2;
        b1Var2 = this.f66962r.get(b1Var);
        if (b1Var2 == null) {
            b1Var2 = this.f66946b.f(b1Var);
            this.f66962r.put(b1Var, b1Var2);
        }
        return b1Var2;
    }

    private final synchronized b1<o2.a<y3.e>> F(b1<o2.a<y3.e>> b1Var) {
        com.facebook.imagepipeline.producers.t k10;
        k10 = this.f66946b.k(b1Var);
        Intrinsics.checkNotNullExpressionValue(k10, "newDelayProducer(...)");
        return k10;
    }

    private final synchronized b1<o2.a<y3.e>> Q(b1<o2.a<y3.e>> b1Var) {
        b1<o2.a<y3.e>> b1Var2;
        b1Var2 = this.f66960p.get(b1Var);
        if (b1Var2 == null) {
            z0 B = this.f66946b.B(b1Var);
            Intrinsics.checkNotNullExpressionValue(B, "newPostprocessorProducer(...)");
            b1Var2 = this.f66946b.A(B);
            this.f66960p.put(b1Var, b1Var2);
        }
        return b1Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 S(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.facebook.imagepipeline.producers.g0 q10 = this$0.f66946b.q();
        Intrinsics.checkNotNullExpressionValue(q10, "newLocalAssetFetchProducer(...)");
        return this$0.g0(q10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h1 T(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return new h1(this$0.x());
        }
        f4.b.a("ProducerSequenceFactory#getLocalContentUriFetchEncodedImageProducerSequence:init");
        try {
            return new h1(this$0.x());
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 U(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.facebook.imagepipeline.producers.h0 r10 = this$0.f66946b.r();
        Intrinsics.checkNotNullExpressionValue(r10, "newLocalContentUriFetchProducer(...)");
        return this$0.h0(r10, new s1[]{this$0.f66946b.s(), this$0.f66946b.t()});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h1 V(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return new h1(this$0.y());
        }
        f4.b.a("ProducerSequenceFactory#getLocalFileFetchEncodedImageProducerSequence:init");
        try {
            return new h1(this$0.y());
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l1 W(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return this$0.f66946b.E(this$0.y());
        }
        f4.b.a("ProducerSequenceFactory#getLocalFileFetchToEncodedMemoryPrefetchSequence:init");
        try {
            return this$0.f66946b.E(this$0.y());
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 X(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.facebook.imagepipeline.producers.l0 u10 = this$0.f66946b.u();
        Intrinsics.checkNotNullExpressionValue(u10, "newLocalFileFetchProducer(...)");
        return this$0.g0(u10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 Y(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.facebook.imagepipeline.producers.m0 v10 = this$0.f66946b.v();
        Intrinsics.checkNotNullExpressionValue(v10, "newLocalResourceFetchProducer(...)");
        return this$0.g0(v10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 Z(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Build.VERSION.SDK_INT >= 29) {
            com.facebook.imagepipeline.producers.q0 w10 = this$0.f66946b.w();
            Intrinsics.checkNotNullExpressionValue(w10, "newLocalThumbnailBitmapSdk29Producer(...)");
            return this$0.e0(w10);
        }
        throw new Throwable("Unreachable exception. Just to make linter happy for the lazy block.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 a0(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.facebook.imagepipeline.producers.r0 x10 = this$0.f66946b.x();
        Intrinsics.checkNotNullExpressionValue(x10, "newLocalVideoThumbnailProducer(...)");
        return this$0.e0(x10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h1 b0(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return new h1(this$0.z());
        }
        f4.b.a("ProducerSequenceFactory#getNetworkFetchEncodedImageProducerSequence:init");
        try {
            return new h1(this$0.z());
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 c0(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return this$0.f0(this$0.C());
        }
        f4.b.a("ProducerSequenceFactory#getNetworkFetchSequence:init");
        try {
            return this$0.f0(this$0.C());
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l1 d0(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return this$0.f66946b.E(this$0.z());
        }
        f4.b.a("ProducerSequenceFactory#getNetworkFetchToEncodedMemoryPrefetchSequence");
        try {
            return this$0.f66946b.E(this$0.z());
        } finally {
            f4.b.b();
        }
    }

    private final b1<o2.a<y3.e>> e0(b1<o2.a<y3.e>> b1Var) {
        com.facebook.imagepipeline.producers.i e10 = this.f66946b.e(b1Var);
        Intrinsics.checkNotNullExpressionValue(e10, "newBitmapMemoryCacheProducer(...)");
        com.facebook.imagepipeline.producers.h d10 = this.f66946b.d(e10);
        Intrinsics.checkNotNullExpressionValue(d10, "newBitmapMemoryCacheKeyMultiplexProducer(...)");
        b1<o2.a<y3.e>> b10 = this.f66946b.b(d10, this.f66950f);
        Intrinsics.checkNotNullExpressionValue(b10, "newBackgroundThreadHandoffProducer(...)");
        if (!this.f66956l && !this.f66957m) {
            com.facebook.imagepipeline.producers.g c10 = this.f66946b.c(b10);
            Intrinsics.checkNotNullExpressionValue(c10, "newBitmapMemoryCacheGetProducer(...)");
            return c10;
        }
        com.facebook.imagepipeline.producers.g c11 = this.f66946b.c(b10);
        Intrinsics.checkNotNullExpressionValue(c11, "newBitmapMemoryCacheGetProducer(...)");
        com.facebook.imagepipeline.producers.k g10 = this.f66946b.g(c11);
        Intrinsics.checkNotNullExpressionValue(g10, "newBitmapProbeProducer(...)");
        return g10;
    }

    private final b1<o2.a<y3.e>> g0(b1<y3.k> b1Var) {
        return h0(b1Var, new s1[]{this.f66946b.t()});
    }

    private final b1<o2.a<y3.e>> h0(b1<y3.k> b1Var, s1<y3.k>[] s1VarArr) {
        return f0(m0(k0(b1Var), s1VarArr));
    }

    private final b1<y3.k> j0(b1<y3.k> b1Var) {
        com.facebook.imagepipeline.producers.w m10;
        com.facebook.imagepipeline.producers.w m11;
        if (!f4.b.d()) {
            if (this.f66953i) {
                w0 z10 = this.f66946b.z(b1Var);
                Intrinsics.checkNotNullExpressionValue(z10, "newPartialDiskCacheProducer(...)");
                m11 = this.f66946b.m(z10);
            } else {
                m11 = this.f66946b.m(b1Var);
            }
            Intrinsics.checkNotNull(m11);
            com.facebook.imagepipeline.producers.v l10 = this.f66946b.l(m11);
            Intrinsics.checkNotNullExpressionValue(l10, "newDiskCacheReadProducer(...)");
            return l10;
        }
        f4.b.a("ProducerSequenceFactory#newDiskCacheSequence");
        try {
            if (this.f66953i) {
                w0 z11 = this.f66946b.z(b1Var);
                Intrinsics.checkNotNullExpressionValue(z11, "newPartialDiskCacheProducer(...)");
                m10 = this.f66946b.m(z11);
            } else {
                m10 = this.f66946b.m(b1Var);
            }
            Intrinsics.checkNotNull(m10);
            com.facebook.imagepipeline.producers.v l11 = this.f66946b.l(m10);
            Intrinsics.checkNotNullExpressionValue(l11, "newDiskCacheReadProducer(...)");
            f4.b.b();
            return l11;
        } catch (Throwable th2) {
            f4.b.b();
            throw th2;
        }
    }

    private final b1<y3.k> k0(b1<y3.k> b1Var) {
        if (this.f66954j) {
            b1Var = j0(b1Var);
        }
        b1<y3.k> o10 = this.f66946b.o(b1Var);
        Intrinsics.checkNotNullExpressionValue(o10, "newEncodedMemoryCacheProducer(...)");
        if (this.f66957m) {
            com.facebook.imagepipeline.producers.a0 p10 = this.f66946b.p(o10);
            Intrinsics.checkNotNullExpressionValue(p10, "newEncodedProbeProducer(...)");
            com.facebook.imagepipeline.producers.y n10 = this.f66946b.n(p10);
            Intrinsics.checkNotNullExpressionValue(n10, "newEncodedCacheKeyMultiplexProducer(...)");
            return n10;
        }
        com.facebook.imagepipeline.producers.y n11 = this.f66946b.n(o10);
        Intrinsics.checkNotNullExpressionValue(n11, "newEncodedCacheKeyMultiplexProducer(...)");
        return n11;
    }

    private final b1<y3.k> l0(s1<y3.k>[] s1VarArr) {
        r1 G = this.f66946b.G(s1VarArr);
        Intrinsics.checkNotNullExpressionValue(G, "newThumbnailBranchProducer(...)");
        i1 D = this.f66946b.D(G, true, this.f66955k);
        Intrinsics.checkNotNullExpressionValue(D, "newResizeAndRotateProducer(...)");
        return D;
    }

    private final b1<y3.k> m0(b1<y3.k> b1Var, s1<y3.k>[] s1VarArr) {
        com.facebook.imagepipeline.producers.a a10 = z.a(b1Var);
        Intrinsics.checkNotNullExpressionValue(a10, "newAddImageTransformMetaDataProducer(...)");
        p1 F = this.f66946b.F(this.f66946b.D(a10, true, this.f66955k));
        Intrinsics.checkNotNullExpressionValue(F, "newThrottlingProducer(...)");
        com.facebook.imagepipeline.producers.l h10 = z.h(l0(s1VarArr), F);
        Intrinsics.checkNotNullExpressionValue(h10, "newBranchOnSeparateImagesProducer(...)");
        return h10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 n0(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        g1 C = this$0.f66946b.C();
        Intrinsics.checkNotNullExpressionValue(C, "newQualifiedResourceFetchProducer(...)");
        return this$0.g0(C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 s(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            com.facebook.imagepipeline.producers.h0 r10 = this$0.f66946b.r();
            Intrinsics.checkNotNullExpressionValue(r10, "newLocalContentUriFetchProducer(...)");
            return this$0.f66946b.b(this$0.k0(r10), this$0.f66950f);
        }
        f4.b.a("ProducerSequenceFactory#getBackgroundLocalContentUriFetchToEncodeMemorySequence:init");
        try {
            com.facebook.imagepipeline.producers.h0 r11 = this$0.f66946b.r();
            Intrinsics.checkNotNullExpressionValue(r11, "newLocalContentUriFetchProducer(...)");
            return this$0.f66946b.b(this$0.k0(r11), this$0.f66950f);
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 t(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            com.facebook.imagepipeline.producers.l0 u10 = this$0.f66946b.u();
            Intrinsics.checkNotNullExpressionValue(u10, "newLocalFileFetchProducer(...)");
            return this$0.f66946b.b(this$0.k0(u10), this$0.f66950f);
        }
        f4.b.a("ProducerSequenceFactory#getBackgroundLocalFileFetchToEncodeMemorySequence");
        try {
            com.facebook.imagepipeline.producers.l0 u11 = this$0.f66946b.u();
            Intrinsics.checkNotNullExpressionValue(u11, "newLocalFileFetchProducer(...)");
            return this$0.f66946b.b(this$0.k0(u11), this$0.f66950f);
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 u(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return this$0.f66946b.b(this$0.C(), this$0.f66950f);
        }
        f4.b.a("ProducerSequenceFactory#getBackgroundNetworkFetchToEncodedMemorySequence:init");
        try {
            return this$0.f66946b.b(this$0.C(), this$0.f66950f);
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 v(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!f4.b.d()) {
            return this$0.i0(this$0.f66947c);
        }
        f4.b.a("ProducerSequenceFactory#getCommonNetworkFetchToEncodedMemorySequence");
        try {
            return this$0.i0(this$0.f66947c);
        } finally {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b1 w(s0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.facebook.imagepipeline.producers.p i10 = this$0.f66946b.i();
        Intrinsics.checkNotNullExpressionValue(i10, "newDataFetchProducer(...)");
        return this$0.f0(this$0.f66946b.D(z.a(i10), true, this$0.f66955k));
    }

    @NotNull
    public final b1<y3.k> C() {
        return (b1) this.f66969y.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> D() {
        return (b1) this.J.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> E(@NotNull ImageRequest imageRequest) {
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        if (!f4.b.d()) {
            b1<o2.a<y3.e>> A = A(imageRequest);
            if (imageRequest.m() != null) {
                A = Q(A);
            }
            if (this.f66952h) {
                A = B(A);
            }
            if (this.f66958n && imageRequest.f() > 0) {
                return F(A);
            }
            return A;
        }
        f4.b.a("ProducerSequenceFactory#getDecodedImageProducerSequence");
        try {
            b1<o2.a<y3.e>> A2 = A(imageRequest);
            if (imageRequest.m() != null) {
                A2 = Q(A2);
            }
            if (this.f66952h) {
                A2 = B(A2);
            }
            if (this.f66958n && imageRequest.f() > 0) {
                A2 = F(A2);
            }
            f4.b.b();
            return A2;
        } catch (Throwable th2) {
            f4.b.b();
            throw th2;
        }
    }

    @NotNull
    public final b1<Void> G(@NotNull ImageRequest imageRequest) {
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        a aVar = K;
        aVar.d(imageRequest);
        int x10 = imageRequest.x();
        if (x10 != 0) {
            if (x10 != 2 && x10 != 3) {
                Uri w10 = imageRequest.w();
                Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
                String c10 = aVar.c(w10);
                throw new IllegalArgumentException("Unsupported uri scheme for encoded image fetch! Uri is: " + c10);
            }
            return J();
        }
        return P();
    }

    @NotNull
    public final b1<o2.a<y3.e>> H() {
        return (b1) this.I.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> I() {
        return (b1) this.E.getValue();
    }

    @NotNull
    public final b1<Void> J() {
        Object value = this.f66970z.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (b1) value;
    }

    @NotNull
    public final b1<o2.a<y3.e>> K() {
        return (b1) this.C.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> L() {
        return (b1) this.H.getValue();
    }

    @RequiresApi(29)
    @NotNull
    public final b1<o2.a<y3.e>> M() {
        return (b1) this.F.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> N() {
        return (b1) this.D.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> O() {
        return (b1) this.f66966v.getValue();
    }

    @NotNull
    public final b1<Void> P() {
        Object value = this.f66968x.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (b1) value;
    }

    @NotNull
    public final b1<o2.a<y3.e>> R() {
        return (b1) this.G.getValue();
    }

    @NotNull
    public final b1<o2.a<y3.e>> f0(@NotNull b1<y3.k> inputProducer) {
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
        if (!f4.b.d()) {
            com.facebook.imagepipeline.producers.q j10 = this.f66946b.j(inputProducer);
            Intrinsics.checkNotNullExpressionValue(j10, "newDecodeProducer(...)");
            return e0(j10);
        }
        f4.b.a("ProducerSequenceFactory#newBitmapCacheGetToDecodeSequence");
        try {
            com.facebook.imagepipeline.producers.q j11 = this.f66946b.j(inputProducer);
            Intrinsics.checkNotNullExpressionValue(j11, "newDecodeProducer(...)");
            return e0(j11);
        } finally {
            f4.b.b();
        }
    }

    @NotNull
    public final synchronized b1<y3.k> i0(@NotNull v0<?> networkFetcher) {
        try {
            Intrinsics.checkNotNullParameter(networkFetcher, "networkFetcher");
            boolean z10 = false;
            if (!f4.b.d()) {
                b1<y3.k> y10 = this.f66946b.y(networkFetcher);
                Intrinsics.checkNotNullExpressionValue(y10, "newNetworkFetchProducer(...)");
                com.facebook.imagepipeline.producers.a a10 = z.a(k0(y10));
                Intrinsics.checkNotNullExpressionValue(a10, "newAddImageTransformMetaDataProducer(...)");
                z zVar = this.f66946b;
                if (this.f66948d && this.f66951g != DownsampleMode.NEVER) {
                    z10 = true;
                }
                return zVar.D(a10, z10, this.f66955k);
            }
            f4.b.a("ProducerSequenceFactory#createCommonNetworkFetchToEncodedMemorySequence");
            b1<y3.k> y11 = this.f66946b.y(networkFetcher);
            Intrinsics.checkNotNullExpressionValue(y11, "newNetworkFetchProducer(...)");
            com.facebook.imagepipeline.producers.a a11 = z.a(k0(y11));
            Intrinsics.checkNotNullExpressionValue(a11, "newAddImageTransformMetaDataProducer(...)");
            z zVar2 = this.f66946b;
            if (this.f66948d && this.f66951g != DownsampleMode.NEVER) {
                z10 = true;
            }
            i1 D = zVar2.D(a11, z10, this.f66955k);
            f4.b.b();
            return D;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @NotNull
    public final b1<y3.k> x() {
        Object value = this.B.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (b1) value;
    }

    @NotNull
    public final b1<y3.k> y() {
        Object value = this.A.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (b1) value;
    }

    @NotNull
    public final b1<y3.k> z() {
        Object value = this.f66967w.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (b1) value;
    }
}

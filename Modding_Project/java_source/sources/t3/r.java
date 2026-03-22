package t3;

import android.net.Uri;
import android.os.StrictMode;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.fresco.urimod.UriModifier;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.j1;
import com.facebook.imagepipeline.producers.n1;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImagePipeline.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImagePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1154:1\n40#2,9:1155\n40#2,9:1164\n40#2,9:1180\n40#2,9:1189\n40#2,9:1198\n40#2,9:1207\n216#3,2:1173\n216#3,2:1175\n216#3,2:1178\n1#4:1177\n*S KotlinDebug\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n*L\n418#1:1155,9\n550#1:1164,9\n902#1:1180,9\n967#1:1189,9\n1005#1:1198,9\n1039#1:1207,9\n610#1:1173,2\n638#1:1175,2\n768#1:1178,2\n*E\n"})
/* loaded from: classes3.dex */
public final class r {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f66874n = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final CancellationException f66875o = new CancellationException("Prefetching is not enabled");
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final CancellationException f66876p = new CancellationException("ImageRequest is null");
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final CancellationException f66877q = new CancellationException("Modified URL is null");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final s0 f66878a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final k2.k<Boolean> f66879b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final k2.k<c> f66880c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final a4.e f66881d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final a4.d f66882e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final r3.w<f2.a, y3.e> f66883f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final r3.w<f2.a, PooledByteBuffer> f66884g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final r3.j f66885h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final n1 f66886i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final k2.k<Boolean> f66887j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final AtomicLong f66888k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final k2.k<Boolean> f66889l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final t f66890m;

    /* compiled from: ImagePipeline.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImagePipeline.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ImageRequest.CacheChoice.values().length];
            try {
                iArr[ImageRequest.CacheChoice.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImageRequest.CacheChoice.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImageRequest.CacheChoice.DYNAMIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public r(@NotNull s0 producerSequenceFactory, @NotNull Set<? extends a4.e> requestListeners, @NotNull Set<? extends a4.d> requestListener2s, @NotNull k2.k<Boolean> isPrefetchEnabledSupplier, @NotNull r3.w<f2.a, y3.e> bitmapMemoryCache, @NotNull r3.w<f2.a, PooledByteBuffer> encodedMemoryCache, @NotNull k2.k<c> diskCachesStoreSupplier, @NotNull r3.j cacheKeyFactory, @NotNull n1 threadHandoffProducerQueue, @NotNull k2.k<Boolean> suppressBitmapPrefetchingSupplier, @NotNull k2.k<Boolean> lazyDataSource, @Nullable com.facebook.callercontext.a aVar, @NotNull t config) {
        Intrinsics.checkNotNullParameter(producerSequenceFactory, "producerSequenceFactory");
        Intrinsics.checkNotNullParameter(requestListeners, "requestListeners");
        Intrinsics.checkNotNullParameter(requestListener2s, "requestListener2s");
        Intrinsics.checkNotNullParameter(isPrefetchEnabledSupplier, "isPrefetchEnabledSupplier");
        Intrinsics.checkNotNullParameter(bitmapMemoryCache, "bitmapMemoryCache");
        Intrinsics.checkNotNullParameter(encodedMemoryCache, "encodedMemoryCache");
        Intrinsics.checkNotNullParameter(diskCachesStoreSupplier, "diskCachesStoreSupplier");
        Intrinsics.checkNotNullParameter(cacheKeyFactory, "cacheKeyFactory");
        Intrinsics.checkNotNullParameter(threadHandoffProducerQueue, "threadHandoffProducerQueue");
        Intrinsics.checkNotNullParameter(suppressBitmapPrefetchingSupplier, "suppressBitmapPrefetchingSupplier");
        Intrinsics.checkNotNullParameter(lazyDataSource, "lazyDataSource");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f66878a = producerSequenceFactory;
        this.f66879b = isPrefetchEnabledSupplier;
        this.f66880c = diskCachesStoreSupplier;
        this.f66881d = new a4.c((Set<a4.e>) requestListeners);
        this.f66882e = new a4.b(requestListener2s);
        this.f66888k = new AtomicLong();
        this.f66883f = bitmapMemoryCache;
        this.f66884g = encodedMemoryCache;
        this.f66885h = cacheKeyFactory;
        this.f66886i = threadHandoffProducerQueue;
        this.f66887j = suppressBitmapPrefetchingSupplier;
        this.f66889l = lazyDataSource;
        this.f66890m = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(f2.a it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return true;
    }

    public static /* synthetic */ com.facebook.datasource.b f(r rVar, ImageRequest imageRequest, Object obj, ImageRequest.RequestLevel requestLevel, a4.e eVar, String str, int i10, Object obj2) {
        ImageRequest.RequestLevel requestLevel2;
        a4.e eVar2;
        String str2;
        if ((i10 & 4) != 0) {
            requestLevel2 = null;
        } else {
            requestLevel2 = requestLevel;
        }
        if ((i10 & 8) != 0) {
            eVar2 = null;
        } else {
            eVar2 = eVar;
        }
        if ((i10 & 16) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        return rVar.e(imageRequest, obj, requestLevel2, eVar2, str2);
    }

    private final boolean m(ImageRequest imageRequest) {
        c cVar = this.f66880c.get();
        Intrinsics.checkNotNullExpressionValue(cVar, "get(...)");
        c cVar2 = cVar;
        f2.a b10 = this.f66885h.b(imageRequest, null);
        String g10 = imageRequest.g();
        if (g10 != null) {
            r3.i iVar = cVar2.c().get(g10);
            if (iVar == null) {
                return false;
            }
            Intrinsics.checkNotNull(b10);
            return iVar.h(b10);
        }
        for (Map.Entry<String, r3.i> entry : cVar2.c().entrySet()) {
            Intrinsics.checkNotNull(b10);
            if (entry.getValue().h(b10)) {
                return true;
            }
        }
        return false;
    }

    private final <T> com.facebook.datasource.b<o2.a<T>> s(b1<o2.a<T>> b1Var, ImageRequest imageRequest, ImageRequest.RequestLevel requestLevel, Object obj, a4.e eVar, String str) {
        return t(b1Var, imageRequest, requestLevel, obj, eVar, str, null);
    }

    private final <T> com.facebook.datasource.b<o2.a<T>> t(b1<o2.a<T>> b1Var, ImageRequest imageRequest, ImageRequest.RequestLevel requestLevel, Object obj, a4.e eVar, String str, Map<String, ?> map) {
        com.facebook.datasource.b<o2.a<T>> b10;
        ImageRequest.RequestLevel max;
        String g10;
        boolean z10;
        boolean z11;
        if (!f4.b.d()) {
            com.facebook.imagepipeline.producers.f0 f0Var = new com.facebook.imagepipeline.producers.f0(k(imageRequest, eVar), this.f66882e);
            try {
                ImageRequest.RequestLevel max2 = ImageRequest.RequestLevel.getMax(imageRequest.l(), requestLevel);
                Intrinsics.checkNotNullExpressionValue(max2, "getMax(...)");
                String g11 = g();
                if (!imageRequest.q() && r2.d.o(imageRequest.w())) {
                    z11 = false;
                    j1 j1Var = new j1(imageRequest, g11, str, f0Var, obj, max2, false, z11, imageRequest.p(), this.f66890m);
                    j1Var.putExtras(map);
                    return u3.c.F(b1Var, j1Var, f0Var);
                }
                z11 = true;
                j1 j1Var2 = new j1(imageRequest, g11, str, f0Var, obj, max2, false, z11, imageRequest.p(), this.f66890m);
                j1Var2.putExtras(map);
                return u3.c.F(b1Var, j1Var2, f0Var);
            } catch (Exception e10) {
                return com.facebook.datasource.c.b(e10);
            }
        }
        f4.b.a("ImagePipeline#submitFetchRequest");
        try {
            com.facebook.imagepipeline.producers.f0 f0Var2 = new com.facebook.imagepipeline.producers.f0(k(imageRequest, eVar), this.f66882e);
            try {
                max = ImageRequest.RequestLevel.getMax(imageRequest.l(), requestLevel);
                Intrinsics.checkNotNullExpressionValue(max, "getMax(...)");
                g10 = g();
            } catch (Exception e11) {
                b10 = com.facebook.datasource.c.b(e11);
            }
            if (!imageRequest.q() && r2.d.o(imageRequest.w())) {
                z10 = false;
                j1 j1Var3 = new j1(imageRequest, g10, str, f0Var2, obj, max, false, z10, imageRequest.p(), this.f66890m);
                j1Var3.putExtras(map);
                b10 = u3.c.F(b1Var, j1Var3, f0Var2);
                f4.b.b();
                return b10;
            }
            z10 = true;
            j1 j1Var32 = new j1(imageRequest, g10, str, f0Var2, obj, max, false, z10, imageRequest.p(), this.f66890m);
            j1Var32.putExtras(map);
            b10 = u3.c.F(b1Var, j1Var32, f0Var2);
            f4.b.b();
            return b10;
        } catch (Throwable th2) {
            f4.b.b();
            throw th2;
        }
    }

    private final com.facebook.datasource.b<Void> u(b1<Void> b1Var, ImageRequest imageRequest, ImageRequest.RequestLevel requestLevel, Object obj, Priority priority, a4.e eVar) {
        boolean z10;
        ImageRequest imageRequest2 = imageRequest;
        com.facebook.imagepipeline.producers.f0 f0Var = new com.facebook.imagepipeline.producers.f0(k(imageRequest, eVar), this.f66882e);
        Uri w10 = imageRequest.w();
        Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
        Uri modifyPrefetchUri = UriModifier.f21INSTANCE.modifyPrefetchUri(w10, obj);
        if (modifyPrefetchUri == null) {
            com.facebook.datasource.b<Void> b10 = com.facebook.datasource.c.b(f66877q);
            Intrinsics.checkNotNullExpressionValue(b10, "immediateFailedDataSource(...)");
            return b10;
        }
        if (!Intrinsics.areEqual(w10, modifyPrefetchUri)) {
            imageRequest2 = ImageRequestBuilder.b(imageRequest).Q(modifyPrefetchUri).a();
        }
        ImageRequest imageRequest3 = imageRequest2;
        try {
            ImageRequest.RequestLevel max = ImageRequest.RequestLevel.getMax(imageRequest3.l(), requestLevel);
            Intrinsics.checkNotNullExpressionValue(max, "getMax(...)");
            String g10 = g();
            u n10 = this.f66890m.n();
            if (n10 != null && n10.b() && imageRequest3.q()) {
                z10 = true;
            } else {
                z10 = false;
            }
            return u3.d.f67794j.a(b1Var, new j1(imageRequest3, g10, f0Var, obj, max, true, z10, priority, this.f66890m), f0Var);
        } catch (Exception e10) {
            return com.facebook.datasource.c.b(e10);
        }
    }

    public final void b() {
        k2.i<f2.a> iVar = new k2.i() { // from class: t3.q
            @Override // k2.i
            public final boolean apply(Object obj) {
                boolean c10;
                c10 = r.c((f2.a) obj);
                return c10;
            }
        };
        this.f66883f.b(iVar);
        this.f66884g.b(iVar);
    }

    @NotNull
    public final com.facebook.datasource.b<o2.a<y3.e>> d(@Nullable ImageRequest imageRequest, @Nullable Object obj) {
        return f(this, imageRequest, obj, null, null, null, 24, null);
    }

    @NotNull
    public final com.facebook.datasource.b<o2.a<y3.e>> e(@Nullable ImageRequest imageRequest, @Nullable Object obj, @Nullable ImageRequest.RequestLevel requestLevel, @Nullable a4.e eVar, @Nullable String str) {
        if (imageRequest == null) {
            com.facebook.datasource.b<o2.a<y3.e>> b10 = com.facebook.datasource.c.b(new NullPointerException());
            Intrinsics.checkNotNullExpressionValue(b10, "immediateFailedDataSource(...)");
            return b10;
        }
        try {
            b1<o2.a<y3.e>> E = this.f66878a.E(imageRequest);
            if (requestLevel == null) {
                requestLevel = ImageRequest.RequestLevel.FULL_FETCH;
            }
            return s(E, imageRequest, requestLevel, obj, eVar, str);
        } catch (Exception e10) {
            return com.facebook.datasource.c.b(e10);
        }
    }

    @NotNull
    public final String g() {
        return String.valueOf(this.f66888k.getAndIncrement());
    }

    @NotNull
    public final r3.w<f2.a, y3.e> h() {
        return this.f66883f;
    }

    @Nullable
    public final f2.a i(@Nullable ImageRequest imageRequest, @Nullable Object obj) {
        f2.a c10;
        f2.a c11;
        f2.a aVar = null;
        if (!f4.b.d()) {
            if (imageRequest == null) {
                return null;
            }
            if (imageRequest.m() != null) {
                c11 = this.f66885h.a(imageRequest, obj);
            } else {
                c11 = this.f66885h.c(imageRequest, obj);
            }
            return c11;
        }
        f4.b.a("ImagePipeline#getCacheKey");
        if (imageRequest != null) {
            try {
                if (imageRequest.m() != null) {
                    c10 = this.f66885h.a(imageRequest, obj);
                } else {
                    c10 = this.f66885h.c(imageRequest, obj);
                }
                aVar = c10;
            } finally {
                f4.b.b();
            }
        }
        return aVar;
    }

    @NotNull
    public final r3.j j() {
        return this.f66885h;
    }

    @NotNull
    public final a4.e k(@Nullable ImageRequest imageRequest, @Nullable a4.e eVar) {
        if (imageRequest != null) {
            if (eVar == null) {
                if (imageRequest.r() == null) {
                    return this.f66881d;
                }
                return new a4.c(this.f66881d, imageRequest.r());
            } else if (imageRequest.r() == null) {
                return new a4.c(this.f66881d, eVar);
            } else {
                return new a4.c(this.f66881d, eVar, imageRequest.r());
            }
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final boolean l(@NotNull ImageRequest imageRequest) {
        boolean h10;
        Intrinsics.checkNotNullParameter(imageRequest, "imageRequest");
        c cVar = this.f66880c.get();
        Intrinsics.checkNotNullExpressionValue(cVar, "get(...)");
        c cVar2 = cVar;
        f2.a b10 = this.f66885h.b(imageRequest, null);
        ImageRequest.CacheChoice d10 = imageRequest.d();
        Intrinsics.checkNotNullExpressionValue(d10, "getCacheChoice(...)");
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            int i10 = b.$EnumSwitchMapping$0[d10.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        h10 = m(imageRequest);
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    r3.i a10 = cVar2.a();
                    Intrinsics.checkNotNull(b10);
                    h10 = a10.h(b10);
                }
            } else {
                r3.i b11 = cVar2.b();
                Intrinsics.checkNotNull(b10);
                h10 = b11.h(b10);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return h10;
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th2;
        }
    }

    public final boolean n() {
        return this.f66886i.e();
    }

    public final void o() {
        this.f66886i.b();
    }

    @NotNull
    public final com.facebook.datasource.b<Void> p(@Nullable ImageRequest imageRequest, @Nullable Object obj, @Nullable a4.e eVar) {
        return q(imageRequest, obj, Priority.MEDIUM, eVar);
    }

    @NotNull
    public final com.facebook.datasource.b<Void> q(@Nullable ImageRequest imageRequest, @Nullable Object obj, @NotNull Priority priority, @Nullable a4.e eVar) {
        Intrinsics.checkNotNullParameter(priority, "priority");
        if (!this.f66879b.get().booleanValue()) {
            com.facebook.datasource.b<Void> b10 = com.facebook.datasource.c.b(f66875o);
            Intrinsics.checkNotNullExpressionValue(b10, "immediateFailedDataSource(...)");
            return b10;
        } else if (imageRequest == null) {
            com.facebook.datasource.b<Void> b11 = com.facebook.datasource.c.b(new NullPointerException("imageRequest is null"));
            Intrinsics.checkNotNull(b11);
            return b11;
        } else {
            try {
                return u(this.f66878a.G(imageRequest), imageRequest, ImageRequest.RequestLevel.FULL_FETCH, obj, priority, eVar);
            } catch (Exception e10) {
                return com.facebook.datasource.c.b(e10);
            }
        }
    }

    public final void r() {
        this.f66886i.d();
    }
}

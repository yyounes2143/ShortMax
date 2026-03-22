package t3;

import android.content.Context;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.core.DownsampleMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s2.b;
import t3.s;
/* compiled from: ImagePipelineExperiments.kt */
@Metadata
/* loaded from: classes3.dex */
public final class u {
    @NotNull
    public static final b M = new b(null);
    private final int A;
    private final boolean B;
    private final boolean C;
    private final boolean D;
    private final boolean E;
    private final boolean F;
    private final boolean G;
    private final boolean H;
    private final int I;
    private final boolean J;
    @NotNull
    private final c4.f K;
    private final boolean L;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f66971a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f66972b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final s2.b f66973c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f66974d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f66975e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f66976f;

    /* renamed from: g  reason: collision with root package name */
    private final int f66977g;

    /* renamed from: h  reason: collision with root package name */
    private final int f66978h;

    /* renamed from: i  reason: collision with root package name */
    private final int f66979i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f66980j;

    /* renamed from: k  reason: collision with root package name */
    private final int f66981k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f66982l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f66983m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final d f66984n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final k2.k<Boolean> f66985o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f66986p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f66987q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final k2.k<Boolean> f66988r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f66989s;

    /* renamed from: t  reason: collision with root package name */
    private final long f66990t;

    /* renamed from: u  reason: collision with root package name */
    private final boolean f66991u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f66992v;

    /* renamed from: w  reason: collision with root package name */
    private final boolean f66993w;

    /* renamed from: x  reason: collision with root package name */
    private final boolean f66994x;

    /* renamed from: y  reason: collision with root package name */
    private final boolean f66995y;

    /* renamed from: z  reason: collision with root package name */
    private final boolean f66996z;

    /* compiled from: ImagePipelineExperiments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public boolean A;
        public boolean B;
        public int C;
        public boolean D;
        public boolean E;
        public boolean F;
        public boolean G;
        public boolean H;
        public int I;
        public boolean J;
        public boolean K;
        @NotNull
        public c4.f L;
        public boolean M;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final s.a f66997a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f66998b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f66999c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f67000d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public s2.b f67001e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f67002f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f67003g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f67004h;

        /* renamed from: i  reason: collision with root package name */
        public int f67005i;

        /* renamed from: j  reason: collision with root package name */
        public int f67006j;

        /* renamed from: k  reason: collision with root package name */
        public int f67007k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f67008l;

        /* renamed from: m  reason: collision with root package name */
        public int f67009m;

        /* renamed from: n  reason: collision with root package name */
        public boolean f67010n;

        /* renamed from: o  reason: collision with root package name */
        public boolean f67011o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        public d f67012p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        public k2.k<Boolean> f67013q;

        /* renamed from: r  reason: collision with root package name */
        public boolean f67014r;

        /* renamed from: s  reason: collision with root package name */
        public boolean f67015s;
        @NotNull

        /* renamed from: t  reason: collision with root package name */
        public k2.k<Boolean> f67016t;

        /* renamed from: u  reason: collision with root package name */
        public boolean f67017u;

        /* renamed from: v  reason: collision with root package name */
        public long f67018v;

        /* renamed from: w  reason: collision with root package name */
        public boolean f67019w;

        /* renamed from: x  reason: collision with root package name */
        public boolean f67020x;

        /* renamed from: y  reason: collision with root package name */
        public boolean f67021y;

        /* renamed from: z  reason: collision with root package name */
        public boolean f67022z;

        public a(@NotNull s.a configBuilder) {
            Intrinsics.checkNotNullParameter(configBuilder, "configBuilder");
            this.f66997a = configBuilder;
            this.f67005i = 1000;
            this.f67009m = 2048;
            k2.k<Boolean> a10 = k2.l.a(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(a10, "of(...)");
            this.f67016t = a10;
            this.f67021y = true;
            this.f67022z = true;
            this.C = 20;
            this.I = 30;
            this.L = new c4.f(false, false, 3, null);
        }

        @NotNull
        public final u a() {
            return new u(this, null);
        }
    }

    /* compiled from: ImagePipelineExperiments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: ImagePipelineExperiments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c implements d {
        @Override // t3.u.d
        @NotNull
        public z a(@NotNull Context context, @NotNull n2.a byteArrayPool, @NotNull w3.b imageDecoder, @NotNull w3.d progressiveJpegConfig, @NotNull DownsampleMode downsampleMode, boolean z10, boolean z11, @NotNull o executorSupplier, @NotNull n2.g pooledByteBufferFactory, @NotNull n2.j pooledByteStreams, @NotNull r3.w<f2.a, y3.e> bitmapMemoryCache, @NotNull r3.w<f2.a, PooledByteBuffer> encodedMemoryCache, @NotNull k2.k<t3.c> diskCachesStoreSupplier, @NotNull r3.j cacheKeyFactory, @NotNull q3.d platformBitmapFactory, int i10, int i11, boolean z12, int i12, @NotNull t3.a closeableReferenceFactory, boolean z13, int i13) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(byteArrayPool, "byteArrayPool");
            Intrinsics.checkNotNullParameter(imageDecoder, "imageDecoder");
            Intrinsics.checkNotNullParameter(progressiveJpegConfig, "progressiveJpegConfig");
            Intrinsics.checkNotNullParameter(downsampleMode, "downsampleMode");
            Intrinsics.checkNotNullParameter(executorSupplier, "executorSupplier");
            Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
            Intrinsics.checkNotNullParameter(pooledByteStreams, "pooledByteStreams");
            Intrinsics.checkNotNullParameter(bitmapMemoryCache, "bitmapMemoryCache");
            Intrinsics.checkNotNullParameter(encodedMemoryCache, "encodedMemoryCache");
            Intrinsics.checkNotNullParameter(diskCachesStoreSupplier, "diskCachesStoreSupplier");
            Intrinsics.checkNotNullParameter(cacheKeyFactory, "cacheKeyFactory");
            Intrinsics.checkNotNullParameter(platformBitmapFactory, "platformBitmapFactory");
            Intrinsics.checkNotNullParameter(closeableReferenceFactory, "closeableReferenceFactory");
            return new z(context, byteArrayPool, imageDecoder, progressiveJpegConfig, downsampleMode, z10, z11, executorSupplier, pooledByteBufferFactory, bitmapMemoryCache, encodedMemoryCache, diskCachesStoreSupplier, cacheKeyFactory, platformBitmapFactory, i10, i11, z12, i12, closeableReferenceFactory, z13, i13);
        }
    }

    /* compiled from: ImagePipelineExperiments.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface d {
        @NotNull
        z a(@NotNull Context context, @NotNull n2.a aVar, @NotNull w3.b bVar, @NotNull w3.d dVar, @NotNull DownsampleMode downsampleMode, boolean z10, boolean z11, @NotNull o oVar, @NotNull n2.g gVar, @NotNull n2.j jVar, @NotNull r3.w<f2.a, y3.e> wVar, @NotNull r3.w<f2.a, PooledByteBuffer> wVar2, @NotNull k2.k<t3.c> kVar, @NotNull r3.j jVar2, @NotNull q3.d dVar2, int i10, int i11, boolean z12, int i12, @NotNull t3.a aVar2, boolean z13, int i13);
    }

    public /* synthetic */ u(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    public final boolean A() {
        return this.L;
    }

    public final boolean B() {
        return this.f66972b;
    }

    public final boolean C() {
        return this.f66996z;
    }

    public final boolean D() {
        return this.f66993w;
    }

    public final boolean E() {
        return this.f66995y;
    }

    public final boolean F() {
        return this.f66994x;
    }

    public final boolean G() {
        return this.f66989s;
    }

    public final boolean H() {
        return this.f66986p;
    }

    @NotNull
    public final k2.k<Boolean> I() {
        return this.f66985o;
    }

    public final boolean J() {
        return this.f66982l;
    }

    public final boolean K() {
        return this.f66983m;
    }

    public final boolean L() {
        return this.f66971a;
    }

    public final boolean a() {
        return this.B;
    }

    public final boolean b() {
        return this.G;
    }

    public final int c() {
        return this.I;
    }

    public final int d() {
        return this.f66977g;
    }

    public final boolean e() {
        return this.f66980j;
    }

    public final int f() {
        return this.f66979i;
    }

    public final int g() {
        return this.f66978h;
    }

    public final boolean h() {
        return this.H;
    }

    public final boolean i() {
        return this.f66992v;
    }

    public final boolean j() {
        return this.f66987q;
    }

    public final boolean k() {
        return this.C;
    }

    public final boolean l() {
        return this.f66991u;
    }

    public final int m() {
        return this.f66981k;
    }

    public final long n() {
        return this.f66990t;
    }

    @NotNull
    public final c4.f o() {
        return this.K;
    }

    @NotNull
    public final d p() {
        return this.f66984n;
    }

    public final boolean q() {
        return this.E;
    }

    public final boolean r() {
        return this.D;
    }

    public final boolean s() {
        return this.F;
    }

    @NotNull
    public final k2.k<Boolean> t() {
        return this.f66988r;
    }

    public final int u() {
        return this.A;
    }

    public final boolean v() {
        return this.f66976f;
    }

    public final boolean w() {
        return this.f66975e;
    }

    public final boolean x() {
        return this.f66974d;
    }

    @Nullable
    public final s2.b y() {
        return this.f66973c;
    }

    @Nullable
    public final b.a z() {
        return null;
    }

    private u(a aVar) {
        this.f66971a = aVar.f66999c;
        this.f66972b = aVar.f67000d;
        this.f66973c = aVar.f67001e;
        this.f66974d = aVar.f67002f;
        this.f66975e = aVar.f67003g;
        this.f66976f = aVar.f67004h;
        this.f66977g = aVar.f67005i;
        this.f66978h = aVar.f67006j;
        this.f66979i = aVar.f67007k;
        this.f66980j = aVar.f67008l;
        this.f66981k = aVar.f67009m;
        this.f66982l = aVar.f67010n;
        this.f66983m = aVar.f67011o;
        d dVar = aVar.f67012p;
        this.f66984n = dVar == null ? new c() : dVar;
        k2.k<Boolean> BOOLEAN_FALSE = aVar.f67013q;
        if (BOOLEAN_FALSE == null) {
            BOOLEAN_FALSE = k2.l.f60584b;
            Intrinsics.checkNotNullExpressionValue(BOOLEAN_FALSE, "BOOLEAN_FALSE");
        }
        this.f66985o = BOOLEAN_FALSE;
        this.f66986p = aVar.f67014r;
        this.f66987q = aVar.f67015s;
        this.f66988r = aVar.f67016t;
        this.f66989s = aVar.f67017u;
        this.f66990t = aVar.f67018v;
        this.f66991u = aVar.f67019w;
        this.f66992v = aVar.f67020x;
        this.f66993w = aVar.f67021y;
        this.f66994x = aVar.f67022z;
        this.f66995y = aVar.A;
        this.f66996z = aVar.B;
        this.A = aVar.C;
        this.G = aVar.H;
        this.I = aVar.I;
        this.B = aVar.D;
        this.C = aVar.E;
        this.D = aVar.F;
        this.E = aVar.G;
        this.F = aVar.f66998b;
        this.H = aVar.J;
        this.J = aVar.K;
        this.K = aVar.L;
        this.L = aVar.M;
    }
}

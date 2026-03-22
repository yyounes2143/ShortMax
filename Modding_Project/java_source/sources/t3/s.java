package t3;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.core.DownsampleMode;
import com.facebook.imagepipeline.producers.v0;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r3.m;
import r3.w;
import t3.u;
/* compiled from: ImagePipelineConfig.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,577:1\n40#2,9:578\n*S KotlinDebug\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig\n*L\n159#1:578,9\n*E\n"})
/* loaded from: classes3.dex */
public final class s implements t {
    @NotNull
    public static final b M = new b(null);
    @NotNull
    private static c N = new c();
    @NotNull
    private final Set<a4.d> A;
    @NotNull
    private final Set<com.facebook.imagepipeline.producers.o> B;
    private final boolean C;
    @NotNull
    private final g2.b D;
    @NotNull
    private final u E;
    private final boolean F;
    @NotNull
    private final v3.a G;
    @Nullable
    private final r3.w<f2.a, y3.e> H;
    @Nullable
    private final r3.w<f2.a, PooledByteBuffer> I;
    @Nullable
    private final i2.g J;
    @NotNull
    private final r3.a K;
    @Nullable
    private final Map<String, g2.b> L;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap.Config f66892a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final k2.k<r3.x> f66893b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final w.a f66894c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final w.a f66895d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final m.b<f2.a> f66896e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final r3.j f66897f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Context f66898g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final DownsampleMode f66899h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final k2.k<t3.c> f66900i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final k2.k<r3.x> f66901j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final o f66902k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final r3.s f66903l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final w3.b f66904m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final g4.d f66905n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final k2.k<Boolean> f66906o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Integer f66907p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final k2.k<Boolean> f66908q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final g2.b f66909r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final n2.c f66910s;

    /* renamed from: t  reason: collision with root package name */
    private final int f66911t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final v0<?> f66912u;

    /* renamed from: v  reason: collision with root package name */
    private final int f66913v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final q3.d f66914w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final b4.d0 f66915x;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final w3.d f66916y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private final Set<a4.e> f66917z;

    /* compiled from: ImagePipelineConfig.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,577:1\n1#2:578\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        private boolean A;
        @Nullable
        private g2.b B;
        @Nullable
        private p C;
        @Nullable
        private k2.k<t3.c> D;
        private int E;
        @NotNull
        private final u.a F;
        private boolean G;
        @NotNull
        private v3.a H;
        @Nullable
        private r3.w<f2.a, y3.e> I;
        @Nullable
        private r3.w<f2.a, PooledByteBuffer> J;
        @Nullable
        private i2.g K;
        @Nullable
        private r3.a L;
        @Nullable
        private Map<String, ? extends g2.b> M;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Bitmap.Config f66918a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private k2.k<r3.x> f66919b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private m.b<f2.a> f66920c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private w.a f66921d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private w.a f66922e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private r3.j f66923f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final Context f66924g;
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private DownsampleMode f66925h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private k2.k<r3.x> f66926i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private o f66927j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private r3.s f66928k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private w3.b f66929l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private k2.k<Boolean> f66930m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private g4.d f66931n;
        @Nullable

        /* renamed from: o  reason: collision with root package name */
        private Integer f66932o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private k2.k<Boolean> f66933p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        private g2.b f66934q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private n2.c f66935r;
        @Nullable

        /* renamed from: s  reason: collision with root package name */
        private Integer f66936s;
        @Nullable

        /* renamed from: t  reason: collision with root package name */
        private v0<?> f66937t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private q3.d f66938u;
        @Nullable

        /* renamed from: v  reason: collision with root package name */
        private b4.d0 f66939v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private w3.d f66940w;
        @Nullable

        /* renamed from: x  reason: collision with root package name */
        private Set<? extends a4.e> f66941x;
        @Nullable

        /* renamed from: y  reason: collision with root package name */
        private Set<? extends a4.d> f66942y;
        @Nullable

        /* renamed from: z  reason: collision with root package name */
        private Set<? extends com.facebook.imagepipeline.producers.o> f66943z;

        public a(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.f66925h = DownsampleMode.AUTO;
            this.A = true;
            this.E = -1;
            this.F = new u.a(this);
            this.G = true;
            this.H = new v3.b();
            this.f66924g = context;
        }

        @Nullable
        public final w3.c A() {
            return null;
        }

        @Nullable
        public final g4.d B() {
            return this.f66931n;
        }

        @Nullable
        public final Integer C() {
            return this.f66932o;
        }

        @Nullable
        public final g2.b D() {
            return this.f66934q;
        }

        @Nullable
        public final Integer E() {
            return this.f66936s;
        }

        @Nullable
        public final n2.c F() {
            return this.f66935r;
        }

        @Nullable
        public final v0<?> G() {
            return this.f66937t;
        }

        @Nullable
        public final q3.d H() {
            return this.f66938u;
        }

        @Nullable
        public final b4.d0 I() {
            return this.f66939v;
        }

        @Nullable
        public final w3.d J() {
            return this.f66940w;
        }

        @Nullable
        public final Set<a4.d> K() {
            return this.f66942y;
        }

        @Nullable
        public final Set<a4.e> L() {
            return this.f66941x;
        }

        public final boolean M() {
            return this.A;
        }

        @Nullable
        public final i2.g N() {
            return this.K;
        }

        @Nullable
        public final g2.b O() {
            return this.B;
        }

        @Nullable
        public final k2.k<Boolean> P() {
            return this.f66933p;
        }

        @NotNull
        public final a Q(@Nullable k2.k<r3.x> kVar) {
            if (kVar != null) {
                this.f66919b = kVar;
                return this;
            }
            throw new IllegalStateException("Required value was null.");
        }

        @NotNull
        public final a R(@Nullable Bitmap.Config config) {
            this.f66918a = config;
            return this;
        }

        @NotNull
        public final a S(@Nullable r3.j jVar) {
            this.f66923f = jVar;
            return this;
        }

        @ms.c
        @NotNull
        public final a T(boolean z10) {
            if (z10) {
                U(DownsampleMode.ALWAYS);
            } else {
                U(DownsampleMode.AUTO);
            }
            return this;
        }

        @NotNull
        public final a U(@NotNull DownsampleMode downsampleMode) {
            Intrinsics.checkNotNullParameter(downsampleMode, "downsampleMode");
            this.f66925h = downsampleMode;
            return this;
        }

        @NotNull
        public final a V(@Nullable g2.b bVar) {
            this.f66934q = bVar;
            return this;
        }

        @NotNull
        public final a W(@Nullable n2.c cVar) {
            this.f66935r = cVar;
            return this;
        }

        @NotNull
        public final a X(@Nullable v0<?> v0Var) {
            this.f66937t = v0Var;
            return this;
        }

        @NotNull
        public final a Y(boolean z10) {
            this.A = z10;
            return this;
        }

        @NotNull
        public final a Z(@Nullable g2.b bVar) {
            this.B = bVar;
            return this;
        }

        @NotNull
        public final s a() {
            return new s(this, null);
        }

        @Nullable
        public final Bitmap.Config b() {
            return this.f66918a;
        }

        @Nullable
        public final r3.w<f2.a, y3.e> c() {
            return this.I;
        }

        @Nullable
        public final m.b<f2.a> d() {
            return this.f66920c;
        }

        @Nullable
        public final r3.a e() {
            return this.L;
        }

        @Nullable
        public final k2.k<r3.x> f() {
            return this.f66919b;
        }

        @Nullable
        public final w.a g() {
            return this.f66921d;
        }

        @Nullable
        public final r3.j h() {
            return this.f66923f;
        }

        @Nullable
        public final com.facebook.callercontext.a i() {
            return null;
        }

        @NotNull
        public final v3.a j() {
            return this.H;
        }

        @NotNull
        public final Context k() {
            return this.f66924g;
        }

        @Nullable
        public final Set<com.facebook.imagepipeline.producers.o> l() {
            return this.f66943z;
        }

        public final boolean m() {
            return this.G;
        }

        @Nullable
        public final k2.k<t3.c> n() {
            return this.D;
        }

        @NotNull
        public final DownsampleMode o() {
            return this.f66925h;
        }

        @Nullable
        public final Map<String, g2.b> p() {
            return this.M;
        }

        @Nullable
        public final k2.k<Boolean> q() {
            return this.f66930m;
        }

        @Nullable
        public final r3.w<f2.a, PooledByteBuffer> r() {
            return this.J;
        }

        @Nullable
        public final k2.k<r3.x> s() {
            return this.f66926i;
        }

        @Nullable
        public final w.a t() {
            return this.f66922e;
        }

        @Nullable
        public final o u() {
            return this.f66927j;
        }

        @NotNull
        public final u.a v() {
            return this.F;
        }

        @Nullable
        public final p w() {
            return this.C;
        }

        public final int x() {
            return this.E;
        }

        @Nullable
        public final r3.s y() {
            return this.f66928k;
        }

        @Nullable
        public final w3.b z() {
            return this.f66929l;
        }
    }

    /* compiled from: ImagePipelineConfig.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Companion\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,577:1\n40#2,9:578\n*S KotlinDebug\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Companion\n*L\n537#1:578,9\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final g2.b f(Context context) {
            g2.b n10;
            if (!f4.b.d()) {
                n10 = g2.b.m(context).n();
            } else {
                f4.b.a("DiskCacheConfig.getDefaultMainDiskCacheConfig");
                try {
                    n10 = g2.b.m(context).n();
                } finally {
                    f4.b.b();
                }
            }
            Intrinsics.checkNotNullExpressionValue(n10, "traceSection(...)");
            return n10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final g4.d g(a aVar) {
            if (aVar.B() != null && aVar.C() != null) {
                throw new IllegalStateException("You can't define a custom ImageTranscoderFactory and provide an ImageTranscoderType");
            }
            return aVar.B();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int h(a aVar, u uVar) {
            Integer E = aVar.E();
            if (E != null) {
                return E.intValue();
            }
            if (uVar.n() == 2 && Build.VERSION.SDK_INT >= 27) {
                return 2;
            }
            if (uVar.n() == 1) {
                return 1;
            }
            uVar.n();
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void j(s2.b bVar, u uVar, s2.a aVar) {
            s2.c.f66254c = bVar;
            uVar.z();
            if (aVar != null) {
                bVar.a(aVar);
            }
        }

        @NotNull
        public final c e() {
            return s.N;
        }

        @NotNull
        public final a i(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new a(context);
        }

        private b() {
        }
    }

    /* compiled from: ImagePipelineConfig.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f66944a;

        public final boolean a() {
            return this.f66944a;
        }

        public final void b(boolean z10) {
            this.f66944a = z10;
        }
    }

    public /* synthetic */ s(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @NotNull
    public static final c J() {
        return M.e();
    }

    @NotNull
    public static final a K(@NotNull Context context) {
        return M.i(context);
    }

    @Override // t3.t
    @NotNull
    public k2.k<t3.c> A() {
        return this.f66900i;
    }

    @Override // t3.t
    @NotNull
    public r3.a B() {
        return this.K;
    }

    @Override // t3.t
    @NotNull
    public r3.j C() {
        return this.f66897f;
    }

    @Override // t3.t
    public boolean D() {
        return this.C;
    }

    @Override // t3.t
    @NotNull
    public Set<com.facebook.imagepipeline.producers.o> E() {
        return this.B;
    }

    @Override // t3.t
    @NotNull
    public DownsampleMode F() {
        return this.f66899h;
    }

    @Override // t3.t
    @Nullable
    public com.facebook.callercontext.a G() {
        return null;
    }

    @Override // t3.t
    @NotNull
    public o H() {
        return this.f66902k;
    }

    @Override // t3.t
    @NotNull
    public Set<a4.d> a() {
        return this.A;
    }

    @Override // t3.t
    @Nullable
    public r3.w<f2.a, PooledByteBuffer> b() {
        return this.I;
    }

    @Override // t3.t
    @NotNull
    public w3.d c() {
        return this.f66916y;
    }

    @Override // t3.t
    @Nullable
    public Map<String, g2.b> d() {
        return this.L;
    }

    @Override // t3.t
    @Nullable
    public m.b<f2.a> e() {
        return this.f66896e;
    }

    @Override // t3.t
    public boolean f() {
        return this.F;
    }

    @Override // t3.t
    @Nullable
    public w3.b g() {
        return this.f66904m;
    }

    @Override // t3.t
    @NotNull
    public Context getContext() {
        return this.f66898g;
    }

    @Override // t3.t
    @NotNull
    public k2.k<r3.x> h() {
        return this.f66901j;
    }

    @Override // t3.t
    @NotNull
    public b4.d0 i() {
        return this.f66915x;
    }

    @Override // t3.t
    @NotNull
    public v3.a j() {
        return this.G;
    }

    @Override // t3.t
    @NotNull
    public r3.s k() {
        return this.f66903l;
    }

    @Override // t3.t
    @NotNull
    public k2.k<Boolean> l() {
        return this.f66908q;
    }

    @Override // t3.t
    @NotNull
    public n2.c m() {
        return this.f66910s;
    }

    @Override // t3.t
    @NotNull
    public u n() {
        return this.E;
    }

    @Override // t3.t
    @NotNull
    public v0<?> o() {
        return this.f66912u;
    }

    @Override // t3.t
    @NotNull
    public g2.b p() {
        return this.f66909r;
    }

    @Override // t3.t
    @NotNull
    public Set<a4.e> q() {
        return this.f66917z;
    }

    @Override // t3.t
    @NotNull
    public w.a r() {
        return this.f66895d;
    }

    @Override // t3.t
    @NotNull
    public w.a s() {
        return this.f66894c;
    }

    @Override // t3.t
    @NotNull
    public g2.b t() {
        return this.D;
    }

    @Override // t3.t
    @Nullable
    public i2.g u() {
        return this.J;
    }

    @Override // t3.t
    @Nullable
    public Integer v() {
        return this.f66907p;
    }

    @Override // t3.t
    @Nullable
    public g4.d w() {
        return this.f66905n;
    }

    @Override // t3.t
    @Nullable
    public w3.c x() {
        return null;
    }

    @Override // t3.t
    @NotNull
    public k2.k<r3.x> y() {
        return this.f66893b;
    }

    @Override // t3.t
    public int z() {
        return this.f66911t;
    }

    private s(a aVar) {
        v0<?> G;
        if (f4.b.d()) {
            f4.b.a("ImagePipelineConfig()");
        }
        this.E = aVar.v().a();
        k2.k<r3.x> f10 = aVar.f();
        if (f10 == null) {
            Object systemService = aVar.k().getSystemService("activity");
            if (systemService != null) {
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                f10 = new r3.n((ActivityManager) systemService);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        this.f66893b = f10;
        w.a g10 = aVar.g();
        this.f66894c = g10 == null ? new r3.c() : g10;
        w.a t10 = aVar.t();
        this.f66895d = t10 == null ? new r3.z() : t10;
        this.f66896e = aVar.d();
        Bitmap.Config b10 = aVar.b();
        this.f66892a = b10 == null ? Bitmap.Config.ARGB_8888 : b10;
        r3.j h10 = aVar.h();
        if (h10 == null) {
            h10 = r3.o.f();
            Intrinsics.checkNotNullExpressionValue(h10, "getInstance(...)");
        }
        this.f66897f = h10;
        Context k10 = aVar.k();
        if (k10 != null) {
            this.f66898g = k10;
            this.f66899h = aVar.o();
            k2.k<r3.x> s10 = aVar.s();
            this.f66901j = s10 == null ? new r3.p() : s10;
            r3.s y10 = aVar.y();
            if (y10 == null) {
                y10 = r3.a0.o();
                Intrinsics.checkNotNullExpressionValue(y10, "getInstance(...)");
            }
            this.f66903l = y10;
            this.f66904m = aVar.z();
            k2.k<Boolean> BOOLEAN_FALSE = aVar.q();
            if (BOOLEAN_FALSE == null) {
                BOOLEAN_FALSE = k2.l.f60584b;
                Intrinsics.checkNotNullExpressionValue(BOOLEAN_FALSE, "BOOLEAN_FALSE");
            }
            this.f66906o = BOOLEAN_FALSE;
            b bVar = M;
            this.f66905n = bVar.g(aVar);
            this.f66907p = aVar.C();
            k2.k<Boolean> BOOLEAN_TRUE = aVar.P();
            if (BOOLEAN_TRUE == null) {
                BOOLEAN_TRUE = k2.l.f60583a;
                Intrinsics.checkNotNullExpressionValue(BOOLEAN_TRUE, "BOOLEAN_TRUE");
            }
            this.f66908q = BOOLEAN_TRUE;
            g2.b D = aVar.D();
            this.f66909r = D == null ? bVar.f(aVar.k()) : D;
            n2.c F = aVar.F();
            if (F == null) {
                F = n2.d.b();
                Intrinsics.checkNotNullExpressionValue(F, "getInstance(...)");
            }
            this.f66910s = F;
            this.f66911t = bVar.h(aVar, n());
            int x10 = aVar.x() < 0 ? 30000 : aVar.x();
            this.f66913v = x10;
            if (!f4.b.d()) {
                G = aVar.G();
                if (G == null) {
                    G = new com.facebook.imagepipeline.producers.d0(x10);
                }
            } else {
                f4.b.a("ImagePipelineConfig->mNetworkFetcher");
                try {
                    G = aVar.G();
                    G = G == null ? new com.facebook.imagepipeline.producers.d0(x10) : G;
                } finally {
                    f4.b.b();
                }
            }
            this.f66912u = G;
            this.f66914w = aVar.H();
            b4.d0 I = aVar.I();
            this.f66915x = I == null ? new b4.d0(b4.b0.n().m()) : I;
            w3.d J = aVar.J();
            this.f66916y = J == null ? new w3.f() : J;
            Set<a4.e> L = aVar.L();
            this.f66917z = L == null ? y0.f() : L;
            Set<a4.d> K = aVar.K();
            this.A = K == null ? y0.f() : K;
            Set<com.facebook.imagepipeline.producers.o> l10 = aVar.l();
            this.B = l10 == null ? y0.f() : l10;
            this.C = aVar.M();
            g2.b O = aVar.O();
            this.D = O == null ? p() : O;
            aVar.A();
            int e10 = i().e();
            o u10 = aVar.u();
            this.f66902k = u10 == null ? new t3.b(e10) : u10;
            this.F = aVar.m();
            aVar.i();
            this.G = aVar.j();
            this.H = aVar.c();
            r3.a e11 = aVar.e();
            this.K = e11 == null ? new r3.k() : e11;
            this.I = aVar.r();
            this.J = aVar.N();
            this.L = aVar.p();
            k2.k<t3.c> n10 = aVar.n();
            if (n10 == null) {
                p w10 = aVar.w();
                n10 = new k(w10 == null ? new l(new n()) : w10, this);
            }
            this.f66900i = n10;
            s2.b y11 = n().y();
            if (y11 != null) {
                bVar.j(y11, n(), new q3.c(i()));
            }
            if (f4.b.d()) {
                return;
            }
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }
}

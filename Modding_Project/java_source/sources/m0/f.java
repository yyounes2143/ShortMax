package m0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import coil.memory.MemoryCache;
import coil.request.CachePolicy;
import coil.request.GlobalLifecycle;
import coil.size.Precision;
import coil.size.Scale;
import coil.size.ViewSizeResolver;
import d0.g;
import g0.i;
import gt.c0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m0.k;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q0.c;
/* compiled from: ImageRequest.kt */
@Metadata
/* loaded from: classes2.dex */
public final class f {
    @NotNull
    private final Lifecycle A;
    @NotNull
    private final n0.h B;
    @NotNull
    private final Scale C;
    @NotNull
    private final k D;
    @Nullable
    private final MemoryCache.Key E;
    @Nullable
    private final Integer F;
    @Nullable
    private final Drawable G;
    @Nullable
    private final Integer H;
    @Nullable
    private final Drawable I;
    @Nullable
    private final Integer J;
    @Nullable
    private final Drawable K;
    @NotNull
    private final m0.b L;
    @NotNull
    private final m0.a M;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f62351a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object f62352b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final o0.a f62353c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final b f62354d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final MemoryCache.Key f62355e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f62356f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Bitmap.Config f62357g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final ColorSpace f62358h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Precision f62359i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final Pair<i.a<?>, Class<?>> f62360j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final g.a f62361k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final List<p0.a> f62362l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final c.a f62363m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final Headers f62364n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final n f62365o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f62366p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f62367q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f62368r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f62369s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final CachePolicy f62370t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final CachePolicy f62371u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final CachePolicy f62372v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final c0 f62373w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final c0 f62374x;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final c0 f62375y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private final c0 f62376z;

    /* compiled from: ImageRequest.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface b {
        @MainThread
        void a(@NotNull f fVar);

        @MainThread
        void b(@NotNull f fVar, @NotNull d dVar);

        @MainThread
        void c(@NotNull f fVar, @NotNull m mVar);

        @MainThread
        void d(@NotNull f fVar);
    }

    public /* synthetic */ f(Context context, Object obj, o0.a aVar, b bVar, MemoryCache.Key key, String str, Bitmap.Config config, ColorSpace colorSpace, Precision precision, Pair pair, g.a aVar2, List list, c.a aVar3, Headers headers, n nVar, boolean z10, boolean z11, boolean z12, boolean z13, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, c0 c0Var, c0 c0Var2, c0 c0Var3, c0 c0Var4, Lifecycle lifecycle, n0.h hVar, Scale scale, k kVar, MemoryCache.Key key2, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, m0.b bVar2, m0.a aVar4, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, obj, aVar, bVar, key, str, config, colorSpace, precision, pair, aVar2, list, aVar3, headers, nVar, z10, z11, z12, z13, cachePolicy, cachePolicy2, cachePolicy3, c0Var, c0Var2, c0Var3, c0Var4, lifecycle, hVar, scale, kVar, key2, num, drawable, num2, drawable2, num3, drawable3, bVar2, aVar4);
    }

    public static /* synthetic */ a R(f fVar, Context context, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = fVar.f62351a;
        }
        return fVar.Q(context);
    }

    @Nullable
    public final b A() {
        return this.f62354d;
    }

    @Nullable
    public final MemoryCache.Key B() {
        return this.f62355e;
    }

    @NotNull
    public final CachePolicy C() {
        return this.f62370t;
    }

    @NotNull
    public final CachePolicy D() {
        return this.f62372v;
    }

    @NotNull
    public final k E() {
        return this.D;
    }

    @Nullable
    public final Drawable F() {
        return r0.h.c(this, this.G, this.F, this.M.l());
    }

    @Nullable
    public final MemoryCache.Key G() {
        return this.E;
    }

    @NotNull
    public final Precision H() {
        return this.f62359i;
    }

    public final boolean I() {
        return this.f62369s;
    }

    @NotNull
    public final Scale J() {
        return this.C;
    }

    @NotNull
    public final n0.h K() {
        return this.B;
    }

    @NotNull
    public final n L() {
        return this.f62365o;
    }

    @Nullable
    public final o0.a M() {
        return this.f62353c;
    }

    @NotNull
    public final c0 N() {
        return this.f62376z;
    }

    @NotNull
    public final List<p0.a> O() {
        return this.f62362l;
    }

    @NotNull
    public final c.a P() {
        return this.f62363m;
    }

    @NotNull
    public final a Q(@NotNull Context context) {
        return new a(this, context);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Intrinsics.areEqual(this.f62351a, fVar.f62351a) && Intrinsics.areEqual(this.f62352b, fVar.f62352b) && Intrinsics.areEqual(this.f62353c, fVar.f62353c) && Intrinsics.areEqual(this.f62354d, fVar.f62354d) && Intrinsics.areEqual(this.f62355e, fVar.f62355e) && Intrinsics.areEqual(this.f62356f, fVar.f62356f) && this.f62357g == fVar.f62357g && ((Build.VERSION.SDK_INT < 26 || Intrinsics.areEqual(this.f62358h, fVar.f62358h)) && this.f62359i == fVar.f62359i && Intrinsics.areEqual(this.f62360j, fVar.f62360j) && Intrinsics.areEqual(this.f62361k, fVar.f62361k) && Intrinsics.areEqual(this.f62362l, fVar.f62362l) && Intrinsics.areEqual(this.f62363m, fVar.f62363m) && Intrinsics.areEqual(this.f62364n, fVar.f62364n) && Intrinsics.areEqual(this.f62365o, fVar.f62365o) && this.f62366p == fVar.f62366p && this.f62367q == fVar.f62367q && this.f62368r == fVar.f62368r && this.f62369s == fVar.f62369s && this.f62370t == fVar.f62370t && this.f62371u == fVar.f62371u && this.f62372v == fVar.f62372v && Intrinsics.areEqual(this.f62373w, fVar.f62373w) && Intrinsics.areEqual(this.f62374x, fVar.f62374x) && Intrinsics.areEqual(this.f62375y, fVar.f62375y) && Intrinsics.areEqual(this.f62376z, fVar.f62376z) && Intrinsics.areEqual(this.E, fVar.E) && Intrinsics.areEqual(this.F, fVar.F) && Intrinsics.areEqual(this.G, fVar.G) && Intrinsics.areEqual(this.H, fVar.H) && Intrinsics.areEqual(this.I, fVar.I) && Intrinsics.areEqual(this.J, fVar.J) && Intrinsics.areEqual(this.K, fVar.K) && Intrinsics.areEqual(this.A, fVar.A) && Intrinsics.areEqual(this.B, fVar.B) && this.C == fVar.C && Intrinsics.areEqual(this.D, fVar.D) && Intrinsics.areEqual(this.L, fVar.L) && Intrinsics.areEqual(this.M, fVar.M))) {
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        return this.f62366p;
    }

    public final boolean h() {
        return this.f62367q;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int hashCode = ((this.f62351a.hashCode() * 31) + this.f62352b.hashCode()) * 31;
        o0.a aVar = this.f62353c;
        int i23 = 0;
        if (aVar != null) {
            i10 = aVar.hashCode();
        } else {
            i10 = 0;
        }
        int i24 = (hashCode + i10) * 31;
        b bVar = this.f62354d;
        if (bVar != null) {
            i11 = bVar.hashCode();
        } else {
            i11 = 0;
        }
        int i25 = (i24 + i11) * 31;
        MemoryCache.Key key = this.f62355e;
        if (key != null) {
            i12 = key.hashCode();
        } else {
            i12 = 0;
        }
        int i26 = (i25 + i12) * 31;
        String str = this.f62356f;
        if (str != null) {
            i13 = str.hashCode();
        } else {
            i13 = 0;
        }
        int hashCode2 = (((i26 + i13) * 31) + this.f62357g.hashCode()) * 31;
        ColorSpace colorSpace = this.f62358h;
        if (colorSpace != null) {
            i14 = colorSpace.hashCode();
        } else {
            i14 = 0;
        }
        int hashCode3 = (((hashCode2 + i14) * 31) + this.f62359i.hashCode()) * 31;
        Pair<i.a<?>, Class<?>> pair = this.f62360j;
        if (pair != null) {
            i15 = pair.hashCode();
        } else {
            i15 = 0;
        }
        int i27 = (hashCode3 + i15) * 31;
        g.a aVar2 = this.f62361k;
        if (aVar2 != null) {
            i16 = aVar2.hashCode();
        } else {
            i16 = 0;
        }
        int hashCode4 = (((((((((((((((((((((((((((((((((((((((i27 + i16) * 31) + this.f62362l.hashCode()) * 31) + this.f62363m.hashCode()) * 31) + this.f62364n.hashCode()) * 31) + this.f62365o.hashCode()) * 31) + Boolean.hashCode(this.f62366p)) * 31) + Boolean.hashCode(this.f62367q)) * 31) + Boolean.hashCode(this.f62368r)) * 31) + Boolean.hashCode(this.f62369s)) * 31) + this.f62370t.hashCode()) * 31) + this.f62371u.hashCode()) * 31) + this.f62372v.hashCode()) * 31) + this.f62373w.hashCode()) * 31) + this.f62374x.hashCode()) * 31) + this.f62375y.hashCode()) * 31) + this.f62376z.hashCode()) * 31) + this.A.hashCode()) * 31) + this.B.hashCode()) * 31) + this.C.hashCode()) * 31) + this.D.hashCode()) * 31;
        MemoryCache.Key key2 = this.E;
        if (key2 != null) {
            i17 = key2.hashCode();
        } else {
            i17 = 0;
        }
        int i28 = (hashCode4 + i17) * 31;
        Integer num = this.F;
        if (num != null) {
            i18 = num.hashCode();
        } else {
            i18 = 0;
        }
        int i29 = (i28 + i18) * 31;
        Drawable drawable = this.G;
        if (drawable != null) {
            i19 = drawable.hashCode();
        } else {
            i19 = 0;
        }
        int i30 = (i29 + i19) * 31;
        Integer num2 = this.H;
        if (num2 != null) {
            i20 = num2.hashCode();
        } else {
            i20 = 0;
        }
        int i31 = (i30 + i20) * 31;
        Drawable drawable2 = this.I;
        if (drawable2 != null) {
            i21 = drawable2.hashCode();
        } else {
            i21 = 0;
        }
        int i32 = (i31 + i21) * 31;
        Integer num3 = this.J;
        if (num3 != null) {
            i22 = num3.hashCode();
        } else {
            i22 = 0;
        }
        int i33 = (i32 + i22) * 31;
        Drawable drawable3 = this.K;
        if (drawable3 != null) {
            i23 = drawable3.hashCode();
        }
        return ((((i33 + i23) * 31) + this.L.hashCode()) * 31) + this.M.hashCode();
    }

    public final boolean i() {
        return this.f62368r;
    }

    @NotNull
    public final Bitmap.Config j() {
        return this.f62357g;
    }

    @Nullable
    public final ColorSpace k() {
        return this.f62358h;
    }

    @NotNull
    public final Context l() {
        return this.f62351a;
    }

    @NotNull
    public final Object m() {
        return this.f62352b;
    }

    @NotNull
    public final c0 n() {
        return this.f62375y;
    }

    @Nullable
    public final g.a o() {
        return this.f62361k;
    }

    @NotNull
    public final m0.a p() {
        return this.M;
    }

    @NotNull
    public final m0.b q() {
        return this.L;
    }

    @Nullable
    public final String r() {
        return this.f62356f;
    }

    @NotNull
    public final CachePolicy s() {
        return this.f62371u;
    }

    @Nullable
    public final Drawable t() {
        return r0.h.c(this, this.I, this.H, this.M.f());
    }

    @Nullable
    public final Drawable u() {
        return r0.h.c(this, this.K, this.J, this.M.g());
    }

    @NotNull
    public final c0 v() {
        return this.f62374x;
    }

    @Nullable
    public final Pair<i.a<?>, Class<?>> w() {
        return this.f62360j;
    }

    @NotNull
    public final Headers x() {
        return this.f62364n;
    }

    @NotNull
    public final c0 y() {
        return this.f62373w;
    }

    @NotNull
    public final Lifecycle z() {
        return this.A;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private f(Context context, Object obj, o0.a aVar, b bVar, MemoryCache.Key key, String str, Bitmap.Config config, ColorSpace colorSpace, Precision precision, Pair<? extends i.a<?>, ? extends Class<?>> pair, g.a aVar2, List<? extends p0.a> list, c.a aVar3, Headers headers, n nVar, boolean z10, boolean z11, boolean z12, boolean z13, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, c0 c0Var, c0 c0Var2, c0 c0Var3, c0 c0Var4, Lifecycle lifecycle, n0.h hVar, Scale scale, k kVar, MemoryCache.Key key2, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, m0.b bVar2, m0.a aVar4) {
        this.f62351a = context;
        this.f62352b = obj;
        this.f62353c = aVar;
        this.f62354d = bVar;
        this.f62355e = key;
        this.f62356f = str;
        this.f62357g = config;
        this.f62358h = colorSpace;
        this.f62359i = precision;
        this.f62360j = pair;
        this.f62361k = aVar2;
        this.f62362l = list;
        this.f62363m = aVar3;
        this.f62364n = headers;
        this.f62365o = nVar;
        this.f62366p = z10;
        this.f62367q = z11;
        this.f62368r = z12;
        this.f62369s = z13;
        this.f62370t = cachePolicy;
        this.f62371u = cachePolicy2;
        this.f62372v = cachePolicy3;
        this.f62373w = c0Var;
        this.f62374x = c0Var2;
        this.f62375y = c0Var3;
        this.f62376z = c0Var4;
        this.A = lifecycle;
        this.B = hVar;
        this.C = scale;
        this.D = kVar;
        this.E = key2;
        this.F = num;
        this.G = drawable;
        this.H = num2;
        this.I = drawable2;
        this.J = num3;
        this.K = drawable3;
        this.L = bVar2;
        this.M = aVar4;
    }

    /* compiled from: ImageRequest.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable
        private c0 A;
        @Nullable
        private k.a B;
        @Nullable
        private MemoryCache.Key C;
        @DrawableRes
        @Nullable
        private Integer D;
        @Nullable
        private Drawable E;
        @DrawableRes
        @Nullable
        private Integer F;
        @Nullable
        private Drawable G;
        @DrawableRes
        @Nullable
        private Integer H;
        @Nullable
        private Drawable I;
        @Nullable
        private Lifecycle J;
        @Nullable
        private n0.h K;
        @Nullable
        private Scale L;
        @Nullable
        private Lifecycle M;
        @Nullable
        private n0.h N;
        @Nullable
        private Scale O;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f62377a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private m0.a f62378b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Object f62379c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private o0.a f62380d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private b f62381e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private MemoryCache.Key f62382f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f62383g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private Bitmap.Config f62384h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private ColorSpace f62385i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Precision f62386j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private Pair<? extends i.a<?>, ? extends Class<?>> f62387k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private g.a f62388l;
        @NotNull

        /* renamed from: m  reason: collision with root package name */
        private List<? extends p0.a> f62389m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private c.a f62390n;
        @Nullable

        /* renamed from: o  reason: collision with root package name */
        private Headers.Builder f62391o;
        @Nullable

        /* renamed from: p  reason: collision with root package name */
        private Map<Class<?>, Object> f62392p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f62393q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private Boolean f62394r;
        @Nullable

        /* renamed from: s  reason: collision with root package name */
        private Boolean f62395s;

        /* renamed from: t  reason: collision with root package name */
        private boolean f62396t;
        @Nullable

        /* renamed from: u  reason: collision with root package name */
        private CachePolicy f62397u;
        @Nullable

        /* renamed from: v  reason: collision with root package name */
        private CachePolicy f62398v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private CachePolicy f62399w;
        @Nullable

        /* renamed from: x  reason: collision with root package name */
        private c0 f62400x;
        @Nullable

        /* renamed from: y  reason: collision with root package name */
        private c0 f62401y;
        @Nullable

        /* renamed from: z  reason: collision with root package name */
        private c0 f62402z;

        public a(@NotNull Context context) {
            this.f62377a = context;
            this.f62378b = r0.h.b();
            this.f62379c = null;
            this.f62380d = null;
            this.f62381e = null;
            this.f62382f = null;
            this.f62383g = null;
            this.f62384h = null;
            if (Build.VERSION.SDK_INT >= 26) {
                this.f62385i = null;
            }
            this.f62386j = null;
            this.f62387k = null;
            this.f62388l = null;
            this.f62389m = CollectionsKt.n();
            this.f62390n = null;
            this.f62391o = null;
            this.f62392p = null;
            this.f62393q = true;
            this.f62394r = null;
            this.f62395s = null;
            this.f62396t = true;
            this.f62397u = null;
            this.f62398v = null;
            this.f62399w = null;
            this.f62400x = null;
            this.f62401y = null;
            this.f62402z = null;
            this.A = null;
            this.B = null;
            this.C = null;
            this.D = null;
            this.E = null;
            this.F = null;
            this.G = null;
            this.H = null;
            this.I = null;
            this.J = null;
            this.K = null;
            this.L = null;
            this.M = null;
            this.N = null;
            this.O = null;
        }

        private final void e() {
            this.O = null;
        }

        private final void f() {
            this.M = null;
            this.N = null;
            this.O = null;
        }

        private final Lifecycle g() {
            Context context;
            o0.a aVar = this.f62380d;
            if (aVar instanceof o0.b) {
                context = ((o0.b) aVar).getView().getContext();
            } else {
                context = this.f62377a;
            }
            Lifecycle c10 = r0.d.c(context);
            if (c10 == null) {
                return GlobalLifecycle.f4085a;
            }
            return c10;
        }

        private final Scale h() {
            ViewSizeResolver viewSizeResolver;
            o0.b bVar;
            View view;
            n0.h hVar = this.K;
            View view2 = null;
            if (hVar instanceof ViewSizeResolver) {
                viewSizeResolver = (ViewSizeResolver) hVar;
            } else {
                viewSizeResolver = null;
            }
            if (viewSizeResolver != null && (view = viewSizeResolver.getView()) != null) {
                view2 = view;
            } else {
                o0.a aVar = this.f62380d;
                if (aVar instanceof o0.b) {
                    bVar = (o0.b) aVar;
                } else {
                    bVar = null;
                }
                if (bVar != null) {
                    view2 = bVar.getView();
                }
            }
            if (view2 instanceof ImageView) {
                return r0.i.n((ImageView) view2);
            }
            return Scale.FIT;
        }

        private final n0.h i() {
            ImageView.ScaleType scaleType;
            o0.a aVar = this.f62380d;
            if (aVar instanceof o0.b) {
                View view = ((o0.b) aVar).getView();
                if ((view instanceof ImageView) && ((scaleType = ((ImageView) view).getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) {
                    return n0.i.a(n0.g.f62723d);
                }
                return n0.j.b(view, false, 2, null);
            }
            return new n0.d(this.f62377a);
        }

        @NotNull
        public final f a() {
            Headers headers;
            n nVar;
            boolean a10;
            boolean b10;
            k kVar;
            Context context = this.f62377a;
            Object obj = this.f62379c;
            if (obj == null) {
                obj = h.f62403a;
            }
            Object obj2 = obj;
            o0.a aVar = this.f62380d;
            b bVar = this.f62381e;
            MemoryCache.Key key = this.f62382f;
            String str = this.f62383g;
            Bitmap.Config config = this.f62384h;
            if (config == null) {
                config = this.f62378b.c();
            }
            Bitmap.Config config2 = config;
            ColorSpace colorSpace = this.f62385i;
            Precision precision = this.f62386j;
            if (precision == null) {
                precision = this.f62378b.m();
            }
            Precision precision2 = precision;
            Pair<? extends i.a<?>, ? extends Class<?>> pair = this.f62387k;
            g.a aVar2 = this.f62388l;
            List<? extends p0.a> list = this.f62389m;
            c.a aVar3 = this.f62390n;
            if (aVar3 == null) {
                aVar3 = this.f62378b.o();
            }
            c.a aVar4 = aVar3;
            Headers.Builder builder = this.f62391o;
            if (builder != null) {
                headers = builder.f();
            } else {
                headers = null;
            }
            Headers x10 = r0.i.x(headers);
            Map<Class<?>, ? extends Object> map = this.f62392p;
            if (map != null) {
                nVar = n.f62436b.a(map);
            } else {
                nVar = null;
            }
            n w10 = r0.i.w(nVar);
            boolean z10 = this.f62393q;
            Boolean bool = this.f62394r;
            if (bool != null) {
                a10 = bool.booleanValue();
            } else {
                a10 = this.f62378b.a();
            }
            boolean z11 = a10;
            Boolean bool2 = this.f62395s;
            if (bool2 != null) {
                b10 = bool2.booleanValue();
            } else {
                b10 = this.f62378b.b();
            }
            boolean z12 = b10;
            boolean z13 = this.f62396t;
            CachePolicy cachePolicy = this.f62397u;
            if (cachePolicy == null) {
                cachePolicy = this.f62378b.j();
            }
            CachePolicy cachePolicy2 = cachePolicy;
            CachePolicy cachePolicy3 = this.f62398v;
            if (cachePolicy3 == null) {
                cachePolicy3 = this.f62378b.e();
            }
            CachePolicy cachePolicy4 = cachePolicy3;
            CachePolicy cachePolicy5 = this.f62399w;
            if (cachePolicy5 == null) {
                cachePolicy5 = this.f62378b.k();
            }
            CachePolicy cachePolicy6 = cachePolicy5;
            c0 c0Var = this.f62400x;
            if (c0Var == null) {
                c0Var = this.f62378b.i();
            }
            c0 c0Var2 = c0Var;
            c0 c0Var3 = this.f62401y;
            if (c0Var3 == null) {
                c0Var3 = this.f62378b.h();
            }
            c0 c0Var4 = c0Var3;
            c0 c0Var5 = this.f62402z;
            if (c0Var5 == null) {
                c0Var5 = this.f62378b.d();
            }
            c0 c0Var6 = c0Var5;
            c0 c0Var7 = this.A;
            if (c0Var7 == null) {
                c0Var7 = this.f62378b.n();
            }
            c0 c0Var8 = c0Var7;
            Lifecycle lifecycle = this.J;
            if (lifecycle == null && (lifecycle = this.M) == null) {
                lifecycle = g();
            }
            Lifecycle lifecycle2 = lifecycle;
            n0.h hVar = this.K;
            if (hVar == null && (hVar = this.N) == null) {
                hVar = i();
            }
            n0.h hVar2 = hVar;
            Scale scale = this.L;
            if (scale == null && (scale = this.O) == null) {
                scale = h();
            }
            Scale scale2 = scale;
            k.a aVar5 = this.B;
            if (aVar5 != null) {
                kVar = aVar5.a();
            } else {
                kVar = null;
            }
            return new f(context, obj2, aVar, bVar, key, str, config2, colorSpace, precision2, pair, aVar2, list, aVar4, x10, w10, z10, z11, z12, z13, cachePolicy2, cachePolicy4, cachePolicy6, c0Var2, c0Var4, c0Var6, c0Var8, lifecycle2, hVar2, scale2, r0.i.v(kVar), this.C, this.D, this.E, this.F, this.G, this.H, this.I, new m0.b(this.J, this.K, this.L, this.f62400x, this.f62401y, this.f62402z, this.A, this.f62390n, this.f62386j, this.f62384h, this.f62394r, this.f62395s, this.f62397u, this.f62398v, this.f62399w), this.f62378b, null);
        }

        @NotNull
        public final a b(@Nullable Object obj) {
            this.f62379c = obj;
            return this;
        }

        @NotNull
        public final a c(@NotNull m0.a aVar) {
            this.f62378b = aVar;
            e();
            return this;
        }

        @NotNull
        public final a d(@NotNull Precision precision) {
            this.f62386j = precision;
            return this;
        }

        @NotNull
        public final a j(@NotNull Scale scale) {
            this.L = scale;
            return this;
        }

        @NotNull
        public final a k(@NotNull n0.h hVar) {
            this.K = hVar;
            f();
            return this;
        }

        @NotNull
        public final a l(@Nullable o0.a aVar) {
            this.f62380d = aVar;
            f();
            return this;
        }

        public a(@NotNull f fVar, @NotNull Context context) {
            this.f62377a = context;
            this.f62378b = fVar.p();
            this.f62379c = fVar.m();
            this.f62380d = fVar.M();
            this.f62381e = fVar.A();
            this.f62382f = fVar.B();
            this.f62383g = fVar.r();
            this.f62384h = fVar.q().c();
            if (Build.VERSION.SDK_INT >= 26) {
                this.f62385i = fVar.k();
            }
            this.f62386j = fVar.q().k();
            this.f62387k = fVar.w();
            this.f62388l = fVar.o();
            this.f62389m = fVar.O();
            this.f62390n = fVar.q().o();
            this.f62391o = fVar.x().e();
            this.f62392p = p0.A(fVar.L().a());
            this.f62393q = fVar.g();
            this.f62394r = fVar.q().a();
            this.f62395s = fVar.q().b();
            this.f62396t = fVar.I();
            this.f62397u = fVar.q().i();
            this.f62398v = fVar.q().e();
            this.f62399w = fVar.q().j();
            this.f62400x = fVar.q().g();
            this.f62401y = fVar.q().f();
            this.f62402z = fVar.q().d();
            this.A = fVar.q().n();
            this.B = fVar.E().d();
            this.C = fVar.G();
            this.D = fVar.F;
            this.E = fVar.G;
            this.F = fVar.H;
            this.G = fVar.I;
            this.H = fVar.J;
            this.I = fVar.K;
            this.J = fVar.q().h();
            this.K = fVar.q().m();
            this.L = fVar.q().l();
            if (fVar.l() == context) {
                this.M = fVar.z();
                this.N = fVar.K();
                this.O = fVar.J();
                return;
            }
            this.M = null;
            this.N = null;
            this.O = null;
        }
    }
}

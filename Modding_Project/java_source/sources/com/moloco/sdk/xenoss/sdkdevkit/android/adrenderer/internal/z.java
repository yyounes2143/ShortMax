package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.h;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.m;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension({"SMAP\nStaticBanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticBanner.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StaticBannerView\n+ 2 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt\n*L\n1#1,81:1\n17#2,8:82\n*S KotlinDebug\n*F\n+ 1 StaticBanner.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StaticBannerView\n*L\n48#1:82,8\n*E\n"})
/* loaded from: classes6.dex */
public final class z extends C<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o> {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final Context f36559g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 f36560h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a f36561i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final y f36562j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final gt.g0 f36563k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s f36564l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public final i f36565m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final ms.i f36566n;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticBannerView$isAdDisplaying$2$1", f = "StaticBanner.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements at.n<Boolean, Boolean, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36567h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f36568i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ boolean f36569j;

        public a(rs.c<? super a> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, boolean z11, rs.c<? super Boolean> cVar) {
            a aVar = new a(cVar);
            aVar.f36568i = z10;
            aVar.f36569j = z11;
            return aVar.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, rs.c<? super Boolean> cVar) {
            return i(bool.booleanValue(), bool2.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36567h == 0) {
                f.b(obj);
                boolean z11 = this.f36568i;
                boolean z12 = this.f36569j;
                if (z11 && z12) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.a.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticBannerView$prepareAdViewForDisplay$1", f = "StaticBanner.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36570h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36571i;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticBannerView$prepareAdViewForDisplay$1$1", f = "StaticBanner.kt", l = {50}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36573h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ z f36574i;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticBannerView$prepareAdViewForDisplay$1$1$error$1", f = "StaticBanner.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.z$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0595a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g, rs.c<? super Boolean>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f36575h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f36576i;

                public C0595a(rs.c<? super C0595a> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    C0595a c0595a = new C0595a(cVar);
                    c0595a.f36576i = obj;
                    return c0595a;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: i */
                public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g gVar, rs.c<? super Boolean> cVar) {
                    return ((C0595a) create(gVar, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    boolean z10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f36575h == 0) {
                        f.b(obj);
                        if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g) this.f36576i) != null) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        return kotlin.coroutines.jvm.internal.a.a(z10);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(z zVar, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f36574i = zVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f36574i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o adShowListener;
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f36573h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g> unrecoverableError = this.f36574i.f36561i.getUnrecoverableError();
                    C0595a c0595a = new C0595a(null);
                    this.f36573h = 1;
                    obj = kotlinx.coroutines.flow.c.x(unrecoverableError, c0595a, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g gVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g) obj;
                if (gVar != null && (adShowListener = this.f36574i.getAdShowListener()) != null) {
                    adShowListener.a(h.a(gVar));
                }
                return Unit.f60915a;
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.StaticBannerView$prepareAdViewForDisplay$1$2", f = "StaticBanner.kt", l = {56}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.z$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0596b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36577h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ z f36578i;

            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.z$b$b$a */
            /* loaded from: classes6.dex */
            public static final class a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ z f36579a;

                public a(z zVar) {
                    this.f36579a = zVar;
                }

                @Override // kt.c
                /* renamed from: a */
                public final Object emit(Unit unit, rs.c<? super Unit> cVar) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.o adShowListener = this.f36579a.getAdShowListener();
                    if (adShowListener != null) {
                        adShowListener.a();
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0596b(z zVar, rs.c<? super C0596b> cVar) {
                super(2, cVar);
                this.f36578i = zVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0596b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0596b(this.f36578i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f36577h;
                if (i10 != 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    f.b(obj);
                } else {
                    f.b(obj);
                    kt.f<Unit> clickthroughEvent = this.f36578i.f36561i.getClickthroughEvent();
                    a aVar = new a(this.f36578i);
                    this.f36577h = 1;
                    if (clickthroughEvent.collect(aVar, this) == f10) {
                        return f10;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            b bVar = new b(cVar);
            bVar.f36571i = obj;
            return bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36570h == 0) {
                f.b(obj);
                gt.g0 g0Var = (gt.g0) this.f36571i;
                gt.g.d(g0Var, null, null, new a(z.this, null), 3, null);
                gt.g.d(g0Var, null, null, new C0596b(z.this, null), 3, null);
                z zVar = z.this;
                FrameLayout a10 = zVar.f36564l.a(z.this.f36559g, z.this.f36561i);
                z.this.getWatermark().a(a10);
                zVar.setAdView(a10);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public /* synthetic */ z(Context context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 g0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a aVar, y yVar, gt.g0 g0Var2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s sVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, g0Var, aVar, yVar, g0Var2, (i10 & 32) != 0 ? new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s() : sVar);
    }

    public static final kt.i q(z zVar) {
        return kotlinx.coroutines.flow.c.T(kotlinx.coroutines.flow.c.G(super.m(), zVar.f36561i.c(), new a(null)), zVar.f36563k, m.f61804a.c(), Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        super.destroy();
        this.f36561i.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.s
    @NotNull
    public i getCreativeType() {
        return this.f36565m;
    }

    @VisibleForTesting
    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 getWatermark() {
        return this.f36560h;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C
    public void k() {
        gt.e.c(this.f36563k, EmptyCoroutineContext.f61040a, CoroutineStart.DEFAULT, new b(null));
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.l
    @NotNull
    public kt.i<Boolean> m() {
        return (kt.i) this.f36566n.getValue();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C
    @NotNull
    public y getAdLoader() {
        return this.f36562j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(@NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.g0 watermark, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a staticWebView, @NotNull y adLoader, @NotNull gt.g0 scope, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.s webViewWrapper) {
        super(context, scope);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        Intrinsics.checkNotNullParameter(staticWebView, "staticWebView");
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(webViewWrapper, "webViewWrapper");
        this.f36559g = context;
        this.f36560h = watermark;
        this.f36561i = staticWebView;
        this.f36562j = adLoader;
        this.f36563k = scope;
        this.f36564l = webViewWrapper;
        setTag("MolocoStaticBannerView");
        this.f36565m = i.f33714c;
        this.f36566n = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.w0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return z.q(z.this);
            }
        });
    }
}

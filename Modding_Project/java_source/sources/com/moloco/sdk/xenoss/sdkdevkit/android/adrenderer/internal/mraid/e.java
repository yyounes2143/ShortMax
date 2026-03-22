package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.u;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import gt.g0;
import gt.k0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nMraidBaseAd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MraidBaseAd.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidBaseAd\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n1#2:219\n*E\n"})
/* loaded from: classes6.dex */
public class e implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f34254a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final r f34255b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public Function0<Unit> f34256c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, Unit> f34257d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final n0 f34258e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f34259f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final n f34260g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final String f34261h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final g0 f34262i;

    /* renamed from: j  reason: collision with root package name */
    public f f34263j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public t f34264k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final u f34265l;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$loadAndReadyMraid$2", f = "MraidBaseAd.kt", l = {172}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34266h;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            f fVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34266h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                n o10 = e.this.o();
                String str = e.this.f34254a;
                this.f34266h = 1;
                obj = o10.b(str, this);
                if (obj == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.internal.g0 g0Var = (com.moloco.sdk.internal.g0) obj;
            boolean z10 = g0Var instanceof g0.a;
            if (z10) {
                return g0Var;
            }
            n o11 = e.this.o();
            e eVar = e.this;
            o11.g(false, false, false, false, true);
            o11.d(eVar.f34255b);
            o11.a(eVar.f34265l.o().getValue().booleanValue());
            o11.e(eVar.f34265l.m().getValue().a());
            eVar.h0(t.f34335c);
            eVar.S();
            eVar.T();
            eVar.U();
            o11.j();
            e eVar2 = e.this;
            if (g0Var instanceof g0.b) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, eVar2.f34261h, "Mraid Html data successfully loaded", null, false, 12, null);
                fVar = (f) ((g0.b) g0Var).a();
            } else if (z10) {
                MolocoLogger.error$default(MolocoLogger.INSTANCE, eVar2.f34261h, "Mraid Html data load failed.", null, false, 12, null);
                fVar = new f(null, 1, null);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            eVar2.f34263j = fVar;
            return g0Var;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$startListeningToErrors$1", f = "MraidBaseAd.kt", l = {59}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34268h;

        /* loaded from: classes6.dex */
        public /* synthetic */ class a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f34270a;

            static {
                int[] iArr = new int[r.values().length];
                try {
                    iArr[r.f34330c.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[r.f34329b.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f34270a = iArr;
            }
        }

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$startListeningToErrors$1$error$1", f = "MraidBaseAd.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0512b extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34271h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f34272i;

            public C0512b(rs.c<? super C0512b> cVar) {
                super(2, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                C0512b c0512b = new C0512b(cVar);
                c0512b.f34272i = obj;
                return c0512b;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar, rs.c<? super Boolean> cVar) {
                return ((C0512b) create(dVar, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                boolean z10;
                kotlin.coroutines.intrinsics.a.f();
                if (this.f34271h == 0) {
                    kotlin.f.b(obj);
                    if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) this.f34272i) != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    return kotlin.coroutines.jvm.internal.a.a(z10);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34268h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> F = e.this.o().F();
                C0512b c0512b = new C0512b(null);
                this.f34268h = 1;
                obj = kotlinx.coroutines.flow.c.x(F, c0512b, this);
                if (obj == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) obj;
            if (dVar != null) {
                e eVar = e.this;
                int i11 = a.f34270a[eVar.f34255b.ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        eVar.p().invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.e.a(dVar));
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    eVar.p().invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.e.b(dVar));
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$startListeningToMraidJsCommands$1", f = "MraidBaseAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<x, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34273h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34274i;

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f34274i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(x xVar, rs.c<? super Unit> cVar) {
            return ((c) create(xVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34273h == 0) {
                kotlin.f.b(obj);
                x xVar = (x) this.f34274i;
                if (Intrinsics.areEqual(xVar, x.a.f34386c)) {
                    e.this.C();
                } else if (xVar instanceof x.d) {
                    e.this.c0((x.d) xVar);
                } else if (!(xVar instanceof x.f)) {
                    if (xVar instanceof x.c) {
                        e.this.b0((x.c) xVar);
                    } else {
                        n o10 = e.this.o();
                        o10.J(xVar, "unsupported command: " + xVar.b());
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$startListeningToVisualMetricsChanges$1", f = "MraidBaseAd.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34276h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f34277i;

        public d(rs.c<? super d> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(cVar);
            dVar.f34277i = ((Boolean) obj).booleanValue();
            return dVar;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((d) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34276h == 0) {
                kotlin.f.b(obj);
                e.this.o().a(this.f34277i);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBaseAd$startListeningToVisualMetricsChanges$2", f = "MraidBaseAd.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.e$e  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0513e extends SuspendLambda implements Function2<u.a, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34279h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34280i;

        public C0513e(rs.c<? super C0513e> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C0513e c0513e = new C0513e(cVar);
            c0513e.f34280i = obj;
            return c0513e;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(u.a aVar, rs.c<? super Unit> cVar) {
            return ((C0513e) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34279h == 0) {
                kotlin.f.b(obj);
                e.this.o().e(((u.a) this.f34280i).a());
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public e(@NotNull Context context, @NotNull String adm, @NotNull r mraidPlacementType, @NotNull Function0<Unit> onClick, @NotNull Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, Unit> onError, @NotNull n0 externalLinkHandler, boolean z10, @NotNull n mraidBridge) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(mraidPlacementType, "mraidPlacementType");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(mraidBridge, "mraidBridge");
        this.f34254a = adm;
        this.f34255b = mraidPlacementType;
        this.f34256c = onClick;
        this.f34257d = onError;
        this.f34258e = externalLinkHandler;
        this.f34259f = z10;
        this.f34260g = mraidBridge;
        this.f34261h = "MraidBaseAd";
        gt.g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f34262i = a10;
        this.f34265l = new u(mraidBridge.c(), context, a10);
    }

    public static final Unit W(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0() {
        return Unit.f60915a;
    }

    public final void C() {
        if (this.f34265l.o().getValue().booleanValue()) {
            p0();
        } else {
            this.f34260g.J(x.a.f34386c, "Can't close ad when mraid container is not visible to the user");
        }
    }

    public final void S() {
        gt.g.d(this.f34262i, null, null, new b(null), 3, null);
    }

    public final void T() {
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.f34260g.w(), new c(null)), this.f34262i);
    }

    public final void U() {
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.f34265l.o(), new d(null)), this.f34262i);
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.f34265l.m(), new C0513e(null)), this.f34262i);
    }

    public final void b0(x.c cVar) {
        if (this.f34259f) {
            this.f34260g.J(cVar, "expand() is force blocked for the current ad");
        } else if (!this.f34265l.o().getValue().booleanValue()) {
            this.f34260g.J(cVar, "Can't expand() when mraid container is not visible to the user");
        } else if (this.f34264k != t.f34335c) {
            this.f34260g.J(cVar, "In order to expand() mraid ad, container must be in Default view state");
        } else if (this.f34255b == r.f34330c) {
            this.f34260g.J(cVar, "expand() is not supported for interstitials");
        } else if (cVar.c() != null) {
            this.f34260g.J(cVar, "Two-part expand is not supported yet");
        } else {
            D();
            h0(t.f34337e);
        }
    }

    public final void c0(x.d dVar) {
        if (this.f34265l.o().getValue().booleanValue()) {
            n0 n0Var = this.f34258e;
            String uri = dVar.c().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            n0Var.a(uri);
            this.f34256c.invoke();
            return;
        }
        this.f34260g.J(dVar, "Can't open links when mraid container is not visible to the user");
    }

    public final void d0(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f34256c = function0;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f34262i, null, 1, null);
        this.f34260g.destroy();
        this.f34265l.destroy();
    }

    public final void e0(@NotNull Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f34257d = function1;
    }

    @Nullable
    public final Object g0(@NotNull rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
        k0 b10;
        b10 = gt.g.b(this.f34262i, null, null, new a(null), 3, null);
        return b10.await(cVar);
    }

    public final void h0(t tVar) {
        this.f34264k = tVar;
        if (tVar != null) {
            this.f34260g.f(tVar);
        }
    }

    @NotNull
    public final n o() {
        return this.f34260g;
    }

    @NotNull
    public final Function1<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, Unit> p() {
        return this.f34257d;
    }

    public void p0() {
        if (this.f34264k == t.f34337e) {
            h0(t.f34335c);
        }
    }

    public /* synthetic */ e(Context context, String str, r rVar, Function0 function0, Function1 function1, n0 n0Var, boolean z10, n nVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, rVar, (i10 & 8) != 0 ? new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit o02;
                o02 = e.o0();
                return o02;
            }
        } : function0, (i10 & 16) != 0 ? new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.W((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) obj);
            }
        } : function1, n0Var, (i10 & 64) != 0 ? false : z10, nVar);
    }

    public void D() {
    }
}

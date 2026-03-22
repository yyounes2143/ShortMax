package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m;
import gt.g;
import gt.g0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.e;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a implements m {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final C0527a f34519f = new C0527a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f34520g = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f34521a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34522b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b f34523c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final e<Boolean> f34524d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final i<Boolean> f34525e;

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0527a {
        public /* synthetic */ C0527a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0527a() {
        }
    }

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.loader.WebViewAdLoad$load$1", f = "WebviewAdLoad.kt", l = {21}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34526h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f34528j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ m.a f34529k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, m.a aVar, c<? super b> cVar) {
            super(2, cVar);
            this.f34528j = j10;
            this.f34529k = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new b(this.f34528j, this.f34529k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34526h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b a10 = a.this.a();
                String str = a.this.f34521a;
                long j10 = this.f34528j;
                this.f34526h = 1;
                obj = a10.b(str, j10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.internal.g0 g0Var = (com.moloco.sdk.internal.g0) obj;
            if (g0Var instanceof g0.b) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "WebViewAdLoad", "WebViewAdLoad: load success", null, false, 12, null);
                a.this.f34524d.setValue(kotlin.coroutines.jvm.internal.a.a(true));
                m.a aVar = this.f34529k;
                if (aVar != null) {
                    aVar.a();
                }
            } else if (g0Var instanceof g0.a) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "WebViewAdLoad", "WebViewAdLoad: load failure", null, false, 12, null);
                a.this.f34524d.setValue(kotlin.coroutines.jvm.internal.a.a(false));
                m.a aVar2 = this.f34529k;
                if (aVar2 != null) {
                    aVar2.a((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c) ((g0.a) g0Var).a());
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return Unit.f60915a;
        }
    }

    public a(@NotNull String adm, @NotNull gt.g0 scope, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b webView) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f34521a = adm;
        this.f34522b = scope;
        this.f34523c = webView;
        e<Boolean> a10 = o.a(Boolean.FALSE);
        this.f34524d = a10;
        this.f34525e = a10;
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b a() {
        return this.f34523c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    public void h(long j10, @Nullable m.a aVar) {
        g.d(this.f34522b, null, null, new b(j10, aVar, null), 3, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.m
    @NotNull
    public i<Boolean> isLoaded() {
        return this.f34525e;
    }
}

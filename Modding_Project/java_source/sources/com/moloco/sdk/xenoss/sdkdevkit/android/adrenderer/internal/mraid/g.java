package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import android.graphics.Rect;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import com.bytedance.applog.util.WebViewJsUtil;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x;
import gt.g0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements n {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f34283a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34284b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.d<x> f34285c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final kt.f<x> f34286d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final v f34287e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final WebView f34288f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.i<Boolean> f34289g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> f34290h;

    /* loaded from: classes6.dex */
    public static final class a implements y {
        public a() {
        }

        @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.y
        public boolean a(String fromUrl) {
            Intrinsics.checkNotNullParameter(fromUrl, "fromUrl");
            return g.this.o(fromUrl);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidBridgeImpl$consumeMraidJsCommand$1", f = "MraidBridge.kt", l = {101}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f34292h;

        /* renamed from: i  reason: collision with root package name */
        public int f34293i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.g0<x, x.b.a> f34294j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ g f34295k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.moloco.sdk.internal.g0<x, x.b.a> g0Var, g gVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34294j = g0Var;
            this.f34295k = gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34294j, this.f34295k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            x xVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34293i;
            if (i10 != 0) {
                if (i10 == 1) {
                    xVar = (x) this.f34292h;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                x xVar2 = (x) ((g0.b) this.f34294j).a();
                kt.d dVar = this.f34295k.f34285c;
                this.f34292h = xVar2;
                this.f34293i = 1;
                if (dVar.emit(xVar2, this) == f10) {
                    return f10;
                }
                xVar = xVar2;
            }
            this.f34295k.k(xVar);
            return Unit.f60915a;
        }
    }

    public g(@NotNull Context context, @NotNull gt.g0 scope, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34283a = z10;
        this.f34284b = kotlinx.coroutines.i.i(scope, com.moloco.sdk.internal.scheduling.c.a().getMain());
        kt.d<x> b10 = kt.g.b(0, 0, null, 7, null);
        this.f34285c = b10;
        this.f34286d = b10;
        v vVar = new v(context, new a());
        this.f34287e = vVar;
        this.f34288f = vVar;
        this.f34289g = vVar.c();
        this.f34290h = vVar.getUnrecoverableError();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> F() {
        return this.f34290h;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void J(@NotNull x command, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(msg, "msg");
        p("mraidbridge.notifyErrorEvent(" + JSONObject.quote(command.b()) + ", " + JSONObject.quote(msg) + ')');
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void a(boolean z10) {
        p("mraidbridge.setIsViewable(" + z10 + ')');
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
        return this.f34287e.b(str, this.f34283a, cVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    @NotNull
    public WebView c() {
        return this.f34288f;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void d(@NotNull r placementType) {
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        p("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.c()) + ')');
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        this.f34287e.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void e(@NotNull a0 screenMetrics) {
        Intrinsics.checkNotNullParameter(screenMetrics, "screenMetrics");
        p("\n                mraidbridge.setScreenSize(" + m(screenMetrics.i()) + ");\n                mraidbridge.setMaxSize(" + m(screenMetrics.h()) + ");\n                mraidbridge.setCurrentPosition(" + h(screenMetrics.d()) + ");\n                mraidbridge.setDefaultPosition(" + h(screenMetrics.g()) + ")\n            ");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mraidbridge.notifySizeChangeEvent(");
        sb2.append(m(screenMetrics.d()));
        sb2.append(')');
        p(sb2.toString());
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void f(@NotNull t state) {
        Intrinsics.checkNotNullParameter(state, "state");
        p("mraidbridge.setState(" + JSONObject.quote(state.c()) + ')');
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void g(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        p("mraidbridge.setSupports(" + z10 + ',' + z11 + ',' + z12 + ',' + z13 + ',' + z14 + ')');
    }

    public final String h(Rect rect) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rect.left);
        sb2.append(',');
        sb2.append(rect.top);
        sb2.append(',');
        sb2.append(rect.width());
        sb2.append(',');
        sb2.append(rect.height());
        return sb2.toString();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    public void j() {
        p("mraidbridge.notifyReadyEvent()");
    }

    public final void k(x xVar) {
        String quote = JSONObject.quote(xVar.b());
        p("mraidbridge.nativeCallComplete(" + quote + ')');
    }

    public final String m(Rect rect) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rect.width());
        sb2.append(',');
        sb2.append(rect.height());
        return sb2.toString();
    }

    public final boolean o(String str) {
        com.moloco.sdk.internal.g0<x, x.b.a> a10 = x.f34384b.a(str);
        if (a10 instanceof g0.b) {
            gt.g.d(this.f34284b, null, null, new b(a10, this, null), 3, null);
            return true;
        } else if (a10 instanceof g0.a) {
            return ((x.b.a) ((g0.a) a10).a()).a();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void p(String str) {
        v vVar = this.f34287e;
        vVar.loadUrl(WebViewJsUtil.JS_URL_PREFIX + str);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.n
    @NotNull
    public kt.f<x> w() {
        return this.f34286d;
    }
}

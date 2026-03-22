package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid;

import android.graphics.Rect;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import com.bytedance.applog.util.WebViewJsUtil;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.t;
import gt.g;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final WebView f34563a;

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.MraidJsEventSenderImpl$sendJs$1", f = "MraidJsEventSender.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34564h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f34566j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34566j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34566j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34564h == 0) {
                f.b(obj);
                WebView webView = e.this.f34563a;
                webView.loadUrl(WebViewJsUtil.JS_URL_PREFIX + this.f34566j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public e(@NotNull WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f34563a = webView;
    }

    public final String b(Rect rect) {
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

    public void c(@NotNull r placementType) {
        Intrinsics.checkNotNullParameter(placementType, "placementType");
        k("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.c()) + ')');
    }

    public void d(@NotNull a0 screenMetrics) {
        Intrinsics.checkNotNullParameter(screenMetrics, "screenMetrics");
        k("\n                mraidbridge.setScreenSize(" + j(screenMetrics.i()) + ");\n                mraidbridge.setMaxSize(" + j(screenMetrics.h()) + ");\n                mraidbridge.setCurrentPosition(" + b(screenMetrics.d()) + ");\n                mraidbridge.setDefaultPosition(" + b(screenMetrics.g()) + ");\n                mraidbridge.notifySizeChangeEvent(" + j(screenMetrics.d()) + ");\n            ");
    }

    public void e(@NotNull t state) {
        Intrinsics.checkNotNullParameter(state, "state");
        k("mraidbridge.setState(" + JSONObject.quote(state.c()) + ')');
    }

    public void f(@NotNull String commandString) {
        Intrinsics.checkNotNullParameter(commandString, "commandString");
        String quote = JSONObject.quote(commandString);
        k("mraidbridge.nativeCallComplete(" + quote + ')');
    }

    public void g(@NotNull String commandString, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(commandString, "commandString");
        Intrinsics.checkNotNullParameter(msg, "msg");
        k("mraidbridge.notifyErrorEvent(" + JSONObject.quote(commandString) + ", " + JSONObject.quote(msg) + ')');
    }

    public void h(boolean z10) {
        k("mraidbridge.setIsViewable(" + z10 + ')');
    }

    public void i(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        k("mraidbridge.setSupports(" + z10 + ',' + z11 + ',' + z12 + ',' + z13 + ',' + z14 + ')');
    }

    public final String j(Rect rect) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rect.width());
        sb2.append(',');
        sb2.append(rect.height());
        return sb2.toString();
    }

    public final void k(String str) {
        g.d(i.a(com.moloco.sdk.internal.scheduling.c.a().getMain()), null, null, new a(str, null), 3, null);
    }
}

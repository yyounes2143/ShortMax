package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid;

import android.content.Context;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.p;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.u;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.x;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import gt.g;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.o;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f34539a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final WebView f34540b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b f34541c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final g0 f34542d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final e f34543e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.c f34544f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public t f34545g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final u f34546h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final kt.e<x.f> f34547i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final i<x.f> f34548j;

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.MraidCommunicationHubImpl$handleMraidJsCommandSetOrientationProperties$1", f = "MraidCommunicationHub.kt", l = {IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34549h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ boolean f34551j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ p f34552k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z10, p pVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34551j = z10;
            this.f34552k = pVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34551j, this.f34552k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34549h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.e eVar = b.this.f34547i;
                x.f fVar = new x.f(this.f34551j, this.f34552k);
                this.f34549h = 1;
                if (eVar.emit(fVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.MraidCommunicationHubImpl$startListeningToVisualMetricsChanges$1", f = "MraidCommunicationHub.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0529b extends SuspendLambda implements Function2<Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34553h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f34554i;

        public C0529b(rs.c<? super C0529b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C0529b c0529b = new C0529b(cVar);
            c0529b.f34554i = ((Boolean) obj).booleanValue();
            return c0529b;
        }

        public final Object i(boolean z10, rs.c<? super Unit> cVar) {
            return ((C0529b) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34553h == 0) {
                f.b(obj);
                b.this.f34543e.h(this.f34554i);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.MraidCommunicationHubImpl$startListeningToVisualMetricsChanges$2", f = "MraidCommunicationHub.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<u.a, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34556h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34557i;

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f34557i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(u.a aVar, rs.c<? super Unit> cVar) {
            return ((c) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34556h == 0) {
                f.b(obj);
                b.this.f34543e.d(((u.a) this.f34557i).a());
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public b(@NotNull Context context, @NotNull WebView webView, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.b clickthroughEventHandler) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(clickthroughEventHandler, "clickthroughEventHandler");
        this.f34539a = context;
        this.f34540b = webView;
        this.f34541c = clickthroughEventHandler;
        g0 a10 = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        this.f34542d = a10;
        this.f34543e = new e(webView);
        this.f34544f = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.c(context, this);
        this.f34545g = t.f34335c;
        this.f34546h = new u(webView, context, a10);
        kt.e<x.f> a11 = o.a(new x.f(true, p.f34326d));
        this.f34547i = a11;
        this.f34548j = a11;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    public void a(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        JSONObject jSONObject = new JSONObject();
        String c10 = c(url);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, "clickthrough");
        jSONObject.put("contentType", CampaignEx.JSON_KEY_MRAID);
        jSONObject.put("url", c10);
        try {
            this.f34541c.a(jSONObject);
            this.f34543e.f(MRAIDPresenter.OPEN);
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debug$default(molocoLogger, "TAG", "Ad clicked: " + c10, false, 4, null);
        } catch (Exception unused) {
            this.f34543e.g(MRAIDPresenter.OPEN, "Can't open links when mraid container is not visible to the user");
        }
    }

    public final String c(String str) {
        if (StringsKt.V(str, "itms-apps://", false, 2, null)) {
            return StringsKt.P(str, "itms-apps://", "https://", false, 4, null);
        }
        return str;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    @NotNull
    public i<x.f> e() {
        return this.f34548j;
    }

    public final void f() {
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.f34546h.o(), new C0529b(null)), this.f34542d);
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(this.f34546h.m(), new c(null)), this.f34542d);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    public void remove() {
        this.f34540b.removeJavascriptInterface("AndroidMraid");
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    public void b() {
        this.f34540b.addJavascriptInterface(this.f34544f, "AndroidMraid");
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    public void d() {
        this.f34545g = t.f34335c;
        this.f34543e.i(false, false, false, false, true);
        this.f34543e.e(this.f34545g);
        this.f34543e.c(r.f34330c);
        this.f34543e.d(this.f34546h.m().getValue().a());
        f();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    public void a() {
        if (this.f34545g == t.f34337e) {
            this.f34545g = t.f34335c;
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a
    public void a(boolean z10, @NotNull p forceOrientation) {
        Intrinsics.checkNotNullParameter(forceOrientation, "forceOrientation");
        g.d(this.f34542d, null, null, new a(z10, forceOrientation, null), 3, null);
    }
}

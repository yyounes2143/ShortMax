package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.webkit.WebViewClientCompat;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.f0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.d;
import kt.e;
import kt.f;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c extends WebViewClientCompat implements q {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f34461m = new a(null);

    /* renamed from: n  reason: collision with root package name */
    public static final int f34462n = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f34463a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final f0 f34464b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final r f34465c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final e<Boolean> f34466d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final i<Boolean> f34467e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final e<Boolean> f34468f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final i<Boolean> f34469g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final e<g> f34470h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final i<g> f34471i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final d<Unit> f34472j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final f<Unit> f34473k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a f34474l;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.WebViewClientImpl$shouldOverrideUrlLoading$1$1$1", f = "WebViewClientImpl.kt", l = {79}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34475h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f34477j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a f34478k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a aVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34477j = str;
            this.f34478k = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34477j, this.f34478k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34475h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                f0 f0Var = c.this.f34464b;
                String str = this.f34477j;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a aVar = this.f34478k;
                r f11 = c.this.f();
                d<Unit> dVar = c.this.f34472j;
                this.f34475h = 1;
                if (f0Var.b(str, aVar, f11, dVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public c(@NotNull g0 scope, @NotNull f0 clickthroughService, @NotNull r buttonTracker) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        this.f34463a = scope;
        this.f34464b = clickthroughService;
        this.f34465c = buttonTracker;
        Boolean bool = Boolean.FALSE;
        e<Boolean> a10 = o.a(bool);
        this.f34466d = a10;
        this.f34467e = a10;
        e<Boolean> a11 = o.a(bool);
        this.f34468f = a11;
        this.f34469g = kotlinx.coroutines.flow.c.d(a11);
        e<g> a12 = o.a(null);
        this.f34470h = a12;
        this.f34471i = kotlinx.coroutines.flow.c.d(a12);
        d<Unit> b10 = kt.g.b(0, 0, null, 7, null);
        this.f34472j = b10;
        this.f34473k = b10;
    }

    public final void b(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a adTouch) {
        Intrinsics.checkNotNullParameter(adTouch, "adTouch");
        this.f34474l = adTouch;
    }

    public final void e() {
        this.f34466d.setValue(Boolean.TRUE);
    }

    @NotNull
    public final r f() {
        return this.f34465c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f34465c.h(button);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f34465c.i(buttonType);
    }

    @NotNull
    public final f<Unit> j() {
        return this.f34473k;
    }

    @NotNull
    public final i<g> m() {
        return this.f34471i;
    }

    @NotNull
    public final i<Boolean> o() {
        return this.f34467e;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
        super.onPageFinished(webView, str);
        e<Boolean> eVar = this.f34466d;
        Boolean bool = Boolean.TRUE;
        eVar.setValue(bool);
        this.f34468f.setValue(bool);
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public void onReceivedError(@Nullable WebView webView, int i10, @Nullable String str, @Nullable String str2) {
        super.onReceivedError(webView, i10, str, str2);
        this.f34470h.setValue(g.f34006c);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.error$default(molocoLogger, "WebViewClientImpl", "onReceivedError " + str, null, false, 12, null);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        this.f34470h.setValue(g.f34007d);
        MolocoLogger.error$default(MolocoLogger.INSTANCE, "WebViewClientImpl", "onRenderProcessGone", null, false, 12, null);
        return true;
    }

    @NotNull
    public final i<Boolean> p() {
        return this.f34469g;
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public boolean shouldOverrideUrlLoading(@Nullable WebView webView, @Nullable String str) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a aVar;
        if (str != null && (aVar = this.f34474l) != null) {
            gt.g.d(this.f34463a, null, null, new b(str, aVar, null), 3, null);
            return true;
        }
        return true;
    }
}

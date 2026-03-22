package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer;

import android.graphics.Bitmap;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebViewClientCompat;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.h;
import gt.g;
import gt.g0;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.r;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c extends WebViewClientCompat {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f34606r = new a(null);

    /* renamed from: s  reason: collision with root package name */
    public static final int f34607s = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final h f34608a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f34609b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f34610c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final kt.e<Boolean> f34611d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final i<Boolean> f34612e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.e<Boolean> f34613f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final i<Boolean> f34614g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> f34615h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> f34616i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public r f34617j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final kt.e<Boolean> f34618k;

    /* renamed from: l  reason: collision with root package name */
    public int f34619l;

    /* renamed from: m  reason: collision with root package name */
    public final int f34620m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public r f34621n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    public com.moloco.sdk.acm.e f34622o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public com.moloco.sdk.acm.e f34623p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public String f34624q;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebViewClientImpl$onPageFinished$1", f = "TemplateWebviewClientImpl.kt", l = {124}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34625h;

        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ c f34627a;

            public a(c cVar) {
                this.f34627a = cVar;
            }

            public final Object a(boolean z10, rs.c<? super Unit> cVar) {
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Webview page pending error resolution: " + z10, null, false, 12, null);
                if (!z10) {
                    this.f34627a.d();
                }
                return Unit.f60915a;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                return a(((Boolean) obj).booleanValue(), cVar);
            }
        }

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34625h;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                kt.e eVar = c.this.f34618k;
                a aVar = new a(c.this);
                this.f34625h = 1;
                if (eVar.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            throw new KotlinNothingValueException();
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebViewClientImpl$pageFinished$3", f = "TemplateWebviewClientImpl.kt", l = {93}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0537c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34628h;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.c$c$a */
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ c f34630a;

            public a(c cVar) {
                this.f34630a = cVar;
            }

            public final Object a(boolean z10, rs.c<? super Unit> cVar) {
                String str;
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Content loaded event received, isSuccess: " + z10, null, false, 12, null);
                this.f34630a.f34611d.setValue(kotlin.coroutines.jvm.internal.a.a(z10));
                r rVar = this.f34630a.f34621n;
                if (rVar != null) {
                    r.a.b(rVar, null, 1, null);
                }
                com.moloco.sdk.acm.recorder.a aVar = this.f34630a.f34609b;
                com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.L.c());
                com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                String c10 = cVar2.c();
                String str2 = "failure";
                if (!z10) {
                    str = "failure";
                } else {
                    str = "success";
                }
                aVar.b(bVar.e(c10, str));
                com.moloco.sdk.acm.e eVar = this.f34630a.f34623p;
                if (eVar != null) {
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f34630a.f34609b;
                    String c11 = cVar2.c();
                    if (z10) {
                        str2 = "success";
                    }
                    aVar2.a(eVar.f(c11, str2));
                }
                return Unit.f60915a;
            }

            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                return a(((Boolean) obj).booleanValue(), cVar);
            }
        }

        public C0537c(rs.c<? super C0537c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C0537c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0537c(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34628h;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                kt.f<Boolean> c10 = c.this.f34608a.c();
                a aVar = new a(c.this);
                this.f34628h = 1;
                if (c10.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            throw new KotlinNothingValueException();
        }
    }

    public c(@NotNull h contentLoadedEventHandler, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(contentLoadedEventHandler, "contentLoadedEventHandler");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f34608a = contentLoadedEventHandler;
        this.f34609b = metricsRecorder;
        this.f34610c = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getMain());
        Boolean bool = Boolean.FALSE;
        kt.e<Boolean> a10 = o.a(bool);
        this.f34611d = a10;
        this.f34612e = a10;
        kt.e<Boolean> a11 = o.a(bool);
        this.f34613f = a11;
        this.f34614g = kotlinx.coroutines.flow.c.d(a11);
        kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> a12 = o.a(null);
        this.f34615h = a12;
        this.f34616i = kotlinx.coroutines.flow.c.d(a12);
        this.f34618k = o.a(bool);
        this.f34620m = 3;
    }

    public static final void e(c cVar, WebResourceErrorCompat webResourceErrorCompat, WebView webView, String str) {
        boolean parseBoolean = Boolean.parseBoolean(str);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", '[' + Thread.currentThread().getName() + "] Content type with webview error is required: " + parseBoolean, null, false, 12, null);
        if (parseBoolean) {
            cVar.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e("required", "true").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), String.valueOf(webResourceErrorCompat.getDescription())).e("status_code", String.valueOf(webResourceErrorCompat.getErrorCode())).e(com.moloco.sdk.internal.client_metrics_data.c.f32059f.c(), String.valueOf(cVar.f34619l)).e("is_loaded", String.valueOf(cVar.f34612e.getValue().booleanValue())));
            if (cVar.f34612e.getValue().booleanValue() && webResourceErrorCompat.getErrorCode() == -1 && webResourceErrorCompat.getDescription().equals("net::ERR_FAILED")) {
                MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Webview is already loaded, not setting unrecoverable error for unknown error", null, false, 12, null);
            } else if (cVar.g(webResourceErrorCompat.getErrorCode())) {
                cVar.f34619l++;
                MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Retrying... Attempt: " + cVar.f34619l, null, false, 12, null);
                r rVar = cVar.f34621n;
                if (rVar != null) {
                    r.a.b(rVar, null, 1, null);
                }
                r rVar2 = cVar.f34617j;
                if (rVar2 != null) {
                    r.a.b(rVar2, null, 1, null);
                }
                webView.reload();
            } else {
                MolocoLogger.warn$default(molocoLogger, "TemplateWebViewClientImpl", "Retrying attempts complete. Setting unrecoverable error.", null, false, 12, null);
                cVar.f34624q = webResourceErrorCompat.getDescription().toString();
                cVar.f34615h.setValue(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34640c);
            }
        } else {
            MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Content is not required, not setting unrecoverable error", null, false, 12, null);
            cVar.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e("required", "false").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), String.valueOf(webResourceErrorCompat.getDescription())).e("status_code", String.valueOf(webResourceErrorCompat.getErrorCode())).e("is_loaded", String.valueOf(cVar.f34612e.getValue().booleanValue())));
        }
        cVar.f34618k.setValue(Boolean.FALSE);
    }

    public static final void f(c cVar, String str, int i10, WebView webView, String str2) {
        boolean parseBoolean = Boolean.parseBoolean(str2);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", '[' + Thread.currentThread().getName() + "] Content type with webview error is required: " + parseBoolean, null, false, 12, null);
        if (parseBoolean) {
            cVar.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e("required", "true").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), String.valueOf(str)).e("status_code", String.valueOf(i10)).e(com.moloco.sdk.internal.client_metrics_data.c.f32059f.c(), String.valueOf(cVar.f34619l)).e("is_loaded", String.valueOf(cVar.f34612e.getValue().booleanValue())));
            if (cVar.f34612e.getValue().booleanValue() && i10 == -1 && str.equals("net::ERR_FAILED")) {
                MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Webview is already loaded, not setting unrecoverable error for unknown error", null, false, 12, null);
            } else if (cVar.g(i10)) {
                cVar.f34619l++;
                MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Retrying... Attempt: " + cVar.f34619l, null, false, 12, null);
                r rVar = cVar.f34621n;
                if (rVar != null) {
                    r.a.b(rVar, null, 1, null);
                }
                webView.reload();
            } else {
                MolocoLogger.warn$default(molocoLogger, "TemplateWebViewClientImpl", "Retrying attempts complete. Setting unrecoverable error.", null, false, 12, null);
                cVar.f34624q = str;
                cVar.f34615h.setValue(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34640c);
            }
        } else {
            MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Content is not required, not setting unrecoverable error", null, false, 12, null);
            cVar.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e("required", "false").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), str).e("status_code", String.valueOf(i10)).e("is_loaded", String.valueOf(cVar.f34612e.getValue().booleanValue())));
        }
        cVar.f34618k.setValue(Boolean.FALSE);
    }

    @NotNull
    public final i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> c() {
        return this.f34616i;
    }

    public final void d() {
        r d10;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HTML Page finished loading is success: ");
        sb2.append(this.f34616i.getValue() == null);
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", sb2.toString(), null, false, 12, null);
        this.f34613f.setValue(Boolean.TRUE);
        if (this.f34616i.getValue() != null) {
            MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Unrecoverable error occurred, not setting isLoaded to true", null, false, 12, null);
            this.f34611d.setValue(Boolean.FALSE);
            r rVar = this.f34621n;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            com.moloco.sdk.acm.recorder.a aVar = this.f34609b;
            com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.J.c());
            com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
            com.moloco.sdk.acm.b e10 = bVar.e(cVar.c(), "failure");
            com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
            String c10 = cVar2.c();
            String str = this.f34624q;
            if (str == null) {
                str = "unknown";
            }
            aVar.b(e10.e(c10, str));
            com.moloco.sdk.acm.e eVar = this.f34622o;
            if (eVar != null) {
                com.moloco.sdk.acm.recorder.a aVar2 = this.f34609b;
                com.moloco.sdk.acm.e f10 = eVar.f(cVar.c(), "failure");
                String c11 = cVar2.c();
                String str2 = this.f34624q;
                aVar2.a(f10.f(c11, str2 != null ? str2 : "unknown"));
                return;
            }
            return;
        }
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Waiting for content HTML assets to load or error out", null, false, 12, null);
        com.moloco.sdk.acm.recorder.a aVar3 = this.f34609b;
        com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.J.c());
        com.moloco.sdk.internal.client_metrics_data.c cVar3 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
        aVar3.b(bVar2.e(cVar3.c(), "success"));
        com.moloco.sdk.acm.e eVar2 = this.f34622o;
        if (eVar2 != null) {
            this.f34609b.a(eVar2.f(cVar3.c(), "success"));
        }
        d10 = g.d(this.f34610c, null, null, new C0537c(null), 3, null);
        this.f34621n = d10;
    }

    public final boolean g(int i10) {
        boolean z10;
        boolean z11;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("errorCode: ");
        sb2.append(i10);
        sb2.append(", (errorCode == UNKNOWN_ERROR || errorCode == NETWORK_ERROR): ");
        if (i10 != -1 && i10 != -2) {
            z10 = false;
        } else {
            z10 = true;
        }
        sb2.append(z10);
        MolocoLogger.debug$default(molocoLogger, "TemplateWebViewClientImpl", sb2.toString(), false, 4, null);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("retryCount: ");
        sb3.append(this.f34619l);
        sb3.append(", MAX_RETRY_LIMIT: ");
        sb3.append(this.f34620m);
        sb3.append(", retryCount < MAX_RETRY_LIMIT: ");
        if (this.f34619l < this.f34620m) {
            z11 = true;
        } else {
            z11 = false;
        }
        sb3.append(z11);
        MolocoLogger.debug$default(molocoLogger, "TemplateWebViewClientImpl", sb3.toString(), false, 4, null);
        if ((i10 == -1 || i10 == -2) && this.f34619l < this.f34620m) {
            return true;
        }
        return false;
    }

    @NotNull
    public final i<Boolean> m() {
        return this.f34612e;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
        r d10;
        super.onPageFinished(webView, str);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Webview page finished loading has pending error: " + this.f34618k.getValue().booleanValue(), null, false, 12, null);
        this.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.K.c()).e("pending_error", String.valueOf(this.f34618k.getValue().booleanValue())));
        if (this.f34618k.getValue().booleanValue()) {
            d10 = g.d(this.f34610c, null, null, new b(null), 3, null);
            this.f34617j = d10;
            return;
        }
        d();
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(@Nullable WebView webView, @Nullable String str, @Nullable Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "TemplateWebViewClientImpl", "HTML Page started loading", null, false, 12, null);
        this.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.I.c()));
        this.f34622o = this.f34609b.c(com.moloco.sdk.internal.client_metrics_data.d.f32083u.c());
        this.f34623p = this.f34609b.c(com.moloco.sdk.internal.client_metrics_data.d.f32084v.c());
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public void onReceivedError(@NotNull final WebView view, final int i10, @NotNull final String description, @NotNull String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        this.f34618k.setValue(Boolean.TRUE);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Received error: " + i10 + ", with description: " + description + " for url: " + failingUrl, null, false, 12, null);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ContentChecker.isRequiredContent('");
        sb2.append(failingUrl);
        sb2.append("');");
        view.evaluateJavascript(sb2.toString(), new ValueCallback() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.e
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                c.f(c.this, description, i10, view, (String) obj);
            }
        });
        super.onReceivedError(view, i10, description, failingUrl);
    }

    @Override // androidx.webkit.WebViewClientCompat, android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public void onReceivedHttpError(@NotNull WebView view, @NotNull WebResourceRequest request, @NotNull final WebResourceResponse errorResponse) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        this.f34618k.setValue(Boolean.TRUE);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", '[' + Thread.currentThread().getName() + "] Received HTTP error: " + Integer.valueOf(errorResponse.getStatusCode()) + ", with description: " + errorResponse.getReasonPhrase() + " for url: " + request.getUrl(), null, false, 12, null);
        String uri = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ContentChecker.isRequiredContent('");
        sb2.append(uri);
        sb2.append("');");
        view.evaluateJavascript(sb2.toString(), new ValueCallback() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.f
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                c.d(c.this, errorResponse, (String) obj);
            }
        });
        super.onReceivedHttpError(view, request, errorResponse);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@NotNull WebView view, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), "render_process_gone_error").e("is_loaded", String.valueOf(this.f34612e.getValue().booleanValue())));
        this.f34615h.setValue(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34642e);
        MolocoLogger.error$default(MolocoLogger.INSTANCE, "TemplateWebViewClientImpl", "onRenderProcessGone", null, false, 12, null);
        this.f34618k.setValue(Boolean.FALSE);
        return true;
    }

    @NotNull
    public final i<Boolean> p() {
        return this.f34614g;
    }

    @Override // androidx.webkit.WebViewClientCompat
    public void onReceivedError(@NotNull final WebView view, @NotNull WebResourceRequest request, @NotNull final WebResourceErrorCompat error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        this.f34618k.setValue(Boolean.TRUE);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Received error: " + error.getErrorCode() + ", with description: " + ((Object) error.getDescription()) + " for url: " + request.getUrl(), null, false, 12, null);
        String uri = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ContentChecker.isRequiredContent('");
        sb2.append(uri);
        sb2.append("');");
        view.evaluateJavascript(sb2.toString(), new ValueCallback() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.d
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                c.e(c.this, error, view, (String) obj);
            }
        });
        super.onReceivedError(view, request, error);
    }

    public static final void d(c cVar, WebResourceResponse webResourceResponse, String str) {
        boolean parseBoolean = Boolean.parseBoolean(str);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", '[' + Thread.currentThread().getName() + "] Content isRequired with http error: " + parseBoolean, null, false, 12, null);
        if (parseBoolean) {
            cVar.f34615h.setValue(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34641d);
            cVar.f34624q = String.valueOf(webResourceResponse.getStatusCode());
            cVar.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e("required", "true").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), String.valueOf(webResourceResponse.getStatusCode())).e("is_loaded", String.valueOf(cVar.f34612e.getValue().booleanValue())));
            MolocoLogger.warn$default(molocoLogger, "TemplateWebViewClientImpl", "Setting unrecoverable error: " + cVar.f34616i.getValue(), null, false, 12, null);
        } else {
            MolocoLogger.info$default(molocoLogger, "TemplateWebViewClientImpl", "Content is not required, not setting unrecoverable error", null, false, 12, null);
            cVar.f34609b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.F.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e("required", "false").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), String.valueOf(webResourceResponse.getStatusCode())).e("is_loaded", String.valueOf(cVar.f34612e.getValue().booleanValue())));
        }
        cVar.f34618k.setValue(Boolean.FALSE);
    }
}

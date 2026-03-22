package com.vungle.ads.internal.ui;

import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.EvaluateJsError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.omsdk.WebViewObserver;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.WebViewAPI;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.g;
import kotlinx.serialization.json.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleWebClient.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleWebClient extends WebViewClient implements WebViewAPI {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleWebClient";
    @NotNull
    private final AdPayload advertisement;
    private boolean collectConsent;
    @Nullable
    private WebViewAPI.WebClientErrorHandler errorHandler;
    @Nullable
    private String gdprAccept;
    @Nullable
    private String gdprBody;
    @Nullable
    private String gdprDeny;
    @Nullable
    private String gdprTitle;
    @Nullable
    private Boolean isViewable;
    @Nullable
    private WebView loadedWebView;
    @Nullable
    private WebViewAPI.MraidDelegate mraidDelegate;
    @NotNull
    private final ExecutorService offloadExecutor;
    @NotNull
    private final Placement placement;
    @Nullable
    private final Platform platform;
    private boolean ready;
    @Nullable
    private final SignalManager signalManager;
    @Nullable
    private WebViewObserver webViewObserver;

    /* compiled from: VungleWebClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: VungleWebClient.kt */
    @RequiresApi(29)
    @Metadata
    /* loaded from: classes7.dex */
    public static final class VungleWebViewRenderProcessClient extends WebViewRenderProcessClient {
        @Nullable
        private WebViewAPI.WebClientErrorHandler errorHandler;

        public VungleWebViewRenderProcessClient(@Nullable WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
            this.errorHandler = webClientErrorHandler;
        }

        public void onRenderProcessResponsive(@NotNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
            Intrinsics.checkNotNullParameter(webView, "webView");
        }

        public void onRenderProcessUnresponsive(@NotNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
            boolean z10;
            Intrinsics.checkNotNullParameter(webView, "webView");
            Logger.Companion companion = Logger.Companion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onRenderProcessUnresponsive(Title = ");
            sb2.append(webView.getTitle());
            sb2.append(", URL = ");
            sb2.append(webView.getOriginalUrl());
            sb2.append(", (webViewRenderProcess != null) = ");
            if (webViewRenderProcess != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            sb2.append(z10);
            companion.w(VungleWebClient.TAG, sb2.toString());
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                webClientErrorHandler.onRenderProcessUnresponsive(webView, webViewRenderProcess);
            }
        }
    }

    public /* synthetic */ VungleWebClient(AdPayload adPayload, Placement placement, ExecutorService executorService, SignalManager signalManager, Platform platform, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(adPayload, placement, executorService, (i10 & 8) != 0 ? null : signalManager, (i10 & 16) != 0 ? null : platform);
    }

    private final void handleWebViewError(String str, String str2, boolean z10) {
        String str3 = str2 + ' ' + str;
        WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
        if (webClientErrorHandler != null) {
            webClientErrorHandler.onReceivedError(str3, z10);
        }
    }

    private final boolean isCriticalAsset(String str) {
        if (str.length() > 0) {
            return this.advertisement.isCriticalAsset(str);
        }
        return false;
    }

    private final void runJavascriptOnWebView(WebView webView, String str) {
        try {
            Logger.Companion companion = Logger.Companion;
            companion.w(TAG, "mraid Injecting JS " + str);
            if (webView != null) {
                webView.evaluateJavascript(str, null);
            }
        } catch (Throwable th2) {
            new EvaluateJsError("Evaluate js failed " + th2.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shouldOverrideUrlLoading$lambda-6$lambda-1  reason: not valid java name */
    public static final void m4841shouldOverrideUrlLoading$lambda6$lambda1(final VungleWebClient this$0, Handler handler, final WebView webView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        final String str = "window.vungle.mraidBridge.notifyReadyEvent(" + this$0.advertisement.createMRAIDArgs() + ')';
        handler.post(new Runnable() { // from class: com.vungle.ads.internal.ui.d
            @Override // java.lang.Runnable
            public final void run() {
                VungleWebClient.m4842shouldOverrideUrlLoading$lambda6$lambda1$lambda0(VungleWebClient.this, webView, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shouldOverrideUrlLoading$lambda-6$lambda-1$lambda-0  reason: not valid java name */
    public static final void m4842shouldOverrideUrlLoading$lambda6$lambda1$lambda0(VungleWebClient this$0, WebView webView, String injectJs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(injectJs, "$injectJs");
        this$0.runJavascriptOnWebView(webView, injectJs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4  reason: not valid java name */
    public static final void m4843shouldOverrideUrlLoading$lambda6$lambda5$lambda4(WebViewAPI.MraidDelegate it, String command, JsonObject args, Handler handler, final VungleWebClient this$0, final WebView webView) {
        Intrinsics.checkNotNullParameter(it, "$it");
        Intrinsics.checkNotNullParameter(command, "$command");
        Intrinsics.checkNotNullParameter(args, "$args");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (it.processCommand(command, args)) {
            handler.post(new Runnable() { // from class: com.vungle.ads.internal.ui.c
                @Override // java.lang.Runnable
                public final void run() {
                    VungleWebClient.m4844shouldOverrideUrlLoading$lambda6$lambda5$lambda4$lambda3(VungleWebClient.this, webView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4$lambda-3  reason: not valid java name */
    public static final void m4844shouldOverrideUrlLoading$lambda6$lambda5$lambda4$lambda3(VungleWebClient this$0, WebView webView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
    }

    public final boolean getCollectConsent$vungle_ads_release() {
        return this.collectConsent;
    }

    @Nullable
    public final WebViewAPI.WebClientErrorHandler getErrorHandler$vungle_ads_release() {
        return this.errorHandler;
    }

    @Nullable
    public final String getGdprAccept$vungle_ads_release() {
        return this.gdprAccept;
    }

    @Nullable
    public final String getGdprBody$vungle_ads_release() {
        return this.gdprBody;
    }

    @Nullable
    public final String getGdprDeny$vungle_ads_release() {
        return this.gdprDeny;
    }

    @Nullable
    public final String getGdprTitle$vungle_ads_release() {
        return this.gdprTitle;
    }

    @Nullable
    public final WebView getLoadedWebView$vungle_ads_release() {
        return this.loadedWebView;
    }

    @Nullable
    public final WebViewAPI.MraidDelegate getMraidDelegate$vungle_ads_release() {
        return this.mraidDelegate;
    }

    public final boolean getReady$vungle_ads_release() {
        return this.ready;
    }

    @Nullable
    public final WebViewObserver getWebViewObserver$vungle_ads_release() {
        return this.webViewObserver;
    }

    @Nullable
    public final Boolean isViewable$vungle_ads_release() {
        return this.isViewable;
    }

    public final void notifyDiskAvailableSize(long j10) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            runJavascriptOnWebView(webView, "window.vungle.mraidBridgeExt.notifyAvailableDiskSpace(" + j10 + ')');
        }
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void notifyPropertiesChange(boolean z10) {
        String str;
        WebView webView = this.loadedWebView;
        if (webView != null) {
            z zVar = new z();
            z zVar2 = new z();
            g.b(zVar2, "width", Integer.valueOf(webView.getWidth()));
            g.b(zVar2, "height", Integer.valueOf(webView.getHeight()));
            JsonObject a10 = zVar2.a();
            z zVar3 = new z();
            g.b(zVar3, TextureRenderKeys.KEY_IS_X, 0);
            g.b(zVar3, TextureRenderKeys.KEY_IS_Y, 0);
            g.b(zVar3, "width", Integer.valueOf(webView.getWidth()));
            g.b(zVar3, "height", Integer.valueOf(webView.getHeight()));
            JsonObject a11 = zVar3.a();
            z zVar4 = new z();
            Boolean bool = Boolean.FALSE;
            g.a(zVar4, "sms", bool);
            g.a(zVar4, "tel", bool);
            g.a(zVar4, "calendar", bool);
            g.a(zVar4, "storePicture", bool);
            g.a(zVar4, "inlineVideo", bool);
            JsonObject a12 = zVar4.a();
            zVar.b("maxSize", a10);
            zVar.b("screenSize", a10);
            zVar.b("defaultPosition", a11);
            zVar.b("currentPosition", a11);
            zVar.b("supports", a12);
            g.c(zVar, "placementType", this.advertisement.templateType());
            Boolean bool2 = this.isViewable;
            if (bool2 != null) {
                g.a(zVar, "isViewable", bool2);
            }
            g.c(zVar, "os", "android");
            g.c(zVar, "osVersion", String.valueOf(Build.VERSION.SDK_INT));
            g.a(zVar, "incentivized", Boolean.valueOf(this.placement.isRewardedVideo()));
            g.c(zVar, "version", "1.0");
            Platform platform = this.platform;
            if (platform != null) {
                g.a(zVar, "isSilent", Boolean.valueOf(platform.isSilentModeEnabled()));
            }
            if (this.collectConsent) {
                g.a(zVar, "consentRequired", Boolean.TRUE);
                g.c(zVar, "consentTitleText", this.gdprTitle);
                g.c(zVar, "consentBodyText", this.gdprBody);
                g.c(zVar, "consentAcceptButtonText", this.gdprAccept);
                g.c(zVar, "consentDenyButtonText", this.gdprDeny);
            } else {
                g.a(zVar, "consentRequired", bool);
            }
            if (!ConfigManager.INSTANCE.signalsDisabled()) {
                SignalManager signalManager = this.signalManager;
                String str2 = null;
                if (signalManager != null) {
                    str = signalManager.getUuid();
                } else {
                    str = null;
                }
                if (str != null && str.length() != 0) {
                    SignalManager signalManager2 = this.signalManager;
                    if (signalManager2 != null) {
                        str2 = signalManager2.getUuid();
                    }
                    g.c(zVar, "sessionId", str2);
                }
            }
            g.c(zVar, "sdkVersion", BuildConfig.VERSION_NAME);
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + zVar.a() + ',' + z10 + ')');
        }
    }

    public final void notifySilentModeChange(boolean z10) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            z zVar = new z();
            g.a(zVar, "isSilent", Boolean.valueOf(z10));
            JsonObject a10 = zVar.a();
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + a10 + ')');
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
        super.onPageFinished(webView, str);
        if (webView == null) {
            return;
        }
        this.loadedWebView = webView;
        webView.setVisibility(0);
        notifyPropertiesChange(true);
        if (Build.VERSION.SDK_INT >= 29) {
            webView.setWebViewRenderProcessClient(b.a(new VungleWebViewRenderProcessClient(this.errorHandler)));
        }
        WebViewObserver webViewObserver = this.webViewObserver;
        if (webViewObserver != null) {
            webViewObserver.onPageFinished(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public void onReceivedError(@Nullable WebView webView, int i10, @NotNull String description, @NotNull String failingUrl) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        super.onReceivedError(webView, i10, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest, @Nullable WebResourceResponse webResourceResponse) {
        Integer num;
        boolean z10;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        Uri uri = null;
        if (webResourceResponse != null) {
            num = Integer.valueOf(webResourceResponse.getStatusCode());
        } else {
            num = null;
        }
        String valueOf = String.valueOf(num);
        if (webResourceRequest != null) {
            uri = webResourceRequest.getUrl();
        }
        String valueOf2 = String.valueOf(uri);
        boolean z11 = false;
        if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
            z10 = true;
        } else {
            z10 = false;
        }
        Logger.Companion.e(TAG, "Http Error desc " + valueOf + ' ' + z10 + " for URL " + valueOf2);
        if (isCriticalAsset(valueOf2) && z10) {
            z11 = true;
        }
        handleWebViewError(valueOf, valueOf2, z11);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        String str;
        Boolean bool;
        boolean didCrash;
        boolean didCrash2;
        Boolean bool2 = null;
        String str2 = null;
        this.loadedWebView = null;
        if (Build.VERSION.SDK_INT < 26) {
            Logger.Companion companion = Logger.Companion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onRenderProcessGone url: ");
            if (webView != null) {
                str2 = webView.getUrl();
            }
            sb2.append(str2);
            companion.w(TAG, sb2.toString());
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                return webClientErrorHandler.onWebRenderingProcessGone(webView, Boolean.TRUE);
            }
            return true;
        }
        Logger.Companion companion2 = Logger.Companion;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("onRenderProcessGone url: ");
        if (webView != null) {
            str = webView.getUrl();
        } else {
            str = null;
        }
        sb3.append(str);
        sb3.append(", did crash: ");
        if (renderProcessGoneDetail != null) {
            didCrash2 = renderProcessGoneDetail.didCrash();
            bool = Boolean.valueOf(didCrash2);
        } else {
            bool = null;
        }
        sb3.append(bool);
        companion2.w(TAG, sb3.toString());
        WebViewAPI.WebClientErrorHandler webClientErrorHandler2 = this.errorHandler;
        if (webClientErrorHandler2 != null) {
            if (renderProcessGoneDetail != null) {
                didCrash = renderProcessGoneDetail.didCrash();
                bool2 = Boolean.valueOf(didCrash);
            }
            return webClientErrorHandler2.onWebRenderingProcessGone(webView, bool2);
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setAdVisibility(boolean z10) {
        this.isViewable = Boolean.valueOf(z10);
        notifyPropertiesChange(false);
    }

    public final void setCollectConsent$vungle_ads_release(boolean z10) {
        this.collectConsent = z10;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setConsentStatus(boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this.collectConsent = z10;
        this.gdprTitle = str;
        this.gdprBody = str2;
        this.gdprAccept = str3;
        this.gdprDeny = str4;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setErrorHandler(@NotNull WebViewAPI.WebClientErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.errorHandler = errorHandler;
    }

    public final void setErrorHandler$vungle_ads_release(@Nullable WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
        this.errorHandler = webClientErrorHandler;
    }

    public final void setGdprAccept$vungle_ads_release(@Nullable String str) {
        this.gdprAccept = str;
    }

    public final void setGdprBody$vungle_ads_release(@Nullable String str) {
        this.gdprBody = str;
    }

    public final void setGdprDeny$vungle_ads_release(@Nullable String str) {
        this.gdprDeny = str;
    }

    public final void setGdprTitle$vungle_ads_release(@Nullable String str) {
        this.gdprTitle = str;
    }

    public final void setLoadedWebView$vungle_ads_release(@Nullable WebView webView) {
        this.loadedWebView = webView;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setMraidDelegate(@Nullable WebViewAPI.MraidDelegate mraidDelegate) {
        this.mraidDelegate = mraidDelegate;
    }

    public final void setMraidDelegate$vungle_ads_release(@Nullable WebViewAPI.MraidDelegate mraidDelegate) {
        this.mraidDelegate = mraidDelegate;
    }

    public final void setReady$vungle_ads_release(boolean z10) {
        this.ready = z10;
    }

    public final void setViewable$vungle_ads_release(@Nullable Boolean bool) {
        this.isViewable = bool;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setWebViewObserver(@Nullable WebViewObserver webViewObserver) {
        this.webViewObserver = webViewObserver;
    }

    public final void setWebViewObserver$vungle_ads_release(@Nullable WebViewObserver webViewObserver) {
        this.webViewObserver = webViewObserver;
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public boolean shouldOverrideUrlLoading(@Nullable final WebView webView, @Nullable String str) {
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "MRAID Command " + str);
        if (str != null && str.length() != 0) {
            Uri parse = Uri.parse(str);
            if (parse == null || parse.getScheme() == null) {
                return false;
            }
            String scheme = parse.getScheme();
            if (Intrinsics.areEqual(scheme, CampaignEx.JSON_KEY_MRAID)) {
                final String host = parse.getHost();
                if (host != null) {
                    if (Intrinsics.areEqual("propertiesChangeCompleted", host)) {
                        if (!this.ready) {
                            this.ready = true;
                            final Handler handler = new Handler(Looper.getMainLooper());
                            this.offloadExecutor.submit(new Runnable() { // from class: com.vungle.ads.internal.ui.e
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VungleWebClient.m4841shouldOverrideUrlLoading$lambda6$lambda1(VungleWebClient.this, handler, webView);
                                }
                            });
                        }
                    } else {
                        final WebViewAPI.MraidDelegate mraidDelegate = this.mraidDelegate;
                        if (mraidDelegate != null) {
                            z zVar = new z();
                            for (String param : parse.getQueryParameterNames()) {
                                Intrinsics.checkNotNullExpressionValue(param, "param");
                                g.c(zVar, param, parse.getQueryParameter(param));
                            }
                            final JsonObject a10 = zVar.a();
                            final Handler handler2 = new Handler(Looper.getMainLooper());
                            this.offloadExecutor.submit(new Runnable() { // from class: com.vungle.ads.internal.ui.f
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VungleWebClient.m4843shouldOverrideUrlLoading$lambda6$lambda5$lambda4(WebViewAPI.MraidDelegate.this, host, a10, handler2, this, webView);
                                }
                            });
                        }
                    }
                    return true;
                }
            } else if (StringsKt.G(ProxyConfig.MATCH_HTTP, scheme, true) || StringsKt.G("https", scheme, true)) {
                companion.d(TAG, "Open URL" + str);
                WebViewAPI.MraidDelegate mraidDelegate2 = this.mraidDelegate;
                if (mraidDelegate2 != null) {
                    z zVar2 = new z();
                    g.c(zVar2, "url", str);
                    mraidDelegate2.processCommand("openNonMraid", zVar2.a());
                }
                return true;
            }
            return false;
        }
        companion.e(TAG, "Invalid URL ");
        return false;
    }

    public VungleWebClient(@NotNull AdPayload advertisement, @NotNull Placement placement, @NotNull ExecutorService offloadExecutor, @Nullable SignalManager signalManager, @Nullable Platform platform) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(offloadExecutor, "offloadExecutor");
        this.advertisement = advertisement;
        this.placement = placement;
        this.offloadExecutor = offloadExecutor;
        this.signalManager = signalManager;
        this.platform = platform;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest, @Nullable WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        String valueOf = String.valueOf(webResourceError != null ? webResourceError.getDescription() : null);
        String valueOf2 = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
        boolean z10 = false;
        boolean z11 = webResourceRequest != null && webResourceRequest.isForMainFrame();
        Logger.Companion.e(TAG, "Error desc " + valueOf + ' ' + z11 + " for URL " + valueOf2);
        if (isCriticalAsset(valueOf2) && z11) {
            z10 = true;
        }
        handleWebViewError(valueOf, valueOf2, z10);
    }

    @VisibleForTesting
    public static /* synthetic */ void getCollectConsent$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getErrorHandler$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprAccept$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprBody$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprDeny$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprTitle$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLoadedWebView$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidDelegate$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getReady$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getWebViewObserver$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isViewable$vungle_ads_release$annotations() {
    }
}

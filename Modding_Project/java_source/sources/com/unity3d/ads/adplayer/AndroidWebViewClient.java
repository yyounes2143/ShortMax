package com.unity3d.ads.adplayer;

import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebViewClientCompat;
import androidx.webkit.WebViewFeature;
import com.unity3d.ads.adplayer.model.ErrorReason;
import com.unity3d.ads.adplayer.model.WebViewClientError;
import com.unity3d.ads.core.domain.GetCachedAsset;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.IntExtensionKt;
import com.unity3d.ads.core.extensions.ViewExtensionsKt;
import gt.k0;
import gt.p;
import gt.r;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.o;
import kt.e;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidWebViewClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidWebViewClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebViewClient.kt\ncom/unity3d/ads/adplayer/AndroidWebViewClient\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n230#2,5:141\n230#2,5:146\n230#2,5:151\n230#2,5:157\n1#3:156\n*S KotlinDebug\n*F\n+ 1 AndroidWebViewClient.kt\ncom/unity3d/ads/adplayer/AndroidWebViewClient\n*L\n41#1:141,5\n62#1:146,5\n82#1:151,5\n122#1:157,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidWebViewClient extends WebViewClientCompat {
    @NotNull
    public static final String BLANK_PAGE = "about:blank";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final e<Boolean> _isRenderProcessGone;
    @NotNull
    private final p<List<WebViewClientError>> _onLoadFinished;
    @NotNull
    private final GetCachedAsset getCachedAsset;
    @NotNull
    private final i<Boolean> isRenderProcessGone;
    @NotNull
    private final e<List<WebViewClientError>> loadErrors;
    @NotNull
    private final k0<List<WebViewClientError>> onLoadFinished;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final e<String> webviewType;

    /* compiled from: AndroidWebViewClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidWebViewClient(@NotNull GetCachedAsset getCachedAsset, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getCachedAsset, "getCachedAsset");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getCachedAsset = getCachedAsset;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.loadErrors = o.a(CollectionsKt.n());
        p<List<WebViewClientError>> b10 = r.b(null, 1, null);
        this._onLoadFinished = b10;
        this.onLoadFinished = b10;
        e<Boolean> a10 = o.a(Boolean.FALSE);
        this._isRenderProcessGone = a10;
        this.isRenderProcessGone = c.d(a10);
        this.webviewType = o.a("");
    }

    @NotNull
    public final k0<List<WebViewClientError>> getOnLoadFinished() {
        return this.onLoadFinished;
    }

    @NotNull
    public final i<Boolean> isRenderProcessGone() {
        return this.isRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@NotNull WebView view, @NotNull String url) {
        List<WebViewClientError> value;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        if (Intrinsics.areEqual(url, "about:blank")) {
            e<List<WebViewClientError>> eVar = this.loadErrors;
            do {
                value = eVar.getValue();
            } while (!eVar.b(value, CollectionsKt.L0(value, new WebViewClientError(url, ErrorReason.REASON_WEB_BLANK, null, 4, null))));
            super.onPageFinished(view, url);
            this._onLoadFinished.i(this.loadErrors.getValue());
        }
        super.onPageFinished(view, url);
        this._onLoadFinished.i(this.loadErrors.getValue());
    }

    @Override // androidx.webkit.WebViewClientCompat
    @RequiresApi(21)
    public void onReceivedError(@NotNull WebView view, @NotNull WebResourceRequest request, @NotNull WebResourceErrorCompat error) {
        ErrorReason errorReason;
        List<WebViewClientError> value;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        super.onReceivedError(view, request, error);
        if (WebViewFeature.isFeatureSupported(WebViewFeature.WEB_RESOURCE_ERROR_GET_CODE)) {
            errorReason = IntExtensionKt.webResourceToErrorReason(error.getErrorCode());
        } else {
            errorReason = ErrorReason.REASON_UNKNOWN;
        }
        e<List<WebViewClientError>> eVar = this.loadErrors;
        do {
            value = eVar.getValue();
        } while (!eVar.b(value, CollectionsKt.L0(value, new WebViewClientError(request.getUrl().toString(), errorReason, null, 4, null))));
    }

    @Override // androidx.webkit.WebViewClientCompat, android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public void onReceivedHttpError(@NotNull WebView view, @NotNull WebResourceRequest request, @NotNull WebResourceResponse errorResponse) {
        List<WebViewClientError> value;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        super.onReceivedHttpError(view, request, errorResponse);
        WebViewClientError webViewClientError = new WebViewClientError(request.getUrl().toString(), ErrorReason.REASON_WEB_ERROR_RECEIVED_HTTP, Integer.valueOf(errorResponse.getStatusCode()));
        e<List<WebViewClientError>> eVar = this.loadErrors;
        do {
            value = eVar.getValue();
        } while (!eVar.b(value, CollectionsKt.L0(value, webViewClientError)));
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@NotNull WebView view, @NotNull RenderProcessGoneDetail detail) {
        List<WebViewClientError> value;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        ViewExtensionsKt.removeViewFromParent(view);
        view.destroy();
        if (!this._onLoadFinished.isCompleted()) {
            e<List<WebViewClientError>> eVar = this.loadErrors;
            do {
                value = eVar.getValue();
            } while (!eVar.b(value, CollectionsKt.L0(value, new WebViewClientError(String.valueOf(view.getUrl()), ErrorReason.REASON_WEBVIEW_RENDER_PROCESS_GONE, null, 4, null))));
            this._onLoadFinished.i(this.loadErrors.getValue());
            return true;
        }
        this._isRenderProcessGone.setValue(Boolean.TRUE);
        return true;
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(@NotNull WebView view, @NotNull WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Uri url = request.getUrl();
        if (url == null) {
            return super.shouldInterceptRequest(view, request);
        }
        try {
            Result.a aVar = Result.f60901b;
            Object d10 = Result.d(url.getQueryParameter("webviewType"));
            if (Result.i(d10)) {
                d10 = null;
            }
            String str = (String) d10;
            if (str != null && !StringsKt.t0(str)) {
                this.webviewType.setValue(str);
            }
            if (Intrinsics.areEqual(url.getLastPathSegment(), "favicon.ico")) {
                return new WebResourceResponse("image/png", null, null);
            }
            GetCachedAsset getCachedAsset = this.getCachedAsset;
            Uri url2 = request.getUrl();
            Intrinsics.checkNotNullExpressionValue(url2, "request.url");
            return getCachedAsset.invoke(url2, this.webviewType.getValue());
        }
    }
}

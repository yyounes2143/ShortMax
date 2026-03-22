package ai.turbolink.sdk.campaign.webview;

import ai.turbolink.sdk.campaign.CampaignWebviewActivity;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignWebViewClient.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignWebViewClient extends WebViewClient {
    @NotNull
    private final CampaignWebviewActivity activity;
    @NotNull
    private final View errorView;
    @NotNull
    private final View loadingOverlay;
    @NotNull
    private final WebView webview;

    public CampaignWebViewClient(@NotNull CampaignWebviewActivity activity, @NotNull View loadingOverlay, @NotNull WebView webview, @NotNull View errorView) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(loadingOverlay, "loadingOverlay");
        Intrinsics.checkNotNullParameter(webview, "webview");
        Intrinsics.checkNotNullParameter(errorView, "errorView");
        this.loadingOverlay = loadingOverlay;
        this.webview = webview;
        this.errorView = errorView;
        this.activity = activity;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(@Nullable WebView webView, @Nullable String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
        super.onPageFinished(webView, str);
        this.loadingOverlay.setVisibility(8);
        this.activity.setPageViewEndTime(System.currentTimeMillis());
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(@Nullable WebView webView, @Nullable String str, @Nullable Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.loadingOverlay.setVisibility(0);
        this.activity.setPageViewBeginTime(System.currentTimeMillis());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest, @Nullable WebResourceError webResourceError) {
        String str;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (webResourceError != null && webResourceRequest != null && webResourceError.getErrorCode() == -2) {
            String uri = webResourceRequest.getUrl().toString();
            if (webView != null) {
                str = webView.getUrl();
            } else {
                str = null;
            }
            if (Intrinsics.areEqual(uri, str)) {
                this.webview.setVisibility(8);
                this.errorView.setVisibility(0);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest, @Nullable WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceResponse != null) {
            TurboLinkLogger.e("WebResourceResponse:" + webResourceResponse.getStatusCode());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(@Nullable WebView webView, @Nullable SslErrorHandler sslErrorHandler, @Nullable SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        return true;
    }
}

package com.bytedance.sdk.component.jFA;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebBackForwardList;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.component.jFA.oJ;
import java.util.List;
/* loaded from: classes3.dex */
public class cFZ extends WebViewClient {
    private final oJ.InterfaceC0176oJ ZYk;
    private final WebViewClient oJ;
    private final List<String> tB;

    public cFZ(oJ.InterfaceC0176oJ interfaceC0176oJ, WebViewClient webViewClient, List<String> list) {
        this.ZYk = interfaceC0176oJ;
        this.oJ = webViewClient;
        this.tB = list;
    }

    private int oJ(WebView webView) {
        try {
            WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
            if (copyBackForwardList == null) {
                return -1;
            }
            return copyBackForwardList.getCurrentIndex() + 1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.oJ.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        oJ.InterfaceC0176oJ interfaceC0176oJ = this.ZYk;
        if (interfaceC0176oJ != null) {
            interfaceC0176oJ.oJ(oJ(webView));
        }
        this.oJ.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.oJ.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        this.oJ.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.oJ.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean onRenderProcessGone;
        if (Build.VERSION.SDK_INT >= 26) {
            onRenderProcessGone = this.oJ.onRenderProcessGone(webView, renderProcessGoneDetail);
            return onRenderProcessGone;
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return this.oJ.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        oJ.InterfaceC0176oJ interfaceC0176oJ = this.ZYk;
        if (interfaceC0176oJ != null) {
            interfaceC0176oJ.oJ();
        }
        return this.oJ.shouldOverrideUrlLoading(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        this.oJ.onReceivedError(webView, i10, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        oJ.InterfaceC0176oJ interfaceC0176oJ;
        if (ZYk.oJ(this.tB, webResourceRequest.getUrl().toString()) && (interfaceC0176oJ = this.ZYk) != null) {
            interfaceC0176oJ.oJ();
        }
        return this.oJ.shouldInterceptRequest(webView, webResourceRequest);
    }
}

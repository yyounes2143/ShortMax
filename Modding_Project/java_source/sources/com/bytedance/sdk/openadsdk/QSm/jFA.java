package com.bytedance.sdk.openadsdk.QSm;

import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
/* loaded from: classes3.dex */
public class jFA {
    private static void ZYk(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th2) {
            cFZ.oJ("WebViewSettings", "removeJavascriptInterfacesSafe error", th2);
        }
    }

    private static void oJ(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th2) {
            cFZ.oJ("WebViewSettings", "allowMediaPlayWithoutUserGesture error", th2);
        }
    }

    public static void oJ(WebView webView) {
        if (webView == null) {
            return;
        }
        ZYk(webView);
        WebSettings settings = webView.getSettings();
        oJ(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Throwable th2) {
            cFZ.oJ("WebViewSettings", "setJavaScriptEnabled error", th2);
        }
        try {
            settings.setSupportZoom(false);
        } catch (Throwable th3) {
            cFZ.oJ("WebViewSettings", "setSupportZoom error", th3);
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(false);
        settings.setDisplayZoomControls(false);
        int i10 = Build.VERSION.SDK_INT;
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setSavePassword(false);
        boolean z10 = i10 >= 28;
        try {
        } catch (Throwable th4) {
            cFZ.oJ("WebViewSettings", "setLayerType error", th4);
        }
        if (!z10) {
            webView.setLayerType(0, null);
        } else {
            if (z10) {
                webView.setLayerType(2, null);
            }
            webView.getSettings().setMixedContentMode(0);
        }
        webView.getSettings().setMixedContentMode(0);
    }
}

package com.mbridge.msdk.splash.view;

import android.graphics.Bitmap;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
/* compiled from: SplashWebViewClient.java */
/* loaded from: classes6.dex */
public class a extends b {

    /* renamed from: c  reason: collision with root package name */
    private final String f29417c = "SplashWebViewClient";

    /* renamed from: d  reason: collision with root package name */
    com.mbridge.msdk.splash.middle.a f29418d;

    public void a(com.mbridge.msdk.splash.middle.a aVar) {
        if (aVar != null) {
            this.f29418d = aVar;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            webView.evaluateJavascript(WebViewJsUtil.JS_URL_PREFIX + com.mbridge.msdk.setting.util.a.a().b(), new C0429a());
        } catch (Throwable th2) {
            p0.b("SplashWebViewClient", "onPageStarted", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.b, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            WindVaneWebView windVaneWebView = (WindVaneWebView) webView;
            if (System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f26135d && com.mbridge.msdk.click.utils.a.a(((com.mbridge.msdk.splash.signal.b) windVaneWebView.getObject()).b().get(0), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f26133b)) {
                return false;
            }
            com.mbridge.msdk.splash.middle.a aVar = this.f29418d;
            if (aVar != null) {
                aVar.a(false, str);
                return true;
            }
            return true;
        } catch (Throwable th2) {
            p0.b("SplashWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }

    /* compiled from: SplashWebViewClient.java */
    /* renamed from: com.mbridge.msdk.splash.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0429a implements ValueCallback<String> {
        C0429a() {
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a */
        public void onReceiveValue(String str) {
        }
    }
}

package com.applovin.impl.adview;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7426a;

    /* renamed from: b  reason: collision with root package name */
    private final WebViewRenderProcessClient f7427b = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(com.applovin.impl.sdk.k kVar) {
        this.f7426a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewRenderProcessClient a() {
        return this.f7427b;
    }

    /* loaded from: classes2.dex */
    class a extends WebViewRenderProcessClient {
        a() {
        }

        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof b) {
                com.applovin.impl.sdk.ad.b currentAd = ((b) webView).getCurrentAd();
                d.this.f7426a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = d.this.f7426a.O();
                    O.b("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
                }
            }
        }

        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }
    }
}

package com.applovin.impl.adview;

import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.c2;
import com.applovin.impl.e2;
import com.applovin.impl.h7;
import com.applovin.impl.k7;
import com.applovin.impl.l7;
import com.applovin.impl.o7;
import com.applovin.impl.r4;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.impl.x7;
import com.applovin.sdk.AppLovinAdSize;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class c extends r4 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7423a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7424b;

    /* renamed from: c  reason: collision with root package name */
    private final a f7425c;

    public c(a aVar, com.applovin.impl.sdk.k kVar) {
        this.f7423a = kVar;
        this.f7424b = kVar.O();
        this.f7425c = aVar;
    }

    private void b() {
        this.f7425c.z();
    }

    private void c() {
        this.f7425c.a();
    }

    @Override // com.applovin.impl.r4
    protected Map a() {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("name", "AdWebViewClient");
        hashMap.putAll(e2.a((AppLovinAdImpl) this.f7425c.g()));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a d() {
        return this.f7425c;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7424b;
            oVar.d("AdWebView", "Loaded resource: " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7424b;
            oVar.d("AdWebView", "Loaded URL: " + str);
        }
        this.f7425c.a(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        com.applovin.impl.sdk.ad.b g10 = this.f7425c.g();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7424b;
            oVar.b("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + g10);
        }
        if (k7.a(webResourceRequest.getUrl().toString(), this.f7423a)) {
            this.f7423a.E().a("adWebViewReceivedHttpError", webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), webResourceResponse.getReasonPhrase());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        com.applovin.impl.sdk.ad.b g10 = this.f7425c.g();
        String str = "Received SSL error: " + sslError;
        if (com.applovin.impl.sdk.o.a()) {
            this.f7424b.b("AdWebView", str + " for ad: " + g10);
        }
    }

    @Override // com.applovin.impl.r4, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.render_process_gone"), null);
        com.applovin.impl.sdk.ad.b g10 = this.f7425c.g();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Render process gone for ad: ");
        sb2.append(g10);
        sb2.append(". Process did crash: ");
        didCrash = renderProcessGoneDetail.didCrash();
        sb2.append(didCrash);
        com.applovin.impl.sdk.o.h("AdWebView", sb2.toString());
        boolean onRenderProcessGone = super.onRenderProcessGone(webView, renderProcessGoneDetail);
        if (((Boolean) this.f7423a.a(v4.F5)).booleanValue()) {
            a(webView, renderProcessGoneDetail, g10);
        }
        return onRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return a(webView, url.toString());
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7424b.b("AdWebView", "No url found for request");
            return false;
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
        com.applovin.impl.sdk.ad.b g10 = this.f7425c.g();
        String str3 = "Received error with error code: " + i10 + " with description \\'" + str + "\\' for URL: " + str2;
        if (com.applovin.impl.sdk.o.a()) {
            this.f7424b.b("AdWebView", str3 + " for ad: " + g10);
        }
        if (k7.a(str2, this.f7423a)) {
            this.f7423a.E().a("adWebViewReceivedError", str2, i10, str);
        }
    }

    protected boolean a(WebView webView, String str) {
        boolean z10;
        if (this.f7425c == null) {
            return true;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.f7424b.d("AdWebView", "Processing click on ad URL \"" + str + "\"");
        }
        if (str != null && (webView instanceof b)) {
            Uri parse = Uri.parse(str);
            b bVar = (b) webView;
            String scheme = parse.getScheme();
            String host = parse.getHost();
            String path = parse.getPath();
            com.applovin.impl.sdk.ad.b g10 = this.f7425c.g();
            if (g10 == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7424b.b("AdWebView", "Unable to process click, ad not found!");
                }
                return true;
            }
            boolean a10 = bVar.a();
            if ("applovin".equals(scheme) && AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equals(host)) {
                if ("/vibrate".equals(path)) {
                    long parseLong = StringUtils.parseLong(parse.getQueryParameter("duration_ms"), 0L);
                    if (parseLong > 0) {
                        k7.a(StringUtils.parseFloat(parse.getQueryParameter("intensity"), 0.5f), parseLong, this.f7423a.O());
                    }
                } else if ("/adservice/close_ad".equals(path)) {
                    b();
                } else if ("/adservice/expand_ad".equals(path)) {
                    if (a(a10, g10, parse)) {
                        if (com.applovin.impl.sdk.o.a()) {
                            this.f7424b.b("AdWebView", "Skipping expand command without user interaction");
                        }
                        return true;
                    }
                    a(bVar.getLastClickEvent());
                } else if ("/adservice/contract_ad".equals(path)) {
                    c();
                } else if ("/adservice/no_op".equals(path)) {
                    return true;
                } else {
                    if ("/adservice/load_url".equals(path)) {
                        if (a(a10, g10, parse)) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.f7424b.b("AdWebView", "Skipping URL load command without user interaction");
                            }
                            return true;
                        }
                        h7.a(parse, this.f7425c, this.f7423a);
                    } else if ("/adservice/track_click_now".equals(path)) {
                        if (a(a10, g10, parse)) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.f7424b.b("AdWebView", "Skipping click tracking command without user interaction");
                            }
                            return true;
                        } else if (g10 instanceof l7) {
                            a((l7) g10, bVar);
                        } else {
                            a(bVar, Uri.parse("/adservice/track_click_now"));
                        }
                    } else if ("/adservice/deeplink".equals(path)) {
                        if (a(a10, g10, parse)) {
                            if (com.applovin.impl.sdk.o.a()) {
                                this.f7424b.b("AdWebView", "Skipping deep link plus command without user interaction");
                            }
                            return true;
                        }
                        if (g10 instanceof l7) {
                            l7 l7Var = (l7) g10;
                            if (l7Var.I1()) {
                                a(l7Var, bVar);
                            }
                        }
                        a(bVar, parse);
                    } else if ("/adservice/postback".equals(path)) {
                        h7.a(parse, g10, this.f7423a);
                    } else if ("/ga_init".equals(path)) {
                        this.f7425c.b(parse);
                    } else if ("/ga_event".equals(path)) {
                        this.f7425c.a(parse);
                    } else if ("/playable_event".equals(path)) {
                        a(parse);
                    } else if ("/adservice/direct_download".equals(path)) {
                        Bundle a11 = h7.a(parse);
                        if (g10 instanceof l7) {
                            l7 l7Var2 = (l7) g10;
                            if (l7Var2.I1()) {
                                a(l7Var2, bVar, a11);
                            }
                        }
                        a(bVar, g10.m(), a11);
                    } else if ("/save_template_state".equals(path)) {
                        g10.b(parse.getQueryParameter("state"));
                    } else if ("/template_error".equals(path)) {
                        h7.c(parse, g10, this.f7423a);
                    } else if ("/adservice/fully_watched".equals(path)) {
                        this.f7425c.A();
                    } else if ("/adservice/preload".equals(path)) {
                        h7.b(parse, g10, this.f7423a);
                    } else if ("/adservice/custom_intent".equals(path)) {
                        h7.a(parse, g10, this.f7425c.i(), this.f7423a);
                    } else {
                        if (com.applovin.impl.sdk.o.a()) {
                            this.f7424b.k("AdWebView", "Unknown URL: " + str);
                        }
                        if (com.applovin.impl.sdk.o.a()) {
                            this.f7424b.k("AdWebView", "Path: " + path);
                        }
                    }
                }
            } else {
                Iterator it = g10.f0().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = true;
                        break;
                    }
                    String str2 = (String) it.next();
                    if (StringUtils.isValidString(path) && path.contains(str2)) {
                        z10 = false;
                        break;
                    }
                }
                if (!a10) {
                    boolean k12 = g10.k1();
                    boolean z11 = k12 ? false : z10;
                    a(parse, k12, g10, this.f7423a);
                    z10 = z11;
                }
                if (z10) {
                    List z02 = g10.z0();
                    List y02 = g10.y0();
                    if ((!z02.isEmpty() && !z02.contains(scheme)) || (!y02.isEmpty() && !y02.contains(host))) {
                        if (com.applovin.impl.sdk.o.a()) {
                            this.f7424b.b("AdWebView", "URL is not whitelisted - bypassing click");
                        }
                    } else {
                        if (g10 instanceof l7) {
                            l7 l7Var3 = (l7) g10;
                            if (l7Var3.I1()) {
                                a(l7Var3, bVar);
                            }
                        }
                        a(bVar, parse);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(webView, str);
    }

    private void a(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail, com.applovin.impl.sdk.ad.b bVar) {
        boolean didCrash;
        didCrash = renderProcessGoneDetail.didCrash();
        if (didCrash && ((Boolean) this.f7423a.a(v4.M5)).booleanValue()) {
            String valueOf = bVar != null ? String.valueOf(bVar.getAdIdNumber()) : "null";
            throw new RuntimeException("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: " + valueOf);
        } else if (webView == null || !webView.equals(this.f7425c.f())) {
        } else {
            this.f7425c.b();
            AppLovinAdSize k10 = this.f7425c.k();
            if (k7.a(k10)) {
                this.f7425c.a(k10);
                this.f7425c.F();
            }
        }
    }

    private boolean a(boolean z10, com.applovin.impl.sdk.ad.b bVar, Uri uri) {
        if (z10) {
            return false;
        }
        boolean l12 = bVar.l1();
        a(uri, l12, bVar, this.f7423a);
        return l12;
    }

    private static void a(Uri uri, boolean z10, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        if (kVar.c(v4.F6).contains(uri.getScheme())) {
            return;
        }
        kVar.E().d(c2.f7675w0, a(bVar, uri, z10));
    }

    private static Map a(com.applovin.impl.sdk.ad.b bVar, Uri uri, boolean z10) {
        Map a10 = e2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("url", uri.toString(), a10);
        CollectionUtils.putStringIfValid("is_blocked_auto_redirect", String.valueOf(z10), a10);
        return a10;
    }

    private void a(MotionEvent motionEvent) {
        this.f7425c.a(motionEvent);
    }

    private void a(l7 l7Var, b bVar) {
        a(l7Var, bVar, (Bundle) null);
    }

    private void a(l7 l7Var, b bVar, Bundle bundle) {
        o7 s12 = l7Var.s1();
        if (s12 != null) {
            x7.a(s12.b(), this.f7425c.j());
            a(bVar, s12.c(), bundle);
        }
    }

    private void a(b bVar, Uri uri) {
        a(bVar, uri, (Bundle) null);
    }

    private void a(b bVar, Uri uri, Bundle bundle) {
        com.applovin.impl.sdk.ad.b currentAd = bVar.getCurrentAd();
        AppLovinAdView i10 = this.f7425c.i();
        if (i10 != null && currentAd != null) {
            if (currentAd instanceof l7) {
                ((l7) currentAd).getAdEventTracker().v();
            }
            this.f7425c.a(currentAd, i10, uri, bVar.getAndClearLastClickEvent(), bundle);
        } else if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7424b;
            oVar.b("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
        }
    }

    private void a(Uri uri) {
        String str;
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("success", false);
        String queryParameter = uri.getQueryParameter("type");
        if (booleanQueryParameter) {
            str = "Tracked event: " + queryParameter;
        } else {
            str = "Failed to track event: " + queryParameter;
        }
        k7.a(str, com.applovin.impl.sdk.k.o());
    }
}

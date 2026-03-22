package com.applovin.impl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.applovin.impl.i8;
import com.applovin.impl.q4;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class i8 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f8125a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f8126b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f8127c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8128d;

    /* renamed from: e  reason: collision with root package name */
    private final Set f8129e = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends r4 {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f8130a;

        public a(boolean z10) {
            this.f8130a = z10;
        }

        @Override // com.applovin.impl.r4
        protected Map a() {
            return CollectionUtils.hashMap("name", "WebTrackerManagerWebViewClient");
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (this.f8130a) {
                com.applovin.impl.sdk.o unused = i8.this.f8126b;
                if (com.applovin.impl.sdk.o.a()) {
                    i8.this.f8126b.a("WebTrackerManager", "Successfully initialized web view for postbacks");
                }
                i8.this.f8128d = true;
            }
        }

        @Override // com.applovin.impl.r4, android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != i8.this.f8127c) {
                i8.this.b(webView);
            } else {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.lb
                    @Override // java.lang.Runnable
                    public final void run() {
                        i8.a.this.b();
                    }
                });
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            i8.this.f8127c.destroy();
            i8.this.f8127c = null;
        }
    }

    public i8(com.applovin.impl.sdk.k kVar) {
        this.f8125a = kVar;
        this.f8126b = kVar.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        final WebView a10 = a(str);
        if (a10 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8126b.b("WebTrackerManager", "Failed to fire tracker since web view could not be created");
                return;
            }
            return;
        }
        this.f8129e.add(a10);
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.ib
            @Override // java.lang.Runnable
            public final void run() {
                i8.this.b(a10);
            }
        }, ((Integer) this.f8125a.a(v4.I2)).intValue());
    }

    public void b() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.jb
            @Override // java.lang.Runnable
            public final void run() {
                i8.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.network.e eVar, final AppLovinPostbackListener appLovinPostbackListener) {
        final String appendQueryParameters = StringUtils.appendQueryParameters(eVar.f(), eVar.i(), ((Boolean) this.f8125a.a(v4.f10253g3)).booleanValue());
        if (this.f8127c == null) {
            WebView a10 = a("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>", true);
            this.f8127c = a10;
            if (a10 == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f8126b.b("WebTrackerManager", "Failed to fire postback since web view could not be created");
                }
                appLovinPostbackListener.onPostbackFailure(appendQueryParameters, -1);
                return;
            }
        }
        if (c() && !this.f8128d) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8126b.b("WebTrackerManager", "Failed to fire postback since web view was not initialized in time");
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("top_main_method", "firePostback");
            hashMap.put("source", "webViewNotInitialized");
            hashMap.put("url", appendQueryParameters);
            this.f8125a.E().d(c2.N0, hashMap);
            appLovinPostbackListener.onPostbackFailure(appendQueryParameters, -1);
            return;
        }
        String str = "al_firePostback('" + appendQueryParameters + "')";
        if (((Boolean) this.f8125a.a(v4.O2)).booleanValue()) {
            l8.a(this.f8127c, str, this.f8125a).a(this.f8125a.r0().a("evaluateJavascriptPromise"), new q4.b() { // from class: com.applovin.impl.fb
                @Override // com.applovin.impl.q4.b
                public final void a(boolean z10, Object obj, Object obj2) {
                    i8.this.a(appLovinPostbackListener, appendQueryParameters, z10, (String) obj, (String) obj2);
                }
            });
            return;
        }
        l8.a(this.f8127c, str);
        appLovinPostbackListener.onPostbackSuccess(appendQueryParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        WebView a10 = a("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>", true);
        this.f8127c = a10;
        if (a10 == null && com.applovin.impl.sdk.o.a()) {
            this.f8126b.b("WebTrackerManager", "Failed to preload postback web view");
        }
    }

    public void a(final com.applovin.impl.sdk.network.e eVar, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.gb
            @Override // java.lang.Runnable
            public final void run() {
                i8.this.b(eVar, appLovinPostbackListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinPostbackListener appLovinPostbackListener, String str, boolean z10, String str2, String str3) {
        if (z10) {
            appLovinPostbackListener.onPostbackSuccess(str);
            return;
        }
        appLovinPostbackListener.onPostbackFailure(str, -1);
        Map map = CollectionUtils.map("top_main_method", "firePostback");
        map.put("source", "evaluateJavascriptFailed");
        map.put("url", str);
        CollectionUtils.putStringIfValid("error_message", str3, map);
        this.f8125a.E().d(c2.N0, map);
    }

    private boolean c() {
        return ((Boolean) this.f8125a.a(v4.N2)).booleanValue();
    }

    private WebView a(String str) {
        return a(str, false);
    }

    private WebView a(String str, boolean z10) {
        k7.b();
        WebView b10 = k7.b(com.applovin.impl.sdk.k.o(), "web tracker");
        if (b10 == null) {
            return null;
        }
        boolean z11 = true;
        b10.getSettings().setJavaScriptEnabled(true);
        b10.setWebViewClient(new a((z10 && c()) ? false : false));
        b10.loadData("<html><head><link rel=\"icon\" href=\"data:,\">" + str + "</head><body></body></html>", "text/html", "UTF-8");
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(final WebView webView) {
        if (webView == null || !this.f8129e.remove(webView)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.kb
            @Override // java.lang.Runnable
            public final void run() {
                webView.destroy();
            }
        });
    }

    public void b(final String str) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8126b.b("WebTrackerManager", "Failed to fire tracker due to empty script string");
            }
        } else if (!str.startsWith("<script")) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f8126b.b("WebTrackerManager", "Failed to fire tracker due to improperly formatted script tag");
            }
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.hb
                @Override // java.lang.Runnable
                public final void run() {
                    i8.this.c(str);
                }
            });
        }
    }
}

package com.iab.omid.library.appodeal.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.appodeal.adsession.AdSessionContext;
import com.iab.omid.library.appodeal.adsession.VerificationScriptResource;
import com.iab.omid.library.appodeal.internal.g;
import com.iab.omid.library.appodeal.internal.h;
import com.iab.omid.library.appodeal.utils.c;
import com.iab.omid.library.appodeal.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: g  reason: collision with root package name */
    private WebView f22651g;

    /* renamed from: h  reason: collision with root package name */
    private Long f22652h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f22653i;

    /* renamed from: j  reason: collision with root package name */
    private final String f22654j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + webView);
            if (b.this.getWebView() == webView) {
                Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                b.this.a((WebView) null);
            }
            webView.destroy();
            return true;
        }
    }

    /* renamed from: com.iab.omid.library.appodeal.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0325b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f22656a;

        RunnableC0325b() {
            this.f22656a = b.this.f22651g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22656a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f22652h = null;
        this.f22653i = map;
        this.f22654j = str2;
    }

    @Override // com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher
    public void b() {
        long convert;
        super.b();
        if (this.f22652h == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.b() - this.f22652h.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0325b(), Math.max(4000 - convert, 2000L));
        this.f22651g = null;
    }

    @Override // com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(g.b().a());
        this.f22651g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f22651g.getSettings().setAllowContentAccess(false);
        this.f22651g.getSettings().setAllowFileAccess(false);
        this.f22651g.setWebViewClient(new a());
        a(this.f22651g);
        h.a().c(this.f22651g, this.f22654j);
        for (String str : this.f22653i.keySet()) {
            h.a().d(this.f22651g, this.f22653i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f22652h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.appodeal.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}

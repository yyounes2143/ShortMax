package com.iab.omid.library.inmobi.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.VerificationScriptResource;
import com.iab.omid.library.inmobi.internal.g;
import com.iab.omid.library.inmobi.internal.h;
import com.iab.omid.library.inmobi.utils.c;
import com.iab.omid.library.inmobi.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: g  reason: collision with root package name */
    private WebView f22916g;

    /* renamed from: h  reason: collision with root package name */
    private Long f22917h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f22918i;

    /* renamed from: j  reason: collision with root package name */
    private final String f22919j;

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

    /* renamed from: com.iab.omid.library.inmobi.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0333b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f22921a;

        RunnableC0333b() {
            this.f22921a = b.this.f22916g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22921a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f22917h = null;
        this.f22918i = map;
        this.f22919j = str2;
    }

    @Override // com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher
    public void b() {
        long convert;
        super.b();
        if (this.f22917h == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.b() - this.f22917h.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0333b(), Math.max(4000 - convert, 2000L));
        this.f22916g = null;
    }

    @Override // com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(g.b().a());
        this.f22916g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f22916g.getSettings().setAllowContentAccess(false);
        this.f22916g.getSettings().setAllowFileAccess(false);
        this.f22916g.setWebViewClient(new a());
        a(this.f22916g);
        h.a().c(this.f22916g, this.f22919j);
        for (String str : this.f22918i.keySet()) {
            h.a().d(this.f22916g, this.f22918i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f22917h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.inmobi.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}

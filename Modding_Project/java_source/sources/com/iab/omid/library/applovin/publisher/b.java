package com.iab.omid.library.applovin.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.internal.g;
import com.iab.omid.library.applovin.internal.h;
import com.iab.omid.library.applovin.utils.c;
import com.iab.omid.library.applovin.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: g  reason: collision with root package name */
    private WebView f22515g;

    /* renamed from: h  reason: collision with root package name */
    private Long f22516h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f22517i;

    /* renamed from: j  reason: collision with root package name */
    private final String f22518j;

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

    /* renamed from: com.iab.omid.library.applovin.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0321b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f22520a;

        RunnableC0321b() {
            this.f22520a = b.this.f22515g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22520a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f22516h = null;
        this.f22517i = map;
        this.f22518j = str2;
    }

    @Override // com.iab.omid.library.applovin.publisher.AdSessionStatePublisher
    public void b() {
        long convert;
        super.b();
        if (this.f22516h == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.b() - this.f22516h.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0321b(), Math.max(4000 - convert, 2000L));
        this.f22515g = null;
    }

    @Override // com.iab.omid.library.applovin.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(g.b().a());
        this.f22515g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f22515g.getSettings().setAllowContentAccess(false);
        this.f22515g.getSettings().setAllowFileAccess(false);
        this.f22515g.setWebViewClient(new a());
        a(this.f22515g);
        h.a().c(this.f22515g, this.f22518j);
        for (String str : this.f22517i.keySet()) {
            h.a().d(this.f22515g, this.f22517i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f22516h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.applovin.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.applovin.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}

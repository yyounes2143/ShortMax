package com.iab.omid.library.bytedance2.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.internal.g;
import com.iab.omid.library.bytedance2.internal.h;
import com.iab.omid.library.bytedance2.utils.c;
import com.iab.omid.library.bytedance2.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: g  reason: collision with root package name */
    private WebView f22781g;

    /* renamed from: h  reason: collision with root package name */
    private Long f22782h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f22783i;

    /* renamed from: j  reason: collision with root package name */
    private final String f22784j;

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

    /* renamed from: com.iab.omid.library.bytedance2.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0329b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f22786a;

        RunnableC0329b() {
            this.f22786a = b.this.f22781g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22786a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f22782h = null;
        this.f22783i = map;
        this.f22784j = str2;
    }

    @Override // com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher
    public void b() {
        long convert;
        super.b();
        if (this.f22782h == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.b() - this.f22782h.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0329b(), Math.max(4000 - convert, 2000L));
        this.f22781g = null;
    }

    @Override // com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(g.b().a());
        this.f22781g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f22781g.getSettings().setAllowContentAccess(false);
        this.f22781g.getSettings().setAllowFileAccess(false);
        this.f22781g.setWebViewClient(new a());
        a(this.f22781g);
        h.a().c(this.f22781g, this.f22784j);
        for (String str : this.f22783i.keySet()) {
            h.a().c(this.f22781g, this.f22783i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f22782h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.bytedance2.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}

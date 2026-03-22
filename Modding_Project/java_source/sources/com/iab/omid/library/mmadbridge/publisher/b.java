package com.iab.omid.library.mmadbridge.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.mmadbridge.adsession.AdSessionContext;
import com.iab.omid.library.mmadbridge.adsession.VerificationScriptResource;
import com.iab.omid.library.mmadbridge.internal.g;
import com.iab.omid.library.mmadbridge.internal.h;
import com.iab.omid.library.mmadbridge.utils.c;
import com.iab.omid.library.mmadbridge.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: g  reason: collision with root package name */
    private WebView f23051g;

    /* renamed from: h  reason: collision with root package name */
    private Long f23052h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f23053i;

    /* renamed from: j  reason: collision with root package name */
    private final String f23054j;

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

    /* renamed from: com.iab.omid.library.mmadbridge.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0337b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f23056a;

        RunnableC0337b() {
            this.f23056a = b.this.f23051g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f23056a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f23052h = null;
        this.f23053i = map;
        this.f23054j = str2;
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void b() {
        long convert;
        super.b();
        if (this.f23052h == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.b() - this.f23052h.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0337b(), Math.max(4000 - convert, 2000L));
        this.f23051g = null;
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(g.b().a());
        this.f23051g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f23051g.getSettings().setAllowContentAccess(false);
        this.f23051g.getSettings().setAllowFileAccess(false);
        this.f23051g.setWebViewClient(new a());
        a(this.f23051g);
        h.a().c(this.f23051g, this.f23054j);
        for (String str : this.f23053i.keySet()) {
            h.a().d(this.f23051g, this.f23053i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f23052h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.mmadbridge.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}

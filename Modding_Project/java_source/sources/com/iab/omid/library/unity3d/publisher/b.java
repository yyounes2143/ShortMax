package com.iab.omid.library.unity3d.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.unity3d.adsession.AdSessionContext;
import com.iab.omid.library.unity3d.adsession.VerificationScriptResource;
import com.iab.omid.library.unity3d.internal.g;
import com.iab.omid.library.unity3d.utils.c;
import com.iab.omid.library.unity3d.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: g  reason: collision with root package name */
    private WebView f23180g;

    /* renamed from: h  reason: collision with root package name */
    private Long f23181h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f23182i;

    /* renamed from: j  reason: collision with root package name */
    private final String f23183j;

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

    /* renamed from: com.iab.omid.library.unity3d.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0341b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f23185a;

        RunnableC0341b() {
            this.f23185a = b.this.f23180g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f23185a.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f23181h = null;
        this.f23182i = map;
        this.f23183j = str2;
    }

    @Override // com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher
    public void b() {
        long convert;
        super.b();
        if (this.f23181h == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.b() - this.f23181h.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0341b(), Math.max(4000 - convert, 2000L));
        this.f23180g = null;
    }

    @Override // com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void j() {
        WebView webView = new WebView(com.iab.omid.library.unity3d.internal.f.b().a());
        this.f23180g = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f23180g.getSettings().setAllowContentAccess(false);
        this.f23180g.getSettings().setAllowFileAccess(false);
        this.f23180g.setWebViewClient(new a());
        a(this.f23180g);
        g.a().c(this.f23180g, this.f23183j);
        for (String str : this.f23182i.keySet()) {
            g.a().c(this.f23180g, this.f23182i.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f23181h = Long.valueOf(f.b());
    }

    @Override // com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.unity3d.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }
}

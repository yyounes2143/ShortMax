package com.applovin.sdk;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.b8;
import com.applovin.impl.k7;
import com.applovin.impl.r4;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class AppLovinWebViewActivity extends Activity {
    public static final String EVENT_DISMISSED_VIA_BACK_BUTTON = "dismissed_via_back_button";
    public static final String INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON = "immersive_mode_on";
    public static final String INTENT_EXTRA_KEY_LOAD_URL = "load_url";
    public static final String INTENT_EXTRA_KEY_SDK_KEY = "sdk_key";
    public static final String URI_PATH_WEBVIEW_EVENT = "webview_event";

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f10902a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private String f10903b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f10904c;

    /* renamed from: d  reason: collision with root package name */
    private EventListener f10905d;

    /* loaded from: classes2.dex */
    public interface EventListener {
        void onReceivedEvent(String str);
    }

    public void loadUrl(String str, EventListener eventListener) {
        this.f10905d = eventListener;
        this.f10903b = str;
        this.f10902a.set(false);
        WebView webView = this.f10904c;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EventListener eventListener = this.f10905d;
        if (eventListener != null) {
            eventListener.onReceivedEvent(EVENT_DISMISSED_VIA_BACK_BUTTON);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (TextUtils.isEmpty(getIntent().getStringExtra(INTENT_EXTRA_KEY_SDK_KEY))) {
            o.h("AppLovinWebViewActivity", "No SDK key specified");
            finish();
            return;
        }
        k a10 = AppLovinSdk.getInstance(getApplicationContext()).a();
        b8.a(findViewById(16908290), a10);
        a(a10);
        if (getIntent().getBooleanExtra(INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, false)) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
        String stringExtra = getIntent().getStringExtra(INTENT_EXTRA_KEY_LOAD_URL);
        if (StringUtils.isValidString(stringExtra)) {
            this.f10903b = stringExtra;
        }
        if (StringUtils.isValidString(this.f10903b)) {
            this.f10904c.loadUrl(this.f10903b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(k kVar) {
        WebView b10 = k7.b(this, "WebView Activity");
        this.f10904c = b10;
        if (b10 == null) {
            finish();
            return;
        }
        setContentView(b10);
        WebSettings settings = this.f10904c.getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        this.f10904c.setVerticalScrollBarEnabled(true);
        this.f10904c.setHorizontalScrollBarEnabled(true);
        this.f10904c.setScrollBarStyle(33554432);
        this.f10904c.setWebViewClient(new a(kVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends r4 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f10906a;

        a(k kVar) {
            this.f10906a = kVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(k kVar) {
            if (((Boolean) kVar.a(v4.G5)).booleanValue() && AppLovinWebViewActivity.this.f10902a.compareAndSet(false, true)) {
                AppLovinWebViewActivity.this.a(kVar);
                if (StringUtils.isValidString(AppLovinWebViewActivity.this.f10903b)) {
                    AppLovinWebViewActivity.this.f10904c.loadUrl(AppLovinWebViewActivity.this.f10903b);
                    return;
                }
                return;
            }
            AppLovinWebViewActivity.this.finish();
        }

        @Override // com.applovin.impl.r4, android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (AppLovinWebViewActivity.this.f10904c == webView) {
                AppLovinWebViewActivity.this.f10904c.destroy();
                AppLovinWebViewActivity.this.f10904c = null;
                AppLovinWebViewActivity appLovinWebViewActivity = AppLovinWebViewActivity.this;
                final k kVar = this.f10906a;
                appLovinWebViewActivity.runOnUiThread(new Runnable() { // from class: com.applovin.sdk.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppLovinWebViewActivity.a.this.a(kVar);
                    }
                });
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String str2;
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            String path = parse.getPath();
            this.f10906a.O();
            if (o.a()) {
                o O = this.f10906a.O();
                O.a("AppLovinWebViewActivity", "Handling url load: " + str);
            }
            if ("applovin".equalsIgnoreCase(scheme) && AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(host) && AppLovinWebViewActivity.this.f10905d != null) {
                if (path.endsWith(AppLovinWebViewActivity.URI_PATH_WEBVIEW_EVENT)) {
                    Set<String> queryParameterNames = parse.getQueryParameterNames();
                    if (queryParameterNames.isEmpty()) {
                        str2 = "";
                    } else {
                        str2 = (String) queryParameterNames.toArray()[0];
                    }
                    if (StringUtils.isValidString(str2)) {
                        String queryParameter = parse.getQueryParameter(str2);
                        this.f10906a.O();
                        if (o.a()) {
                            o O2 = this.f10906a.O();
                            O2.a("AppLovinWebViewActivity", "Parsed WebView event parameter name: " + str2 + " and value: " + queryParameter);
                        }
                        AppLovinWebViewActivity.this.f10905d.onReceivedEvent(queryParameter);
                        return true;
                    }
                    this.f10906a.O();
                    if (o.a()) {
                        this.f10906a.O().b("AppLovinWebViewActivity", "Failed to parse WebView event parameter");
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // com.applovin.impl.r4
        protected Map a() {
            return CollectionUtils.hashMap("name", "AppLovinWebViewActivity");
        }
    }
}

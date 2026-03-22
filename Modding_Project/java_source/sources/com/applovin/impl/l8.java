package com.applovin.impl;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.bytedance.applog.util.WebViewJsUtil;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class l8 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(WebView webView) {
        ViewParent parent = webView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(webView);
        }
        webView.removeAllViews();
        webView.loadUrl("about:blank");
        webView.onPause();
        webView.destroyDrawingCache();
        webView.destroy();
    }

    public static void b(final WebView webView) {
        if (webView == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.cc
            @Override // java.lang.Runnable
            public final void run() {
                l8.a(webView);
            }
        });
    }

    public static String b(String str, Map map) {
        String str2;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -859884819:
                if (str.equals("com.applovin.custom_tabs_failure")) {
                    c10 = 0;
                    break;
                }
                break;
            case -794532889:
                if (str.equals("com.applovin.custom_tabs_hidden")) {
                    c10 = 1;
                    break;
                }
                break;
            case -292584652:
                if (str.equals("com.applovin.custom_tabs_shown")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                str2 = "failure";
                break;
            case 1:
                str2 = "hidden";
                break;
            case 2:
                str2 = "shown";
                break;
            default:
                return null;
        }
        return a("al_onInAppBrowserEvent", str2, map);
    }

    public static String c(String str, Map map) {
        String str2;
        str.hashCode();
        if (str.equals("com.applovin.external_redirect_success")) {
            str2 = "success";
        } else if (!str.equals("com.applovin.external_redirect_failure")) {
            return null;
        } else {
            str2 = "failure";
        }
        return a("al_onExternalRedirectEvent", str2, map);
    }

    public static String d(String str, Map map) {
        String str2;
        str.hashCode();
        if (str.equals("com.applovin.preload_success")) {
            str2 = "success";
        } else if (!str.equals("com.applovin.preload_failure")) {
            return null;
        } else {
            str2 = "failure";
        }
        return a("al_onPreloadEvent", str2, map);
    }

    public static String a(String str, Map map) {
        String str2;
        str.hashCode();
        if (str.equals("com.applovin.custom_intent_launch_failure")) {
            str2 = "failure";
        } else if (!str.equals("com.applovin.custom_intent_launch_success")) {
            return null;
        } else {
            str2 = "success";
        }
        return a("al_onCustomIntentLaunchEvent", str2, map);
    }

    public static String a(Map map) {
        return a("al_onWindowInsetsInfoCollectedEvent", "success", map);
    }

    private static String a(String str, String str2, Map map) {
        JSONObject jSONObject;
        try {
            jSONObject = CollectionUtils.toJson(map);
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
        }
        return WebViewJsUtil.JS_URL_PREFIX + str + "('" + str2 + "'," + jSONObject + ");";
    }

    public static void a(final WebView webView, final String str, String str2, com.applovin.impl.sdk.k kVar) {
        if (webView == null) {
            return;
        }
        try {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a(str2, "Forwarding \"" + str + "\" to WebView");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.dc
                @Override // java.lang.Runnable
                public final void run() {
                    webView.loadUrl(str);
                }
            });
        } catch (Throwable th2) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a(str2, "Unable to forward to WebView", th2);
            }
            kVar.E().a(str2, th2, CollectionUtils.hashMap("operation", str));
        }
    }

    public static void a(final WebView webView, final String str) {
        if (webView == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.bc
            @Override // java.lang.Runnable
            public final void run() {
                webView.evaluateJavascript(str, null);
            }
        });
    }

    public static q4 a(final WebView webView, final String str, com.applovin.impl.sdk.k kVar) {
        final q4 q4Var = new q4("evaluateJavascript");
        if (webView == null) {
            return q4Var.a("null_webview");
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.fc
            @Override // java.lang.Runnable
            public final void run() {
                l8.a(webView, str, q4Var);
            }
        });
        Long l10 = (Long) kVar.a(v4.P2);
        if (l10.longValue() > 0) {
            g6.a(l10.longValue(), q4Var, "timed_out", "evaluateJavascriptTimeout", kVar);
        } else {
            q4Var.b(null);
        }
        return q4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(WebView webView, String str, final q4 q4Var) {
        Objects.requireNonNull(q4Var);
        webView.evaluateJavascript(str, new ValueCallback() { // from class: com.applovin.impl.ec
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                q4.this.b((String) obj);
            }
        });
    }
}

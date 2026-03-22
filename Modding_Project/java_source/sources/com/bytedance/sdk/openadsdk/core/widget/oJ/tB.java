package com.bytedance.sdk.openadsdk.core.widget.oJ;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.QSm;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class tB {
    private final WeakReference<Context> oJ;
    private boolean ZYk = true;
    private final boolean tB = true;
    private final boolean ex = true;
    private final boolean Pfn = false;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f13320ba = true;
    private boolean cFZ = true;

    private tB(Context context) {
        this.oJ = new WeakReference<>(context);
    }

    public static tB oJ(Context context) {
        return new tB(context);
    }

    public tB ZYk(boolean z10) {
        this.ZYk = z10;
        return this;
    }

    public static void ZYk(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable th2) {
            QSm.tB(th2.toString(), new Object[0]);
        }
    }

    public tB oJ(boolean z10) {
        this.cFZ = z10;
        return this;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void oJ(WebView webView) {
        if (webView == null || this.oJ.get() == null) {
            return;
        }
        ZYk(webView);
        WebSettings settings = webView.getSettings();
        oJ(settings);
        if (settings == null) {
            return;
        }
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e10) {
            QSm.tB("SSWebSettings", e10.getMessage());
        }
        try {
            if (this.ZYk) {
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
            } else {
                settings.setSupportZoom(false);
            }
        } catch (Throwable th2) {
            QSm.tB("SSWebSettings", th2.getMessage());
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setBlockNetworkImage(false);
        settings.setSavePassword(false);
        try {
            if (this.cFZ) {
                webView.setLayerType(2, null);
            } else {
                webView.setLayerType(0, null);
            }
        } catch (Throwable th3) {
            QSm.tB("SSWebSettings", th3.getMessage());
        }
    }

    private void oJ(WebSettings webSettings) {
        try {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th2) {
            QSm.tB(th2.toString(), new Object[0]);
        }
    }

    public static void oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        if (baVar == null) {
            return;
        }
        int oJ = com.bytedance.sdk.openadsdk.oq.oJ.oJ("clear_web_cache_new", 0);
        if (oJ == 0) {
            baVar.oJ(true);
        } else if (oJ == 1) {
            baVar.oJ(false);
        }
    }
}

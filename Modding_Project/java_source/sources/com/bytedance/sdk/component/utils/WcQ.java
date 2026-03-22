package com.bytedance.sdk.component.utils;

import android.annotation.TargetApi;
import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
/* loaded from: classes3.dex */
public class WcQ {
    private static final oJ oJ = new ZYk();

    @TargetApi(19)
    /* loaded from: classes3.dex */
    private static class ZYk extends oJ {
        private ZYk() {
            super();
        }

        @Override // com.bytedance.sdk.component.utils.WcQ.oJ
        public void oJ(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            if (str != null && str.startsWith(WebViewJsUtil.JS_URL_PREFIX)) {
                try {
                    webView.evaluateJavascript(str, null);
                    return;
                } catch (Throwable th2) {
                    boolean z10 = th2 instanceof IllegalStateException;
                }
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class oJ {
        private oJ() {
        }

        public void oJ(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static void oJ(WebView webView, String str) {
        oJ.oJ(webView, str);
    }
}

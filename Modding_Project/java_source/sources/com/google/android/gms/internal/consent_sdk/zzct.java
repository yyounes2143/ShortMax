package com.google.android.gms.internal.consent_sdk;

import android.webkit.WebView;
import androidx.annotation.GuardedBy;
import com.bytedance.applog.util.WebViewJsUtil;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public final class zzct {
    @GuardedBy("WebViewUtil.class")
    private static Boolean zza;

    private zzct() {
    }

    public static void zza(WebView webView, String str) {
        boolean booleanValue;
        synchronized (zzct.class) {
            if (zza == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    zza = Boolean.TRUE;
                } catch (IllegalStateException unused) {
                    zza = Boolean.FALSE;
                }
            }
            booleanValue = zza.booleanValue();
        }
        if (booleanValue) {
            webView.evaluateJavascript(str, null);
        } else {
            webView.loadUrl(WebViewJsUtil.JS_URL_PREFIX.concat(str));
        }
    }
}

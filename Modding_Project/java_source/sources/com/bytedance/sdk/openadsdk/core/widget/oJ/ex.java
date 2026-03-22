package com.bytedance.sdk.openadsdk.core.widget.oJ;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.ex.BTZ;
import com.bytedance.sdk.openadsdk.utils.RZ;
/* loaded from: classes3.dex */
public class ex extends WebChromeClient {
    private static final String oJ = WebChromeClient.class.getSimpleName();
    private final UN ZYk;
    private com.bytedance.sdk.openadsdk.common.ex ex;
    private BTZ tB;

    public ex(UN un2) {
        this.ZYk = un2;
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i10, String str2) {
        if (!TextUtils.isEmpty(str)) {
            oJ(str);
        }
        super.onConsoleMessage(str, i10, str2);
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i10) {
        super.onProgressChanged(webView, i10);
        BTZ btz = this.tB;
        if (btz != null) {
            btz.oJ(webView, i10);
        }
        com.bytedance.sdk.openadsdk.common.ex exVar = this.ex;
        if (exVar != null) {
            exVar.oJ(webView, i10);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
    }

    private boolean oJ(@NonNull final String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.regionMatches(true, 0, "bytedance:", 0, 10)) {
                WcQ.tB().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.ex.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RZ.oJ(Uri.parse(str), ex.this.ZYk);
                    }
                });
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public ex(UN un2, BTZ btz, com.bytedance.sdk.openadsdk.common.ex exVar) {
        this(un2, btz);
        this.ex = exVar;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || TextUtils.isEmpty(consoleMessage.message()) || !oJ(consoleMessage.message())) {
            return super.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    public ex(UN un2, BTZ btz) {
        this.ZYk = un2;
        this.tB = btz;
    }
}

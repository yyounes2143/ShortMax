package com.bytedance.sdk.component.oJ;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
/* loaded from: classes3.dex */
public class Xe extends oJ {
    static final /* synthetic */ boolean kkU = true;
    protected WebView jFA;

    /* renamed from: so  reason: collision with root package name */
    protected String f12794so;

    @Override // com.bytedance.sdk.component.oJ.oJ
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    protected void ZYk(kkU kku) {
        this.jFA = kku.oJ;
        this.f12794so = kku.tB;
        if (kku.WcQ) {
            return;
        }
        tB();
    }

    protected void ex() {
        this.jFA.removeJavascriptInterface(this.f12794so);
    }

    @Override // com.bytedance.sdk.component.oJ.oJ
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    @Override // com.bytedance.sdk.component.oJ.oJ
    protected Context oJ(kkU kku) {
        Context context = kku.Pfn;
        if (context != null) {
            return context;
        }
        WebView webView = kku.oJ;
        if (webView != null) {
            return webView.getContext();
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @SuppressLint({"AddJavascriptInterface"})
    protected void tB() {
        if (!kkU && this.jFA == null) {
            throw new AssertionError();
        }
        this.jFA.addJavascriptInterface(this, this.f12794so);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.oJ.oJ
    public void ZYk() {
        super.ZYk();
        ex();
    }

    @Override // com.bytedance.sdk.component.oJ.oJ
    protected String oJ() {
        return this.jFA.getUrl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.oJ.oJ
    public void oJ(String str, eZI ezi) {
        if (ezi != null && !TextUtils.isEmpty(ezi.f12798so)) {
            String str2 = ezi.f12798so;
            oJ(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
            return;
        }
        super.oJ(str, ezi);
    }

    @Override // com.bytedance.sdk.component.oJ.oJ
    protected void oJ(String str) {
        oJ(str, WebViewJsUtil.JS_URL_PREFIX + this.f12794so + "._handleMessageFromToutiao(" + str + ")");
    }

    private void oJ(String str, final String str2) {
        if (this.f12802ba || TextUtils.isEmpty(str2)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.oJ.Xe.1
            @Override // java.lang.Runnable
            public void run() {
                if (Xe.this.f12802ba) {
                    return;
                }
                try {
                    Xe.this.jFA.evaluateJavascript(str2, null);
                } catch (Throwable unused) {
                }
            }
        };
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.ex.post(runnable);
        } else {
            runnable.run();
        }
    }
}

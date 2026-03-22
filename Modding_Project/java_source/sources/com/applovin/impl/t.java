package com.applovin.impl;

import android.content.Intent;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.Map;
/* loaded from: classes2.dex */
public class t extends WebChromeClient {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10023a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f10024b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.adview.a f10025c;

    public t(com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.k kVar) {
        this.f10023a = kVar;
        this.f10024b = kVar.O();
        this.f10025c = aVar;
    }

    private void a(String str, ConsoleMessage consoleMessage) {
        String str2;
        com.applovin.impl.sdk.ad.b g10 = this.f10025c.g();
        if (g10 != null) {
            String str3 = consoleMessage.messageLevel() + ": " + consoleMessage.sourceId() + ": " + consoleMessage.lineNumber();
            if (str == null) {
                str2 = "AdWebView";
            } else {
                str2 = "AdWebView:" + str;
            }
            Map a10 = e2.a((AppLovinAdImpl) g10);
            a10.putAll(e2.a(g10));
            a10.put("source", str2);
            a10.put("top_main_method", str3);
            a10.put("error_message", consoleMessage.message());
            this.f10023a.E().d(c2.L0, a10);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = consoleMessage.messageLevel() + ": " + consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message();
        if (com.applovin.impl.sdk.o.a()) {
            this.f10024b.a("AdWebView", str);
        }
        if (consoleMessage.messageLevel() != ConsoleMessage.MessageLevel.ERROR) {
            return true;
        }
        String message = consoleMessage.message();
        if (message.contains("al_onPoststitialShow")) {
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.al_onPoststitialShow_evaluation_error"), null);
            a("onPoststitialShowEvaluationError", consoleMessage);
        } else if (message.contains("SyntaxError")) {
            a(null, consoleMessage);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10024b;
            oVar.k("AdWebView", "Alert attempted: " + str2);
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10024b;
            oVar.k("AdWebView", "JS onBeforeUnload attempted: " + str2);
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10024b;
            oVar.k("AdWebView", "JS confirm attempted: " + str2);
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i10) {
        com.applovin.impl.adview.a aVar;
        if (i10 == 100 && (aVar = this.f10025c) != null) {
            aVar.c(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i10, String str2) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f10024b;
            oVar.k("AdWebView", "console.log[" + i10 + "] :" + str);
        }
    }
}

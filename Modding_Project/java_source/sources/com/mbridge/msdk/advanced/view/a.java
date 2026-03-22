package com.mbridge.msdk.advanced.view;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.bytedance.applog.util.WebViewJsUtil;
import com.mbridge.msdk.advanced.middle.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.model.VideoThumbInfo;
import com.vungle.ads.internal.model.AdPayload;
import java.io.FileInputStream;
import java.net.URLDecoder;
import java.util.HashMap;
/* compiled from: NativeAdvancedWebViewClient.java */
/* loaded from: classes4.dex */
public class a extends b {

    /* renamed from: c  reason: collision with root package name */
    private final String f25947c = "NativeAdvancedWebViewClient";

    /* renamed from: d  reason: collision with root package name */
    private final String f25948d;

    /* renamed from: e  reason: collision with root package name */
    private final String f25949e;

    /* renamed from: f  reason: collision with root package name */
    String f25950f;

    /* renamed from: g  reason: collision with root package name */
    com.mbridge.msdk.advanced.middle.a f25951g;

    /* renamed from: h  reason: collision with root package name */
    private c f25952h;

    public a(String str, com.mbridge.msdk.advanced.middle.a aVar, c cVar) {
        String a10;
        com.mbridge.msdk.foundation.same.directory.c cVar2 = com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_VC;
        if (e.b(cVar2) != null) {
            a10 = e.b(cVar2);
        } else {
            a10 = j0.a("YkRXhr5AWBPfNgzuH7JQ+2Ha");
        }
        this.f25948d = a10;
        this.f25949e = j0.a("Y+xgWkl2");
        this.f25950f = str;
        this.f25951g = aVar;
        this.f25952h = cVar;
    }

    private WebResourceResponse a(WebView webView, String str) {
        if (!TextUtils.isEmpty(str) && this.f25952h != null) {
            try {
                String str2 = "";
                if (str.startsWith("file") && str.startsWith(this.f25948d)) {
                    str2 = str.replace(AdPayload.FILE_SCHEME, "");
                }
                if (a(str)) {
                    str2 = this.f25952h.a(URLDecoder.decode(Uri.parse(str).getQueryParameter(VideoThumbInfo.KEY_URI)));
                }
                if (!TextUtils.isEmpty(str2) && a(str2, this.f25948d)) {
                    p0.a("NativeAdvancedWebViewClient", "replace url : " + str2);
                    if (!str2.contains("127.0.0.1") && !str2.startsWith(ProxyConfig.MATCH_HTTP)) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("Access-Control-Allow-Origin", ProxyConfig.MATCH_ALL_SCHEMES);
                        WebResourceResponse webResourceResponse = new WebResourceResponse(MimeTypes.VIDEO_MP4, "utf-8", new FileInputStream(str2));
                        webResourceResponse.setResponseHeaders(hashMap);
                        return webResourceResponse;
                    }
                    return null;
                }
            } catch (Throwable th2) {
                p0.b("NativeAdvancedWebViewClient", th2.getMessage());
            }
        }
        return null;
    }

    public void b() {
        if (this.f25952h != null) {
            this.f25952h = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            webView.evaluateJavascript(WebViewJsUtil.JS_URL_PREFIX + com.mbridge.msdk.setting.util.a.a().b(), new C0355a());
        } catch (Throwable th2) {
            p0.b("NativeAdvancedWebViewClient", "onPageStarted", th2);
        }
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(webView, str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.b, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            try {
                WindVaneWebView windVaneWebView = (WindVaneWebView) webView;
                if (System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f26135d) {
                    if (com.mbridge.msdk.click.utils.a.a(((com.mbridge.msdk.advanced.signal.b) windVaneWebView.getObject()).a().get(0), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f26133b)) {
                        return false;
                    }
                }
            } catch (Exception e10) {
                p0.b("NativeAdvancedWebViewClient", e10.getMessage());
            }
            p0.b("NativeAdvancedWebViewClient", "Use html to open url.");
            com.mbridge.msdk.advanced.middle.a aVar = this.f25951g;
            if (aVar != null) {
                aVar.a(false, str);
                return true;
            }
            return true;
        } catch (Throwable th2) {
            p0.b("NativeAdvancedWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return a(webView, webResourceRequest.getUrl().toString());
    }

    private boolean a(String str) {
        Uri parse;
        String scheme;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (scheme = parse.getScheme()) == null || TextUtils.isEmpty(scheme)) {
            return false;
        }
        return scheme.equals(this.f25949e) || scheme.equals("mb-h5");
    }

    /* compiled from: NativeAdvancedWebViewClient.java */
    /* renamed from: com.mbridge.msdk.advanced.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0355a implements ValueCallback<String> {
        C0355a() {
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a */
        public void onReceiveValue(String str) {
        }
    }
}

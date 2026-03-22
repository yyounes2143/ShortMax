package com.mbridge.msdk.mbsignalcommon.windvane;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: WindVaneWebViewClient.java */
/* loaded from: classes4.dex */
public class k extends com.mbridge.msdk.mbsignalcommon.base.b {

    /* renamed from: c  reason: collision with root package name */
    protected String f28279c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f28280d = 0;

    /* renamed from: e  reason: collision with root package name */
    private c f28281e;

    @RequiresApi(api = 11)
    private WebResourceResponse a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && i.e(str)) {
                p0.c("WindVaneWebViewClient", "is image " + str);
                Bitmap b10 = com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).b(str);
                p0.c("WindVaneWebViewClient", "find image from cache " + str);
                if (b10 != null && !b10.isRecycled()) {
                    return new WebResourceResponse(i.b(str), "utf-8", com.mbridge.msdk.foundation.same.image.a.a(b10));
                }
                return null;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f28279c = str;
        c cVar = this.f28281e;
        if (cVar != null) {
            cVar.a(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebResourceResponse a10 = a(str);
        if (a10 != null) {
            p0.c("WindVaneWebViewClient", "find WebResourceResponse url is " + str);
            return a10;
        }
        return super.shouldInterceptRequest(webView, str);
    }
}

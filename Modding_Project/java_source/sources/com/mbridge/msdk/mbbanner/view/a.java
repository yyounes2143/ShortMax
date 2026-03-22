package com.mbridge.msdk.mbbanner.view;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.mbridge.msdk.mbsignalcommon.base.b;
import java.util.List;
/* compiled from: BannerWebViewClient.java */
/* loaded from: classes5.dex */
public class a extends b {

    /* renamed from: c  reason: collision with root package name */
    private final String f27890c = "BannerWebViewClient";

    /* renamed from: d  reason: collision with root package name */
    String f27891d;

    /* renamed from: e  reason: collision with root package name */
    List<CampaignEx> f27892e;

    /* renamed from: f  reason: collision with root package name */
    com.mbridge.msdk.mbbanner.common.listener.a f27893f;

    public a(String str, List<CampaignEx> list, com.mbridge.msdk.mbbanner.common.listener.a aVar) {
        this.f27891d = str;
        this.f27892e = list;
        this.f27893f = aVar;
    }

    private void a(WebView webView, String str) {
        webView.evaluateJavascript(str, new C0389a());
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        CampaignEx campaignEx;
        super.onPageStarted(webView, str, bitmap);
        try {
            a(webView, WebViewJsUtil.JS_URL_PREFIX + com.mbridge.msdk.setting.util.a.a().b());
            List<CampaignEx> list = this.f27892e;
            if (list != null && !list.isEmpty() && (campaignEx = this.f27892e.get(0)) != null && campaignEx.isActiveOm()) {
                a(webView, WebViewJsUtil.JS_URL_PREFIX + MBridgeConstans.OMID_JS_SERVICE_CONTENT);
            }
        } catch (Throwable th2) {
            p0.b("BannerWebViewClient", "onPageStarted", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.b, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            p0.b("BannerWebViewClient", "Use html to open url.");
            BaseWebView baseWebView = (BaseWebView) webView;
            if (System.currentTimeMillis() - baseWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f26135d && com.mbridge.msdk.click.utils.a.a(this.f27892e.get(0), baseWebView.getUrl(), com.mbridge.msdk.click.utils.a.f26133b)) {
                return false;
            }
            if (this.f27892e.size() > 1) {
                c.m().d().startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str)));
                str = null;
            }
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27893f;
            if (aVar != null) {
                aVar.a(false, str);
            }
            return true;
        } catch (Throwable th2) {
            p0.b("BannerWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerWebViewClient.java */
    /* renamed from: com.mbridge.msdk.mbbanner.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0389a implements ValueCallback<String> {
        C0389a() {
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a */
        public void onReceiveValue(String str) {
        }
    }
}

package com.facebook.ads.redexgen.X;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: assets/audience_network.dex */
public class TZ extends WebViewClient {
    public final /* synthetic */ CallableC1727Ta A00;

    public TZ(CallableC1727Ta callableC1727Ta) {
        this.A00 = callableC1727Ta;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC1883Ze.A0D(AbstractC1722Sv.A2j);
        return true;
    }
}

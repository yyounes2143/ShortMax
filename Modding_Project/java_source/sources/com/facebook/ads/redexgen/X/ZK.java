package com.facebook.ads.redexgen.X;

import android.view.View;
import android.webkit.WebView;
/* loaded from: assets/audience_network.dex */
public class ZK implements View.OnClickListener {
    public final /* synthetic */ ZO A00;

    public ZK(ZO zo2) {
        this.A00 = zo2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WebView webView;
        WebView webView2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            webView = this.A00.A09;
            if (!webView.canGoBack()) {
                return;
            }
            webView2 = this.A00.A09;
            webView2.goBack();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}

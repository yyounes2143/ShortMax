package com.facebook.ads.redexgen.X;

import android.view.View;
import android.webkit.WebView;
/* loaded from: assets/audience_network.dex */
public class ZL implements View.OnClickListener {
    public final /* synthetic */ ZO A00;

    public ZL(ZO zo2) {
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
            if (!webView.canGoForward()) {
                return;
            }
            webView2 = this.A00.A09;
            webView2.goForward();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}

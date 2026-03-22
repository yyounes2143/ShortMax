package com.facebook.ads.redexgen.X;

import android.view.View;
import android.webkit.WebView;
/* loaded from: assets/audience_network.dex */
public class ZE implements View.OnClickListener {
    public final /* synthetic */ ZH A00;

    public ZE(ZH zh2) {
        this.A00 = zh2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WebView webView;
        WebView webView2;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            webView = this.A00.A08;
            if (!webView.canGoForward()) {
                return;
            }
            webView2 = this.A00.A08;
            webView2.goForward();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}

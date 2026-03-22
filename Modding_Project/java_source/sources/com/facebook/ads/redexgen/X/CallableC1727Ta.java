package com.facebook.ads.redexgen.X;

import android.webkit.WebView;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Ta  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class CallableC1727Ta implements Callable<String> {
    public final /* synthetic */ SQ A00;

    public CallableC1727Ta(SQ sq2) {
        this.A00 = sq2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00 */
    public final String call() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2;
        atomicReference = AbstractC1728Tb.A04;
        String browserUserAgent = (String) atomicReference.get();
        if (browserUserAgent != null) {
            return browserUserAgent;
        }
        WebView webView = new WebView(this.A00.getApplicationContext());
        webView.setWebViewClient(new TZ(this));
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        if (userAgentString != null) {
            atomicReference2 = AbstractC1728Tb.A04;
            atomicReference2.set(userAgentString);
        }
        return userAgentString;
    }
}

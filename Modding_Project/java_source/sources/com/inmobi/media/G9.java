package com.inmobi.media;

import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class G9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f23685a;

    public G9(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f23685a = new WeakReference(webView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebSettings webSettings;
        WebView webView = (WebView) this.f23685a.get();
        if (webView != null) {
            webSettings = webView.getSettings();
        } else {
            webSettings = null;
        }
        if (webSettings != null) {
            webSettings.setBlockNetworkLoads(true);
        }
    }
}

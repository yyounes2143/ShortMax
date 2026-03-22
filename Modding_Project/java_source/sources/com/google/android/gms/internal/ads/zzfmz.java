package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.webkit.WebView;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfmz extends zzfmy {
    @SuppressLint({"SetJavaScriptEnabled"})
    public zzfmz(String str, WebView webView) {
        super(str);
        if (!webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        zzn(webView);
    }
}

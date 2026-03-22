package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@TargetApi(21)
/* loaded from: classes4.dex */
public final class zzcgp extends zzcgo {
    public zzcgp(zzcfg zzcfgVar, zzbcc zzbccVar, boolean z10, @Nullable zzecl zzeclVar) {
        super(zzcfgVar, zzbccVar, z10, zzeclVar);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
            return zzY(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
        }
        return null;
    }
}

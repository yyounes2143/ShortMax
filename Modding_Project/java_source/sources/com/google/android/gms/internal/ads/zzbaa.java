package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbaa implements Runnable {
    final ValueCallback zza;
    final /* synthetic */ zzazs zzb;
    final /* synthetic */ WebView zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzbac zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbaa(zzbac zzbacVar, final zzazs zzazsVar, final WebView webView, final boolean z10) {
        this.zzb = zzazsVar;
        this.zzc = webView;
        this.zzd = z10;
        Objects.requireNonNull(zzbacVar);
        this.zze = zzbacVar;
        this.zza = new ValueCallback() { // from class: com.google.android.gms.internal.ads.zzazz
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzbaa.this.zze.zzc(zzazsVar, webView, (String) obj, z10);
            }
        };
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView = this.zzc;
        if (webView.getSettings().getJavaScriptEnabled()) {
            try {
                webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zza);
            } catch (Throwable unused) {
                this.zza.onReceiveValue("");
            }
        }
    }
}

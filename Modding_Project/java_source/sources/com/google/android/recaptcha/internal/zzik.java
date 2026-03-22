package com.google.android.recaptcha.internal;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.internal.AssetHelper;
import java.io.ByteArrayInputStream;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzik extends WebViewClient {
    final /* synthetic */ zzja zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzik(zzja zzjaVar) {
        this.zza = zzjaVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        System.currentTimeMillis();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        zzjh zzjhVar;
        zzjhVar = this.zza.zzh;
        long zza = zzjhVar.zza(TimeUnit.MICROSECONDS);
        int i10 = zzbk.zza;
        zzbk.zza(zzbl.zzg.zza(), zza);
    }

    @Override // android.webkit.WebViewClient
    @c
    public final void onReceivedError(WebView webView, int i10, String str, String str2) {
        Map map;
        super.onReceivedError(webView, i10, str, str2);
        zzbb zzbbVar = zzbb.zzc;
        map = this.zza.zzd;
        zzba zzbaVar = (zzba) map.get(Integer.valueOf(i10));
        if (zzbaVar == null) {
            zzbaVar = zzba.zzM;
        }
        zzbd zzbdVar = new zzbd(zzbbVar, zzbaVar, null);
        this.zza.zzA().hashCode();
        zzbdVar.getMessage();
        this.zza.zzA().d(zzbdVar);
    }

    @Override // android.webkit.WebViewClient
    @c
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        zzja zzjaVar = this.zza;
        Uri parse = Uri.parse(str);
        zzja.zzp(zzjaVar);
        Intrinsics.checkNotNull(parse);
        if (zzfk.zzc(parse) && !zzja.zzp(this.zza).zza(parse)) {
            zzbd zzbdVar = new zzbd(zzbb.zzb, zzba.zzQ, null);
            this.zza.zzA().hashCode();
            parse.toString();
            this.zza.zzA().d(zzbdVar);
            return new WebResourceResponse(AssetHelper.DEFAULT_MIME_TYPE, "UTF-8", new ByteArrayInputStream(new byte[0]));
        }
        return super.shouldInterceptRequest(webView, str);
    }
}

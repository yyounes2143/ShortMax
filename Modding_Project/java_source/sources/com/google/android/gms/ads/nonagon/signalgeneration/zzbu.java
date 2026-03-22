package com.google.android.gms.ads.nonagon.signalgeneration;

import android.webkit.WebView;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbeo;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzgdy;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbu extends QueryInfoGenerationCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ TaggingLibraryJsInterface zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbu(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.zza = str;
        Objects.requireNonNull(taggingLibraryJsInterface);
        this.zzb = taggingLibraryJsInterface;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        String str2;
        long j10;
        zzgdy zzgdyVar;
        zzj zzjVar;
        WebView webView;
        zzf zzfVar;
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
        if (((Boolean) zzbfj.zzc.zze()).booleanValue()) {
            zzfVar = this.zzb.zzk;
            str2 = ",\"as\":".concat(zzfVar.zza().toString());
        } else {
            str2 = "";
        }
        String str3 = this.zza;
        Locale locale = Locale.getDefault();
        zzbeo zzbeoVar = zzbfj.zze;
        if (((Boolean) zzbeoVar.zze()).booleanValue()) {
            j10 = ((Long) zzbfj.zzh.zze()).longValue();
        } else {
            j10 = 0;
        }
        final String format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str3, str, Long.valueOf(j10), str2);
        if (((Boolean) zzbeoVar.zze()).booleanValue()) {
            try {
                zzgdyVar = this.zzb.zzh;
                zzgdyVar.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbs
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebView webView2;
                        webView2 = zzbu.this.zzb.zzb;
                        webView2.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzv(e10, "TaggingLibraryJsInterface.getQueryInfo.onFailure");
            }
        } else {
            webView = this.zzb.zzb;
            webView.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbfj.zzc.zze()).booleanValue() && ((Boolean) zzbfj.zzd.zze()).booleanValue()) {
            zzjVar = this.zzb.zzl;
            zzjVar.zzb();
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        final String format;
        zzf zzfVar;
        zzgdy zzgdyVar;
        zzj zzjVar;
        WebView webView;
        long j10;
        zzf zzfVar2;
        String query = queryInfo.getQuery();
        long j11 = 0;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.zza);
            if (((Boolean) zzbfj.zzc.zze()).booleanValue()) {
                zzfVar2 = this.zzb.zzk;
                jSONObject.put("as", zzfVar2.zza());
            }
            if (((Boolean) zzbfj.zze.zze()).booleanValue()) {
                j10 = ((Long) zzbfj.zzh.zze()).longValue();
            } else {
                j10 = 0;
            }
            jSONObject.put("sdk_ttl_ms", j10);
            jSONObject.put("signal", query);
            format = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            if (((Boolean) zzbfj.zzc.zze()).booleanValue()) {
                zzfVar = this.zzb.zzk;
                str = ",\"as\":".concat(zzfVar.zza().toString());
            } else {
                str = "";
            }
            String str2 = this.zza;
            Locale locale = Locale.getDefault();
            String query2 = queryInfo.getQuery();
            if (((Boolean) zzbfj.zze.zze()).booleanValue()) {
                j11 = ((Long) zzbfj.zzh.zze()).longValue();
            }
            format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str2, query2, Long.valueOf(j11), str);
        }
        if (((Boolean) zzbfj.zze.zze()).booleanValue()) {
            try {
                zzgdyVar = this.zzb.zzh;
                zzgdyVar.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbt
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebView webView2;
                        webView2 = zzbu.this.zzb.zzb;
                        webView2.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzv(e10, "TaggingLibraryJsInterface.getQueryInfo.onSuccess");
            }
        } else {
            webView = this.zzb.zzb;
            webView.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbfj.zzc.zze()).booleanValue() && ((Boolean) zzbfj.zzd.zze()).booleanValue()) {
            zzjVar = this.zzb.zzl;
            zzjVar.zzb();
        }
    }
}

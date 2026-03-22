package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzavu;
import com.google.android.gms.internal.ads.zzavv;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzdso;
import com.google.android.gms.internal.ads.zzfda;
import com.google.android.gms.internal.ads.zzfjy;
import com.google.android.gms.internal.ads.zzgdy;
import com.ss.texturerender.TextureRenderKeys;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class TaggingLibraryJsInterface {
    private final Context zza;
    private final WebView zzb;
    private final zzavu zzc;
    private final zzfda zzd;
    private final int zze;
    private final zzdso zzf;
    private final boolean zzg;
    private final zzgdy zzh = zzcaf.zzf;
    private final zzfjy zzi;
    private final zzo zzj;
    private final zzf zzk;
    private final zzj zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TaggingLibraryJsInterface(WebView webView, zzavu zzavuVar, zzdso zzdsoVar, zzfjy zzfjyVar, zzfda zzfdaVar, zzo zzoVar, zzf zzfVar, zzj zzjVar) {
        this.zzb = webView;
        Context context = webView.getContext();
        this.zza = context;
        this.zzc = zzavuVar;
        this.zzf = zzdsoVar;
        zzbde.zza(context);
        this.zze = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjZ)).intValue();
        this.zzg = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzka)).booleanValue();
        this.zzi = zzfjyVar;
        this.zzd = zzfdaVar;
        this.zzj = zzoVar;
        this.zzk = zzfVar;
        this.zzl = zzjVar;
    }

    public static /* synthetic */ void zze(@NonNull TaggingLibraryJsInterface taggingLibraryJsInterface, @NonNull String str) {
        zzfda zzfdaVar;
        Uri parse = Uri.parse(str);
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmu)).booleanValue() && (zzfdaVar = taggingLibraryJsInterface.zzd) != null) {
                parse = zzfdaVar.zza(parse, taggingLibraryJsInterface.zza, taggingLibraryJsInterface.zzb, null);
            } else {
                parse = taggingLibraryJsInterface.zzc.zza(parse, taggingLibraryJsInterface.zza, taggingLibraryJsInterface.zzb, null);
            }
        } catch (zzavv e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to append the click signal to URL: ", e10);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "TaggingLibraryJsInterface.recordClick");
        }
        taggingLibraryJsInterface.zzi.zzd(parse.toString(), null, null, null);
    }

    public static /* synthetic */ void zzf(@NonNull TaggingLibraryJsInterface taggingLibraryJsInterface, @NonNull Bundle bundle, @NonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        boolean z10;
        com.google.android.gms.ads.internal.util.zzaa zzs = com.google.android.gms.ads.internal.zzv.zzs();
        Context context = taggingLibraryJsInterface.zza;
        CookieManager zza = zzs.zza(context);
        if (zza != null) {
            z10 = zza.acceptThirdPartyCookies(taggingLibraryJsInterface.zzb);
        } else {
            z10 = false;
        }
        bundle.putBoolean("accept_3p_cookie", z10);
        QueryInfo.generate(context, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), queryInfoGenerationCallback);
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignals(@NonNull String str) {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            String zzd = this.zzc.zzc().zzd(this.zza, str, this.zzb);
            if (this.zzg) {
                zzaa.zzd(this.zzf, null, "csg", new Pair("clat", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - currentTimeMillis)));
            }
            return zzd;
        } catch (RuntimeException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting click signals. ", e10);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "TaggingLibraryJsInterface.getClickSignals");
            return "";
        }
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignalsWithTimeout(@NonNull final String str, int i10) {
        if (i10 <= 0) {
            String str2 = "Invalid timeout for getting click signals. Timeout=" + i10;
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(str2);
            return "";
        }
        try {
            return (String) zzcaf.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TaggingLibraryJsInterface.this.getClickSignals(str);
                }
            }).get(Math.min(i10, this.zze), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting click signals with timeout. ", e10);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "TaggingLibraryJsInterface.getClickSignalsWithTimeout");
            if (!(e10 instanceof TimeoutException)) {
                return "";
            }
            return "17";
        }
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getQueryInfo() {
        com.google.android.gms.ads.internal.zzv.zzr();
        String uuid = UUID.randomUUID().toString();
        final Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        final zzbu zzbuVar = new zzbu(this, uuid);
        if (((Boolean) zzbfj.zze.zze()).booleanValue()) {
            this.zzj.zzg(this.zzb, zzbuVar);
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkc)).booleanValue()) {
                this.zzh.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbr
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaggingLibraryJsInterface.zzf(TaggingLibraryJsInterface.this, bundle, zzbuVar);
                    }
                });
            } else {
                QueryInfo.generate(this.zza, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), zzbuVar);
            }
        }
        return uuid;
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignals() {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            String zzh = this.zzc.zzc().zzh(this.zza, this.zzb, null);
            if (this.zzg) {
                zzaa.zzd(this.zzf, null, "vsg", new Pair("vlat", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - currentTimeMillis)));
            }
            return zzh;
        } catch (RuntimeException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting view signals. ", e10);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "TaggingLibraryJsInterface.getViewSignals");
            return "";
        }
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignalsWithTimeout(int i10) {
        if (i10 <= 0) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Invalid timeout for getting view signals. Timeout=" + i10);
            return "";
        }
        try {
            return (String) zzcaf.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbo
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TaggingLibraryJsInterface.this.getViewSignals();
                }
            }).get(Math.min(i10, this.zze), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting view signals with timeout. ", e10);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "TaggingLibraryJsInterface.getViewSignalsWithTimeout");
            if (!(e10 instanceof TimeoutException)) {
                return "";
            }
            return "17";
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void recordClick(@NonNull final String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzke)).booleanValue() && !TextUtils.isEmpty(str)) {
            zzcaf.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbp
                @Override // java.lang.Runnable
                public final void run() {
                    TaggingLibraryJsInterface.zze(TaggingLibraryJsInterface.this, str);
                }
            });
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void reportTouchEvent(@NonNull String str) {
        int i10;
        int i11;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i12 = jSONObject.getInt(TextureRenderKeys.KEY_IS_X);
            int i13 = jSONObject.getInt(TextureRenderKeys.KEY_IS_Y);
            int i14 = jSONObject.getInt("duration_ms");
            float f10 = (float) jSONObject.getDouble("force");
            int i15 = jSONObject.getInt("type");
            try {
                if (i15 != 0) {
                    int i16 = 1;
                    if (i15 != 1) {
                        i16 = 2;
                        if (i15 != 2) {
                            i16 = 3;
                            if (i15 != 3) {
                                i10 = -1;
                            }
                        }
                    }
                    i11 = i16;
                    this.zzc.zzd(MotionEvent.obtain(0L, i14, i11, i12, i13, f10, 1.0f, 0, 1.0f, 1.0f, 0, 0));
                    return;
                }
                i10 = 0;
                this.zzc.zzd(MotionEvent.obtain(0L, i14, i11, i12, i13, f10, 1.0f, 0, 1.0f, 1.0f, 0, 0));
                return;
            } catch (RuntimeException e10) {
                e = e10;
                int i17 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.reportTouchEvent");
                return;
            } catch (JSONException e11) {
                e = e11;
                int i172 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "TaggingLibraryJsInterface.reportTouchEvent");
                return;
            }
            i11 = i10;
        } catch (RuntimeException | JSONException e12) {
            e = e12;
        }
    }
}

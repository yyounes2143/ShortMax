package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdyb {
    private static final Pattern zza = Pattern.compile("\\?");
    private final zzche zzb;
    private final Context zzc;
    private final VersionInfoParcel zzd;
    private final zzfcw zze;
    private final Executor zzf;
    private final ScheduledExecutorService zzg;
    private final String zzh;
    private final zzfhu zzi;
    private final zzdsd zzj;
    private final zzfjy zzk;
    private final zzcyy zzl;
    private final Object zzm = new Object();
    private String zzn;
    private List zzo;
    @Nullable
    private Bundle zzp;
    private final zzbvy zzq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdyb(zzche zzcheVar, Context context, VersionInfoParcel versionInfoParcel, zzfcw zzfcwVar, Executor executor, String str, zzfhu zzfhuVar, zzdsd zzdsdVar, zzbvy zzbvyVar, zzeag zzeagVar, ScheduledExecutorService scheduledExecutorService, zzfjy zzfjyVar, zzcyy zzcyyVar) {
        this.zzb = zzcheVar;
        this.zzc = context;
        this.zzd = versionInfoParcel;
        this.zze = zzfcwVar;
        this.zzf = executor;
        this.zzh = str;
        this.zzi = zzfhuVar;
        zzcheVar.zzw();
        this.zzj = zzdsdVar;
        this.zzq = zzbvyVar;
        this.zzg = scheduledExecutorService;
        this.zzk = zzfjyVar;
        this.zzl = zzcyyVar;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzb(zzdyb zzdybVar, List list, Exception exc) {
        String message;
        zzehf zzehfVar;
        String message2;
        com.google.android.gms.ads.internal.zzv.zzp().zzv(exc, "PreloadedLoader.getTypeTwoAdResponseString");
        if (exc instanceof TimeoutException) {
            zzehfVar = new zzehf(1, "Timed out waiting for ad response.");
        } else if (exc instanceof zzehf) {
            zzehfVar = (zzehf) exc;
        } else {
            if (exc.getMessage() == null) {
                message = "Fetch failed.";
            } else {
                message = exc.getMessage();
            }
            zzehfVar = new zzehf(1, message);
        }
        if (zzehfVar.getMessage() == null) {
            message2 = "";
        } else {
            message2 = zzehfVar.getMessage();
        }
        if (list != null && !list.isEmpty()) {
            String str = "0.6.0.0";
            if (!TextUtils.isEmpty(message2)) {
                if (message2.contains("Timed out waiting for ad response.")) {
                    message2 = "timeout";
                    str = "0.2.0.0";
                } else if (message2.contains("Received HTTP error code from ad server:")) {
                    List zzf = zzfwe.zzb(zzfva.zzc(':')).zzf(message2);
                    if (zzf.size() == 2) {
                        message2 = (String) zzf.get(1);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzfju.zzc(zzfju.zzc((String) it.next(), "@gw_adnetstatus@", str), "@error_code@", message2));
            }
            zzdybVar.zzk.zze(arrayList, null);
        }
        return zzgdn.zzg(zzehfVar);
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzc(zzdyb zzdybVar, JSONObject jSONObject) {
        zzfck zzfckVar = new zzfck(zzdybVar.zze);
        String jSONObject2 = jSONObject.toString();
        return zzgdn.zzh(new zzfcn(zzfckVar, zzfcm.zza(new StringReader(jSONObject2), zzdybVar.zzp)));
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzd(zzdyb zzdybVar, zzbom zzbomVar, JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcs)).booleanValue()) {
            zzdybVar.zzj.zza().putLong(zzdrr.SCAR_PRELOADER_PROCESSING_DONE.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        return zzbomVar.zzb(jSONObject);
    }

    public static /* synthetic */ String zzf(zzdyb zzdybVar, zzead zzeadVar) {
        String message;
        zzdybVar.zzi(zzdrr.RENDERING_ADSTRING_TYPE2_FETCH_START);
        int i10 = 0;
        int i11 = -1;
        while (true) {
            try {
                if (i10 < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzht)).intValue()) {
                    zzeae zza2 = new zzeaf(zzdybVar.zzc, zzdybVar.zzd.afmaVersion, zzdybVar.zzq, Binder.getCallingUid()).zza(zzeadVar);
                    int i12 = zza2.zza;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhu)).booleanValue()) {
                        zzdybVar.zzj.zzd("fr", String.valueOf(i10));
                    }
                    if (i12 == 200) {
                        zzdybVar.zzi(zzdrr.RENDERING_ADSTRING_TYPE2_FETCH_END);
                        return zza2.zzc;
                    }
                    i10++;
                    i11 = i12;
                } else {
                    throw new zzehf(1, "Received HTTP error code from ad server:" + i11);
                }
            } catch (Exception e10) {
                if (e10.getMessage() == null) {
                    message = "Fetch failed.";
                } else {
                    message = e10.getMessage();
                }
                throw new zzehf(1, message, e10);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.common.util.concurrent.e zzg(@androidx.annotation.Nullable java.lang.String r18, final java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyb.zzg(java.lang.String, java.lang.String):com.google.common.util.concurrent.e");
    }

    private final String zzh(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzh));
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            String concat = "Failed to update the ad types for rendering. ".concat(e10.toString());
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(concat);
            return str;
        }
    }

    private final void zzi(zzdrr zzdrrVar) {
        Bundle zza2 = this.zzj.zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhu)).booleanValue()) {
            zza2.putLong(zzdrrVar.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
    }

    private static final String zzj(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0232, code lost:
        if (r5.zzg(r1, r2, r4) == false) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01f0 A[Catch: all -> 0x00e2, TryCatch #1 {all -> 0x00e2, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00b1, B:29:0x00cb, B:33:0x00fb, B:36:0x0107, B:38:0x010f, B:40:0x0115, B:44:0x011e, B:55:0x0158, B:47:0x0130, B:54:0x0141, B:57:0x015d, B:32:0x00e5, B:58:0x0173, B:65:0x018c, B:68:0x0194, B:72:0x01b8, B:74:0x01cd, B:78:0x01f0, B:80:0x0205, B:83:0x0219, B:85:0x021f, B:86:0x022c, B:88:0x022e, B:91:0x0237, B:90:0x0234, B:79:0x01fa, B:75:0x01e0, B:71:0x01a2, B:62:0x017c, B:63:0x0181), top: B:117:0x0080, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01fa A[Catch: all -> 0x00e2, TryCatch #1 {all -> 0x00e2, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00b1, B:29:0x00cb, B:33:0x00fb, B:36:0x0107, B:38:0x010f, B:40:0x0115, B:44:0x011e, B:55:0x0158, B:47:0x0130, B:54:0x0141, B:57:0x015d, B:32:0x00e5, B:58:0x0173, B:65:0x018c, B:68:0x0194, B:72:0x01b8, B:74:0x01cd, B:78:0x01f0, B:80:0x0205, B:83:0x0219, B:85:0x021f, B:86:0x022c, B:88:0x022e, B:91:0x0237, B:90:0x0234, B:79:0x01fa, B:75:0x01e0, B:71:0x01a2, B:62:0x017c, B:63:0x0181), top: B:117:0x0080, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x021f A[Catch: all -> 0x00e2, TryCatch #1 {all -> 0x00e2, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00b1, B:29:0x00cb, B:33:0x00fb, B:36:0x0107, B:38:0x010f, B:40:0x0115, B:44:0x011e, B:55:0x0158, B:47:0x0130, B:54:0x0141, B:57:0x015d, B:32:0x00e5, B:58:0x0173, B:65:0x018c, B:68:0x0194, B:72:0x01b8, B:74:0x01cd, B:78:0x01f0, B:80:0x0205, B:83:0x0219, B:85:0x021f, B:86:0x022c, B:88:0x022e, B:91:0x0237, B:90:0x0234, B:79:0x01fa, B:75:0x01e0, B:71:0x01a2, B:62:0x017c, B:63:0x0181), top: B:117:0x0080, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x022e A[Catch: all -> 0x00e2, TryCatch #1 {all -> 0x00e2, blocks: (B:21:0x0080, B:23:0x009e, B:25:0x00a4, B:27:0x00b1, B:29:0x00cb, B:33:0x00fb, B:36:0x0107, B:38:0x010f, B:40:0x0115, B:44:0x011e, B:55:0x0158, B:47:0x0130, B:54:0x0141, B:57:0x015d, B:32:0x00e5, B:58:0x0173, B:65:0x018c, B:68:0x0194, B:72:0x01b8, B:74:0x01cd, B:78:0x01f0, B:80:0x0205, B:83:0x0219, B:85:0x021f, B:86:0x022c, B:88:0x022e, B:91:0x0237, B:90:0x0234, B:79:0x01fa, B:75:0x01e0, B:71:0x01a2, B:62:0x017c, B:63:0x0181), top: B:117:0x0080, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.e zze() {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyb.zze():com.google.common.util.concurrent.e");
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.mbridge.msdk.MBridgeConstans;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbdh {
    private final String zza = (String) zzbey.zza.zze();
    private final Map zzb;
    private final Context zzc;
    private final String zzd;

    public zzbdh(Context context, String str) {
        String packageName;
        Object obj;
        this.zzc = context;
        this.zzd = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzv.zzr();
        linkedHashMap.put("device", com.google.android.gms.ads.internal.util.zzs.zzs());
        if (context.getApplicationContext() != null) {
            packageName = context.getApplicationContext().getPackageName();
        } else {
            packageName = context.getPackageName();
        }
        linkedHashMap.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, packageName);
        com.google.android.gms.ads.internal.zzv.zzr();
        if (true == com.google.android.gms.ads.internal.util.zzs.zzF(context)) {
            obj = "1";
        } else {
            obj = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        linkedHashMap.put("is_lite_sdk", obj);
        Future zzb = com.google.android.gms.ads.internal.zzv.zzn().zzb(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(((zzbvu) zzb.get()).zzj));
            linkedHashMap.put("network_fine", Integer.toString(((zzbvu) zzb.get()).zzk));
        } catch (Exception e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "CsiConfiguration.CsiConfiguration");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlM)).booleanValue()) {
            Map map = this.zzb;
            com.google.android.gms.ads.internal.zzv.zzr();
            map.put("is_bstar", true != com.google.android.gms.ads.internal.util.zzs.zzC(context) ? MBridgeConstans.ENDCARD_URL_TYPE_PL : "1");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjQ)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcC)).booleanValue() && !zzfwg.zzd(com.google.android.gms.ads.internal.zzv.zzp().zzn())) {
                this.zzb.put("plugin", com.google.android.gms.ads.internal.zzv.zzp().zzn());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zza() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzb() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzc() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map zzd() {
        return this.zzb;
    }
}

package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzbnb {
    public static void zza(zzbnc zzbncVar, String str, Map map) {
        try {
            zzbncVar.zze(str, com.google.android.gms.ads.internal.client.zzbb.zzb().zzo(map));
        } catch (JSONException unused) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert parameters to JSON.");
        }
    }

    public static void zzb(zzbnc zzbncVar, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb2.append(str);
        sb2.append("',");
        sb2.append(jSONObject2);
        sb2.append(");");
        String sb3 = sb2.toString();
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Dispatching AFMA event: ".concat(sb3));
        zzbncVar.zza(sb2.toString());
    }

    public static void zzc(zzbnc zzbncVar, String str, String str2) {
        zzbncVar.zza(str + "(" + str2 + ");");
    }

    public static void zzd(zzbnc zzbncVar, String str, JSONObject jSONObject) {
        zzbncVar.zzb(str, jSONObject.toString());
    }
}

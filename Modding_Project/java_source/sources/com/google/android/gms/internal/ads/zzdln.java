package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdln {
    private final zzgdy zza;
    private final zzdmc zzb;
    private final zzdmh zzc;
    private final zzdsd zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdln(zzgdy zzgdyVar, zzdmc zzdmcVar, zzdmh zzdmhVar, zzdsd zzdsdVar) {
        this.zza = zzgdyVar;
        this.zzb = zzdmcVar;
        this.zzc = zzdmhVar;
        this.zzd = zzdsdVar;
    }

    public static /* synthetic */ zzdit zza(zzdln zzdlnVar, com.google.common.util.concurrent.e eVar, com.google.common.util.concurrent.e eVar2, com.google.common.util.concurrent.e eVar3, com.google.common.util.concurrent.e eVar4, com.google.common.util.concurrent.e eVar5, JSONObject jSONObject, com.google.common.util.concurrent.e eVar6, com.google.common.util.concurrent.e eVar7, com.google.common.util.concurrent.e eVar8, com.google.common.util.concurrent.e eVar9, com.google.common.util.concurrent.e eVar10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcs)).booleanValue()) {
            zzdlnVar.zzd.zza().putLong(zzdrr.RENDERING_NATIVE_ASSETS_LOADING_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdit zzditVar = (zzdit) eVar.get();
        zzditVar.zzP((List) eVar2.get());
        zzditVar.zzM((zzbgp) eVar3.get());
        zzditVar.zzQ((zzbgp) eVar4.get());
        zzditVar.zzJ((zzbgi) eVar5.get());
        zzditVar.zzS(zzdmc.zzl(jSONObject));
        zzditVar.zzL(zzdmc.zzk(jSONObject));
        zzcfg zzcfgVar = (zzcfg) eVar6.get();
        if (zzcfgVar != null) {
            zzditVar.zzad(zzcfgVar);
            zzditVar.zzac(zzcfgVar.zzF());
            zzditVar.zzab(zzcfgVar.zzq());
        }
        zzditVar.zzd().putAll((Bundle) eVar7.get());
        zzcfg zzcfgVar2 = (zzcfg) eVar8.get();
        if (zzcfgVar2 != null) {
            zzditVar.zzO(zzcfgVar2);
            zzditVar.zzae(zzcfgVar2.zzF());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfG)).booleanValue() && !zzf(jSONObject)) {
            zzditVar.zzU(eVar9);
            zzditVar.zzX(new zzcak());
        } else {
            zzcfg zzcfgVar3 = (zzcfg) eVar9.get();
            if (zzcfgVar3 != null) {
                zzditVar.zzT(zzcfgVar3);
            }
        }
        for (zzdmg zzdmgVar : (List) eVar10.get()) {
            if (zzdmgVar.zza != 1) {
                zzditVar.zzN(zzdmgVar.zzb, zzdmgVar.zzd);
            } else {
                zzditVar.zzZ(zzdmgVar.zzb, zzdmgVar.zzc);
            }
        }
        return zzditVar;
    }

    public static /* synthetic */ zzdit zzb(zzdln zzdlnVar, zzfcn zzfcnVar, zzfca zzfcaVar, JSONObject jSONObject) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcx)).booleanValue()) {
            zzdlnVar.zzd.zza().putLong(zzdrr.NATIVE_ASSETS_LOADING_BASIC_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdit zzditVar = new zzdit();
        zzditVar.zzaa(jSONObject.optInt("template_id", -1));
        zzditVar.zzK(jSONObject.optString("custom_template_id"));
        JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
        if (optJSONObject != null) {
            str = optJSONObject.optString("omid_partner_name");
        } else {
            str = null;
        }
        zzditVar.zzV(str);
        zzfcw zzfcwVar = zzfcnVar.zza.zza;
        if (zzfcwVar.zzg.contains(Integer.toString(zzditVar.zzc()))) {
            if (zzditVar.zzc() == 3) {
                if (zzditVar.zzA() != null) {
                    if (!zzfcwVar.zzh.contains(zzditVar.zzA())) {
                        throw new zzehf(1, "Unexpected custom template id in the response.");
                    }
                } else {
                    throw new zzehf(1, "No custom template id for custom template ad response.");
                }
            }
            zzditVar.zzY(jSONObject.optDouble("rating", -1.0d));
            String optString = jSONObject.optString("headline", null);
            if (zzfcaVar.zzM) {
                com.google.android.gms.ads.internal.zzv.zzr();
                optString = com.google.android.gms.ads.internal.util.zzs.zzz() + " : " + optString;
            }
            zzditVar.zzZ("headline", optString);
            zzditVar.zzZ("body", jSONObject.optString("body", null));
            zzditVar.zzZ("call_to_action", jSONObject.optString("call_to_action", null));
            zzditVar.zzZ("store", jSONObject.optString("store", null));
            zzditVar.zzZ("price", jSONObject.optString("price", null));
            zzditVar.zzZ("advertiser", jSONObject.optString("advertiser", null));
            return zzditVar;
        }
        throw new zzehf(1, "Invalid template ID: " + zzditVar.zzc());
    }

    private final com.google.common.util.concurrent.e zze(com.google.common.util.concurrent.e eVar, zzdrr zzdrrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcx)).booleanValue()) {
            zzgdn.zzr(eVar, new zzdlm(this, zzdrrVar), this.zza);
        }
        return eVar;
    }

    private static final boolean zzf(JSONObject jSONObject) {
        if (jSONObject.optInt("template_id") == 3) {
            return true;
        }
        return false;
    }

    public final com.google.common.util.concurrent.e zzd(final zzfcn zzfcnVar, final zzfca zzfcaVar, final JSONObject jSONObject, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbya zzbyaVar) {
        com.google.common.util.concurrent.e zzh;
        JSONArray optJSONArray;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcs)).booleanValue()) {
            this.zzd.zza().putLong(zzdrr.RENDERING_NATIVE_ASSETS_LOADING_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        final com.google.common.util.concurrent.e zzb = this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdlk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdln.zzb(zzdln.this, zzfcnVar, zzfcaVar, jSONObject);
            }
        });
        zze(zzb, zzdrr.NATIVE_ASSETS_LOADING_BASIC_END);
        zzdmc zzdmcVar = this.zzb;
        final com.google.common.util.concurrent.e zzf = zzdmcVar.zzf(jSONObject, "images", zzdrr.NATIVE_ASSETS_LOADING_IMAGE_START);
        zze(zzf, zzdrr.NATIVE_ASSETS_LOADING_IMAGE_END);
        zzfcd zzfcdVar = zzfcnVar.zzb.zzb;
        final com.google.common.util.concurrent.e zzg = zzdmcVar.zzg(jSONObject, "images", zzfcaVar, zzfcdVar, zzbVar, zzbyaVar);
        zze(zzg, zzdrr.NATIVE_ASSETS_LOADING_IMAGE_COMPOSITION_END);
        final com.google.common.util.concurrent.e zze = zzdmcVar.zze(jSONObject, "secondary_image", zzdrr.NATIVE_ASSETS_LOADING_LOGO_START);
        zze(zze, zzdrr.NATIVE_ASSETS_LOADING_LOGO_END);
        final com.google.common.util.concurrent.e zze2 = zzdmcVar.zze(jSONObject, "app_icon", zzdrr.NATIVE_ASSETS_LOADING_ICON_START);
        zze(zze2, zzdrr.NATIVE_ASSETS_LOADING_ICON_END);
        final com.google.common.util.concurrent.e zzd = zzdmcVar.zzd(jSONObject, "attribution", zzdrr.NATIVE_ASSETS_LOADING_ATTRIBUTION_START);
        zze(zzd, zzdrr.NATIVE_ASSETS_LOADING_ATTRIBUTION_END);
        final com.google.common.util.concurrent.e zzj = zzdmcVar.zzj(jSONObject, zzfcaVar, zzfcdVar, zzbVar, zzbyaVar);
        zze(zzj, zzdrr.NATIVE_ASSETS_LOADING_VIDEO_END);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznr)).booleanValue() && jSONObject.has("video")) {
            JSONObject optJSONObject = jSONObject.optJSONObject("video");
            if (optJSONObject.has("flags") && (optJSONArray = optJSONObject.optJSONArray("flags")) != null) {
                int i10 = 0;
                while (true) {
                    if (i10 >= optJSONArray.length()) {
                        break;
                    }
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i10);
                    if (optJSONObject2 != null && optJSONObject2.optString("key").equals("afma_video_player_type")) {
                        try {
                            if (Integer.parseInt(optJSONObject2.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE)) == 3) {
                                zzh = this.zzb.zzh(zzj);
                                zze(zzh, zzdrr.NATIVE_ASSETS_LOADING_MEDIA_END);
                            }
                        } catch (NumberFormatException unused) {
                        }
                    } else {
                        i10++;
                    }
                }
            }
        }
        zzh = zzgdn.zzh(new Bundle());
        final com.google.common.util.concurrent.e eVar = zzh;
        final com.google.common.util.concurrent.e zza = this.zzc.zza(jSONObject, "custom_assets");
        zze(zza, zzdrr.NATIVE_ASSETS_LOADING_CUSTOM_END);
        final com.google.common.util.concurrent.e zzi = this.zzb.zzi(jSONObject, zzbVar, zzbyaVar);
        zze(zzi, zzdrr.NATIVE_ASSETS_LOADING_OMID_END);
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzb);
        arrayList.add(zzf);
        arrayList.add(zzg);
        arrayList.add(zze);
        arrayList.add(zze2);
        arrayList.add(zzd);
        arrayList.add(zzj);
        arrayList.add(eVar);
        arrayList.add(zza);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfG)).booleanValue() || zzf(jSONObject)) {
            arrayList.add(zzi);
        }
        return zzgdn.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdll
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzdln.zza(zzdln.this, zzb, zzf, zze2, zze, zzd, jSONObject, zzj, eVar, zzg, zzi, zza);
            }
        }, this.zza);
    }
}

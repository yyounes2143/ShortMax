package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.vungle.ads.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbzm {
    private String zzd;
    private String zze;
    private long zzf;
    private JSONObject zzg;
    private boolean zzh;
    private boolean zzj;
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final Map zzc = new HashMap();
    private final List zzi = new ArrayList();

    public zzbzm(String str, long j10) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.zzd = "";
        this.zzh = false;
        this.zzj = false;
        this.zze = str;
        this.zzf = j10;
        if (!TextUtils.isEmpty(str)) {
            try {
                this.zzg = new JSONObject(str);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmc)).booleanValue() && zzj()) {
                    return;
                }
                if (this.zzg.optInt("status", -1) != 1) {
                    this.zzh = false;
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("App settings could not be fetched successfully.");
                    return;
                }
                this.zzh = true;
                this.zzd = this.zzg.optString("app_id");
                JSONArray optJSONArray2 = this.zzg.optJSONArray("ad_unit_id_settings");
                if (optJSONArray2 != null) {
                    for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                        JSONObject jSONObject = optJSONArray2.getJSONObject(i11);
                        String optString = jSONObject.optString("format");
                        String optString2 = jSONObject.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if (Constants.PLACEMENT_TYPE_INTERSTITIAL.equalsIgnoreCase(optString)) {
                                this.zzb.add(optString2);
                            } else if ((Constants.PLACEMENT_TYPE_REWARDED.equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject3 = jSONObject.optJSONObject("mediation_config")) != null) {
                                this.zzc.put(optString2, new zzbpk(optJSONObject3));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.zzg.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray3 != null) {
                    for (int i12 = 0; i12 < optJSONArray3.length(); i12++) {
                        this.zza.add(optJSONArray3.optString(i12));
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhc)).booleanValue() && (optJSONObject2 = this.zzg.optJSONObject("common_settings")) != null && (optJSONArray = optJSONObject2.optJSONArray("loeid")) != null) {
                    for (int i13 = 0; i13 < optJSONArray.length(); i13++) {
                        this.zzi.add(optJSONArray.get(i13).toString());
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgy)).booleanValue() && (optJSONObject = this.zzg.optJSONObject("common_settings")) != null) {
                    this.zzj = optJSONObject.optBoolean("is_prefetching_enabled", false);
                }
            } catch (JSONException e10) {
                int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Exception occurred while processing app setting json", e10);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    public final long zza() {
        return this.zzf;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zze;
    }

    public final List zzd() {
        return this.zzi;
    }

    public final Map zze() {
        return this.zzc;
    }

    public final JSONObject zzf() {
        return this.zzg;
    }

    public final void zzg(long j10) {
        this.zzf = j10;
    }

    public final boolean zzh() {
        return this.zzj;
    }

    public final boolean zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        if (!TextUtils.isEmpty(this.zze) && this.zzg != null) {
            zzbcv zzbcvVar = zzbde.zzmf;
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).longValue();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzme)).booleanValue() && !TextUtils.isEmpty(this.zze)) {
                longValue = this.zzg.optLong("cache_ttl_sec", ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).longValue());
            }
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            if (longValue >= 0) {
                long j10 = this.zzf;
                if (j10 > currentTimeMillis || TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis - j10) > longValue) {
                    this.zza.clear();
                    this.zzb.clear();
                    this.zzc.clear();
                    this.zzd = "";
                    this.zze = "";
                    this.zzg = null;
                    this.zzh = false;
                    this.zzi.clear();
                    this.zzj = false;
                    return true;
                }
            }
        }
        return false;
    }
}

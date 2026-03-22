package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbom;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbot;
import com.google.android.gms.internal.ads.zzbow;
import com.google.android.gms.internal.ads.zzbzm;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcai;
import com.google.android.gms.internal.ads.zzdsi;
import com.google.android.gms.internal.ads.zzdsj;
import com.google.android.gms.internal.ads.zzfhi;
import com.google.android.gms.internal.ads.zzfhj;
import com.google.android.gms.internal.ads.zzfhx;
import com.google.android.gms.internal.ads.zzgcu;
import com.google.android.gms.internal.ads.zzgdn;
import com.google.android.gms.internal.ads.zzgdy;
import com.google.common.util.concurrent.e;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.texturerender.TextureRenderKeys;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzf {
    private Context zza;
    private long zzb = 0;

    public static /* synthetic */ e zza(zzf zzfVar, Long l10, zzdsj zzdsjVar, zzfhj zzfhjVar, zzfhx zzfhxVar, JSONObject jSONObject) {
        boolean optBoolean = jSONObject.optBoolean("isSuccessful", false);
        if (optBoolean) {
            zzv.zzp().zzi().zzs(jSONObject.getString("appSettingsJson"));
            if (l10 != null) {
                zzf(zzdsjVar, "cld_s", zzv.zzD().elapsedRealtime() - l10.longValue());
            }
        }
        String optString = jSONObject.optString(HiAnalyticsConstant.HaKey.BI_KEY_ERRORREASON, "");
        if (!TextUtils.isEmpty(optString)) {
            zzfhjVar.zzc(optString);
        }
        zzfhjVar.zzg(optBoolean);
        zzfhxVar.zzc(zzfhjVar.zzm());
        return zzgdn.zzh(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zzf(zzdsj zzdsjVar, String str, long j10) {
        if (zzdsjVar != null) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zznb)).booleanValue()) {
                zzdsi zza = zzdsjVar.zza();
                zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "lat_init");
                zza.zzb(str, Long.toString(j10));
                zza.zzj();
            }
        }
    }

    public final void zzc(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable Runnable runnable, zzfhx zzfhxVar, @Nullable zzdsj zzdsjVar, @Nullable Long l10, boolean z10) {
        zzd(context, versionInfoParcel, true, null, str, null, runnable, zzfhxVar, zzdsjVar, l10, z10);
    }

    @VisibleForTesting
    final void zzd(Context context, VersionInfoParcel versionInfoParcel, boolean z10, @Nullable zzbzm zzbzmVar, String str, @Nullable String str2, @Nullable Runnable runnable, final zzfhx zzfhxVar, @Nullable final zzdsj zzdsjVar, @Nullable final Long l10, boolean z11) {
        PackageInfo packageInfo;
        if (zzv.zzD().elapsedRealtime() - this.zzb < 5000) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Not retrying to fetch app settings");
            return;
        }
        this.zzb = zzv.zzD().elapsedRealtime();
        if (zzbzmVar != null && !TextUtils.isEmpty(zzbzmVar.zzc())) {
            if (zzv.zzD().currentTimeMillis() - zzbzmVar.zza() <= ((Long) zzbd.zzc().zzb(zzbde.zzew)).longValue() && zzbzmVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("App settings could not be fetched. Required parameters missing");
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.zza = applicationContext;
            final zzfhj zza = zzfhi.zza(context, 4);
            zza.zzi();
            zzbow zza2 = zzv.zzg().zza(this.zza, versionInfoParcel, zzfhxVar);
            zzboq zzboqVar = zzbot.zza;
            zzbom zza3 = zza2.zza("google.afma.config.fetchAppSettings", zzboqVar, zzboqVar);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z10);
                jSONObject.put("pn", context.getPackageName());
                zzbcv zzbcvVar = zzbde.zza;
                jSONObject.put("experiment_ids", TextUtils.join(",", zzbd.zza().zza()));
                jSONObject.put("js", versionInfoParcel.afmaVersion);
                if (((Boolean) zzbd.zzc().zzb(zzbde.zzjV)).booleanValue()) {
                    jSONObject.put("inspector_enabled", z11);
                }
                try {
                    ApplicationInfo applicationInfo = this.zza.getApplicationInfo();
                    if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                        jSONObject.put("version", packageInfo.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
                }
                e zzb = zza3.zzb(jSONObject);
                zzgcu zzgcuVar = new zzgcu() { // from class: com.google.android.gms.ads.internal.zzd
                    @Override // com.google.android.gms.internal.ads.zzgcu
                    public final e zza(Object obj) {
                        return zzf.zza(zzf.this, l10, zzdsjVar, zza, zzfhxVar, (JSONObject) obj);
                    }
                };
                zzgdy zzgdyVar = zzcaf.zzg;
                e zzn = zzgdn.zzn(zzb, zzgcuVar, zzgdyVar);
                if (runnable != null) {
                    zzb.addListener(runnable, zzgdyVar);
                }
                if (l10 != null) {
                    zzb.addListener(new Runnable() { // from class: com.google.android.gms.ads.internal.zze
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzf zzfVar = zzf.this;
                            zzf.zzf(zzdsjVar, "cld_r", zzv.zzD().elapsedRealtime() - l10.longValue());
                        }
                    }, zzgdyVar);
                }
                if (((Boolean) zzbd.zzc().zzb(zzbde.zzia)).booleanValue()) {
                    zzcai.zzb(zzn, "ConfigLoader.maybeFetchNewAppSettings");
                } else {
                    zzcai.zza(zzn, "ConfigLoader.maybeFetchNewAppSettings");
                }
            } catch (Exception e10) {
                int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error requesting application settings", e10);
                zza.zzh(e10);
                zza.zzg(false);
                zzfhxVar.zzc(zza.zzm());
            }
        }
    }

    public final void zze(Context context, VersionInfoParcel versionInfoParcel, String str, zzbzm zzbzmVar, zzfhx zzfhxVar, boolean z10) {
        String str2;
        if (zzbzmVar != null) {
            str2 = zzbzmVar.zzb();
        } else {
            str2 = null;
        }
        zzd(context, versionInfoParcel, false, zzbzmVar, str2, str, null, zzfhxVar, null, null, z10);
    }
}

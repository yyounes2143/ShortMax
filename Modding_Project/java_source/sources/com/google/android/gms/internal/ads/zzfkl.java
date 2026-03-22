package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.common.wrappers.Wrappers;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Locale;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkl {
    private final zzdsj zza;
    private final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkl(zzdsj zzdsjVar, Context context) {
        CharSequence charSequence;
        this.zza = zzdsjVar;
        zzfrw zzfrwVar = com.google.android.gms.ads.internal.util.zzs.zza;
        try {
            charSequence = Wrappers.packageManager(context).getApplicationLabel(context.getPackageName());
        } catch (PackageManager.NameNotFoundException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to get application name", e10);
            charSequence = "";
        }
        this.zzb = charSequence.toString();
    }

    private final void zzq(@Nullable String str, String str2, long j10, int i10, int i11, @Nullable String str3, @Nullable zzfkt zzfktVar, String str4) {
        zzdsi zza = this.zza.zza();
        zza.zzb(str2, Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        if (zzfktVar != null) {
            zza.zzb("ad_unit_id", zzfktVar.zzb());
            zza.zzb("ad_format", zzfktVar.zza());
            zza.zzb("pid", zzfktVar.zzc());
        }
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, str);
        if (str3 != null) {
            zza.zzb("gqi", str3);
        }
        if (i10 >= 0) {
            zza.zzb("max_ads", Integer.toString(i10));
        }
        if (i11 >= 0) {
            zza.zzb("cache_size", Integer.toString(i11));
        }
        zza.zzb("pv", str4);
        zza.zzj();
    }

    private final void zzr(String str, long j10, @Nullable String str2, @Nullable String str3, AdFormat adFormat, int i10, int i11, int i12, String str4) {
        zzdsi zza = this.zza.zza();
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, str);
        zza.zzb("pat", Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("ad_format", adFormat.name().toLowerCase(Locale.ENGLISH));
        zza.zzb("max_ads", Integer.toString(i10));
        zza.zzb("cache_size", Integer.toString(i11));
        zza.zzb("pas", Integer.toString(i12));
        zza.zzb("pv", "2");
        zza.zzb("ad_unit_id", str3);
        zza.zzb("pid", str2);
        zza.zzj();
    }

    public final void zza(int i10, int i11, long j10, zzfkt zzfktVar) {
        zzdsi zza = this.zza.zza();
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "cache_resize");
        zza.zzb("cs_ts", Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("orig_ma", Integer.toString(i10));
        zza.zzb("max_ads", Integer.toString(i11));
        zza.zzb("ad_format", zzfktVar.zza());
        zza.zzb("ad_unit_id", zzfktVar.zzb());
        zza.zzb("pid", zzfktVar.zzc());
        zza.zzb("pv", "1");
        zza.zzj();
    }

    public final void zzb(long j10, String str, String str2, AdFormat adFormat, int i10, int i11) {
        zzr("pd", j10, str, str2, adFormat, i10, i11, 1, "2");
    }

    public final void zzc(long j10, AdFormat adFormat, int i10) {
        zzr("pda", j10, null, null, adFormat, -1, -1, i10, "2");
    }

    public final void zzd(long j10, String str, @Nullable String str2, AdFormat adFormat, int i10, int i11) {
        zzr("pgc", j10, str, str2, adFormat, i10, i11, 1, "2");
    }

    public final void zze(AdFormat adFormat, long j10, int i10) {
        zzr("pgcs", j10, null, null, adFormat, -1, -1, i10, "2");
    }

    public final void zzf(int i10, long j10, String str, @Nullable String str2, AdFormat adFormat, int i11) {
        zzr("pnav", j10, str, str2, adFormat, i11, i10, 1, "2");
    }

    public final void zzg(long j10, String str) {
        zzq("poll_ad", "ppacwe_ts", j10, -1, -1, null, null, "2");
    }

    public final void zzh(int i10, int i11, long j10, @Nullable Long l10, @Nullable String str, @Nullable zzfkt zzfktVar, String str2) {
        zzdsi zza = this.zza.zza();
        zza.zzb("plaac_ts", Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("max_ads", Integer.toString(i10));
        zza.zzb("cache_size", Integer.toString(i11));
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "is_ad_available");
        if (zzfktVar != null) {
            zza.zzb("ad_unit_id", zzfktVar.zzb());
            zza.zzb("pid", zzfktVar.zzc());
            zza.zzb("ad_format", zzfktVar.zza());
        }
        if (l10 != null) {
            zza.zzb("plaay_ts", Long.toString(l10.longValue()));
        }
        if (str != null) {
            zza.zzb("gqi", str);
        }
        zza.zzb("pv", str2);
        zza.zzj();
    }

    public final void zzi(long j10, @Nullable String str, zzfkt zzfktVar, int i10, int i11, String str2) {
        zzq("paa", "pano_ts", j10, i10, i11, str, zzfktVar, str2);
    }

    public final void zzj(long j10, zzfkt zzfktVar, int i10, String str) {
        zzq("pae", "paeo_ts", j10, i10, 0, null, zzfktVar, str);
    }

    public final void zzk(long j10, zzfkt zzfktVar, com.google.android.gms.ads.internal.client.zze zzeVar, int i10, int i11, String str) {
        zzdsi zza = this.zza.zza();
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "pftla");
        zza.zzb("pftlat_ts", Long.toString(j10));
        zza.zzb("pftlaec", Integer.toString(zzeVar.zza));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("ad_format", zzfktVar.zza());
        zza.zzb("max_ads", Integer.toString(i10));
        zza.zzb("cache_size", Integer.toString(i11));
        zza.zzb("ad_unit_id", zzfktVar.zzb());
        zza.zzb("pid", zzfktVar.zzc());
        zza.zzb("pv", str);
        zza.zzj();
    }

    public final void zzl(long j10, zzfkt zzfktVar, int i10, int i11, String str) {
        zzq("poll_ad", "ppac_ts", j10, i10, i11, null, zzfktVar, str);
    }

    public final void zzm(long j10, int i10, int i11, @Nullable String str, zzfkt zzfktVar, String str2) {
        zzdsi zza = this.zza.zza();
        zza.zzb("ppla_ts", Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("ad_format", zzfktVar.zza());
        zza.zzb("ad_unit_id", zzfktVar.zzb());
        zza.zzb("pid", zzfktVar.zzc());
        zza.zzb("max_ads", Integer.toString(i10));
        zza.zzb("cache_size", Integer.toString(i11));
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "poll_ad");
        if (str != null) {
            zza.zzb("gqi", str);
        }
        zza.zzb("pv", str2);
        zza.zzj();
    }

    public final void zzn(long j10, int i10, int i11, String str, zzfkt zzfktVar, String str2) {
        zzq("poll_ad", "psvroc_ts", j10, i10, i11, str, zzfktVar, str2);
    }

    public final void zzo(Map map, long j10, String str) {
        zzdsi zza = this.zza.zza();
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "start_preload");
        zza.zzb("sp_ts", Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("pv", "1");
        for (AdFormat adFormat : map.keySet()) {
            String valueOf = String.valueOf(adFormat.name().toLowerCase(Locale.ENGLISH));
            zza.zzb(valueOf.concat("_count"), Integer.toString(((Integer) map.get(adFormat)).intValue()));
        }
        zza.zzj();
    }

    public final void zzp(int i10, long j10, zzfkt zzfktVar, String str) {
        zzdsi zza = this.zza.zza();
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "start_preload");
        zza.zzb("sp_ts", Long.toString(j10));
        zza.zzb(MBridgeConstans.DYNAMIC_VIEW_WX_APP, this.zzb);
        zza.zzb("ad_format", zzfktVar.zza());
        zza.zzb("ad_unit_id", zzfktVar.zzb());
        zza.zzb("pid", zzfktVar.zzc());
        zza.zzb("max_ads", Integer.toString(i10));
        zza.zzb("pv", str);
        zza.zzj();
    }
}

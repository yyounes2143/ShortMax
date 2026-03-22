package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeme implements zzeub {
    final zzfcw zza;
    private final long zzb;

    public zzeme(zzfcw zzfcwVar, long j10) {
        this.zza = zzfcwVar;
        this.zzb = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        boolean z10;
        Bundle bundle = ((zzcva) obj).zzb;
        zzfcw zzfcwVar = this.zza;
        bundle.putString("slotname", zzfcwVar.zzf);
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcwVar.zzd;
        boolean z11 = true;
        if (zzmVar.zzf) {
            bundle.putBoolean("test_request", true);
        }
        int i10 = zzmVar.zzg;
        if (i10 != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfdk.zze(bundle, "tag_for_child_directed_treatment", i10, z10);
        if (zzmVar.zza >= 8) {
            int i11 = zzmVar.zzt;
            if (i11 == -1) {
                z11 = false;
            }
            zzfdk.zze(bundle, "tag_for_under_age_of_consent", i11, z11);
        }
        zzfdk.zzc(bundle, "url", zzmVar.zzl);
        zzfdk.zzd(bundle, "neighboring_content_urls", zzmVar.zzv);
        Bundle bundle2 = zzmVar.zzc;
        Bundle bundle3 = (Bundle) bundle2.clone();
        HashSet hashSet = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhP)).split(",", -1)));
        for (String str : bundle2.keySet()) {
            if (!hashSet.contains(str)) {
                bundle3.remove(str);
            }
        }
        zzfdk.zzb(bundle, "extras", bundle3);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        Bundle bundle = ((zzcva) obj).zza;
        zzfcw zzfcwVar = this.zza;
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcwVar.zzd;
        bundle.putInt("http_timeout_millis", zzmVar.zzw);
        bundle.putString("slotname", zzfcwVar.zzf);
        int i10 = zzfcwVar.zzo.zza;
        if (i10 != 0) {
            int i11 = i10 - 1;
            boolean z16 = true;
            if (i11 != 1) {
                if (i11 == 2) {
                    bundle.putBoolean("is_rewarded_interstitial", true);
                }
            } else {
                bundle.putBoolean("is_new_rewarded", true);
            }
            bundle.putLong("start_signals_timestamp", this.zzb);
            zzfdk.zzg(bundle, "is_sdk_preload", true, zzmVar.zzc());
            zzfdk.zzf(bundle, "prefetch_type", "zenith_v2", zzmVar.zzd());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
            long j10 = zzmVar.zzb;
            String format = simpleDateFormat.format(new Date(j10));
            if (j10 != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzfdk.zzf(bundle, "cust_age", format, z10);
            zzfdk.zzb(bundle, "extras", zzmVar.zzc);
            int i12 = zzmVar.zzd;
            if (i12 != -1) {
                z11 = true;
            } else {
                z11 = false;
            }
            zzfdk.zze(bundle, "cust_gender", i12, z11);
            zzfdk.zzd(bundle, "kw", zzmVar.zze);
            int i13 = zzmVar.zzg;
            if (i13 != -1) {
                z12 = true;
            } else {
                z12 = false;
            }
            zzfdk.zze(bundle, "tag_for_child_directed_treatment", i13, z12);
            if (zzmVar.zzf) {
                bundle.putBoolean("test_request", true);
            }
            bundle.putInt("ppt_p13n", zzmVar.zzy);
            int i14 = zzmVar.zza;
            if (i14 >= 2 && zzmVar.zzh) {
                z13 = true;
            } else {
                z13 = false;
            }
            zzfdk.zze(bundle, "d_imp_hdr", 1, z13);
            String str = zzmVar.zzi;
            if (i14 >= 2 && !TextUtils.isEmpty(str)) {
                z14 = true;
            } else {
                z14 = false;
            }
            zzfdk.zzf(bundle, "ppid", str, z14);
            Location location = zzmVar.zzk;
            if (location != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putFloat("radius", location.getAccuracy() * 1000.0f);
                bundle2.putLong("lat", (long) (location.getLatitude() * 1.0E7d));
                bundle2.putLong(Constants.LONG, (long) (1.0E7d * location.getLongitude()));
                bundle2.putLong(CrashHianalyticsData.TIME, location.getTime() * 1000);
                bundle.putBundle("uule", bundle2);
            }
            zzfdk.zzc(bundle, "url", zzmVar.zzl);
            zzfdk.zzd(bundle, "neighboring_content_urls", zzmVar.zzv);
            zzfdk.zzb(bundle, "custom_targeting", zzmVar.zzn);
            zzfdk.zzd(bundle, "category_exclusions", zzmVar.zzo);
            zzfdk.zzc(bundle, "request_agent", zzmVar.zzp);
            zzfdk.zzc(bundle, "request_pkg", zzmVar.zzq);
            boolean z17 = zzmVar.zzr;
            if (i14 >= 7) {
                z15 = true;
            } else {
                z15 = false;
            }
            zzfdk.zzg(bundle, "is_designed_for_families", z17, z15);
            if (i14 >= 8) {
                int i15 = zzmVar.zzt;
                if (i15 == -1) {
                    z16 = false;
                }
                zzfdk.zze(bundle, "tag_for_under_age_of_consent", i15, z16);
                zzfdk.zzc(bundle, "max_ad_content_rating", zzmVar.zzu);
                return;
            }
            return;
        }
        throw null;
    }
}

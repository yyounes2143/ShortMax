package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbcj;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdov implements zzhgr {
    private final zzhha zza;

    private zzdov(zzhha zzhhaVar) {
        this.zza = zzhhaVar;
    }

    public static zzdov zza(zzhha zzhhaVar) {
        return new zzdov(zzhhaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbcj.zza.EnumC0294zza enumC0294zza;
        if (((zzcvp) this.zza).zzc().zzo.zza == 3) {
            enumC0294zza = zzbcj.zza.EnumC0294zza.REWARDED_INTERSTITIAL;
        } else {
            enumC0294zza = zzbcj.zza.EnumC0294zza.REWARD_BASED_VIDEO_AD;
        }
        zzhgz.zzb(enumC0294zza);
        return enumC0294zza;
    }
}

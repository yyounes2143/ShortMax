package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzetn implements zzeub {
    @Nullable
    public final String zza;
    @Nullable
    public final String zzb;
    @Nullable
    public final String zzc;
    @Nullable
    public final String zzd;
    @Nullable
    public final Long zze;

    public zzetn(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l10) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = l10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzfdk.zzc(((zzcva) obj).zzb, "fbs_aeid", this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcva) obj).zza;
        zzfdk.zzc(bundle, "gmp_app_id", this.zza);
        zzfdk.zzc(bundle, "fbs_aiid", this.zzb);
        zzfdk.zzc(bundle, "fbs_aeid", this.zzc);
        zzfdk.zzc(bundle, "apm_id_origin", this.zzd);
        Long l10 = this.zze;
        if (l10 != null) {
            bundle.putLong("sai_timeout", l10.longValue());
        }
    }
}

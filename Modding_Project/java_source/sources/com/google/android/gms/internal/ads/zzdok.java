package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdok implements zzbkw {
    private final zzcxf zza;
    @Nullable
    private final zzbwo zzb;
    private final String zzc;
    private final String zzd;

    public zzdok(zzcxf zzcxfVar, zzfca zzfcaVar) {
        this.zza = zzcxfVar;
        this.zzb = zzfcaVar.zzl;
        this.zzc = zzfcaVar.zzj;
        this.zzd = zzfcaVar.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzbkw
    public final void zza(@Nullable zzbwo zzbwoVar) {
        int i10;
        String str;
        zzbwo zzbwoVar2 = this.zzb;
        if (zzbwoVar2 != null) {
            zzbwoVar = zzbwoVar2;
        }
        if (zzbwoVar != null) {
            str = zzbwoVar.zza;
            i10 = zzbwoVar.zzb;
        } else {
            i10 = 1;
            str = "";
        }
        this.zza.zzd(new zzbvz(str, i10), this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbkw
    public final void zzb() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbkw
    public final void zzc() {
        this.zza.zzf();
    }
}

package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzyy implements zzyw {
    private final zzyw zza;

    public zzyy(zzyw zzywVar) {
        this.zza = zzywVar;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzyy)) {
            return false;
        }
        return this.zza.equals(((zzyy) obj).zza);
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public zzz zza(int i10) {
        return this.zza.zza(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public zzz zzb() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public zzbm zzc() {
        return this.zza.zzc();
    }

    public final zzyw zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final int zze(int i10) {
        return this.zza.zze(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzyw
    public final int zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final int zzg(int i10) {
        return this.zza.zzg(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzzb
    public final int zzh() {
        return this.zza.zzh();
    }
}

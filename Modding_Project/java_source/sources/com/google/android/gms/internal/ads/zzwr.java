package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzwr implements zzzg {
    public long zza;
    public long zzb;
    @Nullable
    public zzzf zzc;
    @Nullable
    public zzwr zzd;

    public zzwr(long j10, int i10) {
        zze(j10, 65536);
    }

    public final int zza(long j10) {
        long j11 = j10 - this.zza;
        int i10 = this.zzc.zzb;
        return (int) j11;
    }

    public final zzwr zzb() {
        this.zzc = null;
        zzwr zzwrVar = this.zzd;
        this.zzd = null;
        return zzwrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzg
    public final zzzf zzc() {
        zzzf zzzfVar = this.zzc;
        zzzfVar.getClass();
        return zzzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzg
    @Nullable
    public final zzzg zzd() {
        zzwr zzwrVar = this.zzd;
        if (zzwrVar != null && zzwrVar.zzc != null) {
            return zzwrVar;
        }
        return null;
    }

    public final void zze(long j10, int i10) {
        boolean z10;
        if (this.zzc == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        this.zza = j10;
        this.zzb = j10 + 65536;
    }
}

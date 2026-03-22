package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaee implements zzaeu {
    private final zzaeg zza;
    private final long zzb;

    public zzaee(zzaeg zzaegVar, long j10) {
        this.zza = zzaegVar;
        this.zzb = j10;
    }

    private final zzaev zzb(long j10, long j11) {
        return new zzaev((j10 * 1000000) / this.zza.zze, this.zzb + j11);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        long j11;
        zzaeg zzaegVar = this.zza;
        zzaef zzaefVar = zzaegVar.zzk;
        zzdd.zzb(zzaefVar);
        long[] jArr = zzaefVar.zza;
        long[] jArr2 = zzaefVar.zzb;
        int zzd = zzex.zzd(jArr, zzaegVar.zzb(j10), true, false);
        long j12 = 0;
        if (zzd == -1) {
            j11 = 0;
        } else {
            j11 = jArr[zzd];
        }
        if (zzd != -1) {
            j12 = jArr2[zzd];
        }
        zzaev zzb = zzb(j11, j12);
        if (zzb.zzb != j10 && zzd != jArr.length - 1) {
            int i10 = zzd + 1;
            return new zzaes(zzb, zzb(jArr[i10], jArr2[i10]));
        }
        return new zzaes(zzb, zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }
}

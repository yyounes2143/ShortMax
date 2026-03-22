package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaoz implements zzaeu {
    private final zzaow zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    public zzaoz(zzaow zzaowVar, int i10, long j10, long j11) {
        this.zza = zzaowVar;
        this.zzb = i10;
        this.zzc = j10;
        long j12 = (j11 - j10) / zzaowVar.zzd;
        this.zzd = j12;
        this.zze = zzb(j12);
    }

    private final long zzb(long j10) {
        return zzex.zzu(j10 * this.zzb, 1000000L, this.zza.zzc, RoundingMode.DOWN);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        zzaow zzaowVar = this.zza;
        String str = zzex.zza;
        long j11 = this.zzd - 1;
        long max = Math.max(0L, Math.min((zzaowVar.zzc * j10) / (this.zzb * 1000000), j11));
        long j12 = zzaowVar.zzd;
        long zzb = zzb(max);
        long j13 = this.zzc;
        zzaev zzaevVar = new zzaev(zzb, (max * j12) + j13);
        if (zzb < j10 && max != j11) {
            long j14 = max + 1;
            return new zzaes(zzaevVar, new zzaev(zzb(j14), j13 + (j12 * j14)));
        }
        return new zzaes(zzaevVar, zzaevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }
}

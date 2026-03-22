package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzada implements zzaeu {
    private final zzadd zza;
    private final long zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;

    public zzada(zzadd zzaddVar, long j10, long j11, long j12, long j13, long j14, long j15) {
        this.zza = zzaddVar;
        this.zzb = j10;
        this.zzc = j12;
        this.zzd = j13;
        this.zze = j14;
        this.zzf = j15;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zzb;
    }

    public final long zzf(long j10) {
        return this.zza.zza(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        zzaev zzaevVar = new zzaev(j10, zzadc.zzf(this.zza.zza(j10), 0L, this.zzc, this.zzd, this.zze, this.zzf));
        return new zzaes(zzaevVar, zzaevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }
}

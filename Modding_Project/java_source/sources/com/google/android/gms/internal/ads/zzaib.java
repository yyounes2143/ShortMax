package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaib extends zzadk implements zzaig {
    private final long zza;
    private final int zzb;
    private final int zzc;
    private final long zzd;

    public zzaib(long j10, long j11, int i10, int i11, boolean z10) {
        super(j10, j11, i10, i11, false);
        this.zza = j11;
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = j10 == -1 ? -1L : j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final int zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final long zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final long zze(long j10) {
        return zzb(j10);
    }

    public final zzaib zzf(long j10) {
        return new zzaib(j10, this.zza, this.zzb, this.zzc, false);
    }
}

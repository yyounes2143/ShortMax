package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzagm extends zzaeh {
    private final long zza;

    public zzagm(zzadw zzadwVar, long j10) {
        super(zzadwVar);
        boolean z10;
        if (zzadwVar.zzf() >= j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        this.zza = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaeh, com.google.android.gms.internal.ads.zzadw
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaeh, com.google.android.gms.internal.ads.zzadw
    public final long zze() {
        return super.zze() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaeh, com.google.android.gms.internal.ads.zzadw
    public final long zzf() {
        return super.zzf() - this.zza;
    }
}

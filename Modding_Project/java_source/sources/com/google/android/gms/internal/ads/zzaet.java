package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzaet implements zzaeu {
    private final long zza;
    private final zzaes zzb;

    public zzaet(long j10, long j11) {
        zzaev zzaevVar;
        this.zza = j10;
        if (j11 == 0) {
            zzaevVar = zzaev.zza;
        } else {
            zzaevVar = new zzaev(0L, j11);
        }
        this.zzb = new zzaes(zzaevVar, zzaevVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return false;
    }
}

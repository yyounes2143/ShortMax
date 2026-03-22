package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzagn extends zzaei {
    final /* synthetic */ zzaeu zza;
    final /* synthetic */ zzago zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzagn(zzago zzagoVar, zzaeu zzaeuVar, zzaeu zzaeuVar2) {
        super(zzaeuVar);
        this.zza = zzaeuVar2;
        Objects.requireNonNull(zzagoVar);
        this.zzb = zzagoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaei, com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        long j11;
        long j12;
        zzaes zzg = this.zza.zzg(j10);
        zzaev zzaevVar = zzg.zza;
        long j13 = zzaevVar.zzc;
        zzago zzagoVar = this.zzb;
        j11 = zzagoVar.zzb;
        zzaev zzaevVar2 = new zzaev(zzaevVar.zzb, j13 + j11);
        zzaev zzaevVar3 = zzg.zzb;
        long j14 = zzaevVar3.zzc;
        j12 = zzagoVar.zzb;
        return new zzaes(zzaevVar2, new zzaev(zzaevVar3.zzb, j14 + j12));
    }
}

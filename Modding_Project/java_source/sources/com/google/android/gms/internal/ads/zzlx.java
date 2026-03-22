package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzlx extends zzuv {
    private final zzbk zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlx(zzly zzlyVar, zzbl zzblVar) {
        super(zzblVar);
        Objects.requireNonNull(zzlyVar);
        this.zzc = new zzbk();
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i10, zzbj zzbjVar, boolean z10) {
        zzbl zzblVar = this.zzb;
        zzbj zzd = zzblVar.zzd(i10, zzbjVar, z10);
        if (zzblVar.zze(zzd.zzc, this.zzc, 0L).zzb()) {
            zzd.zzi(zzbjVar.zza, zzbjVar.zzb, zzbjVar.zzc, zzbjVar.zzd, 0L, zzb.zza, true);
        } else {
            zzd.zzf = true;
        }
        return zzd;
    }
}

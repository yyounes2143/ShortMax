package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzwm extends zzuv {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwm(zzwq zzwqVar, zzbl zzblVar) {
        super(zzblVar);
        Objects.requireNonNull(zzwqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i10, zzbj zzbjVar, boolean z10) {
        this.zzb.zzd(i10, zzbjVar, z10);
        zzbjVar.zzf = true;
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i10, zzbk zzbkVar, long j10) {
        this.zzb.zze(i10, zzbkVar, j10);
        zzbkVar.zzk = true;
        return zzbkVar;
    }
}

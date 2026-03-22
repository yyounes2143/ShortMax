package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgem extends zzgdv {
    final /* synthetic */ zzgeo zza;
    private final zzgct zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgem(zzgeo zzgeoVar, zzgct zzgctVar) {
        Objects.requireNonNull(zzgeoVar);
        this.zza = zzgeoVar;
        this.zzb = zzgctVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final /* bridge */ /* synthetic */ Object zza() throws Exception {
        zzgct zzgctVar = this.zzb;
        com.google.common.util.concurrent.e zza = zzgctVar.zza();
        zzfvp.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgctVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final void zzd(Throwable th2) {
        this.zza.zzd(th2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final /* synthetic */ void zze(Object obj) {
        this.zza.zzn((com.google.common.util.concurrent.e) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final boolean zzg() {
        return this.zza.isDone();
    }
}

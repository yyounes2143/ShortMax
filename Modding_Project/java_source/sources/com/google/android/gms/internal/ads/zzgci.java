package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgci extends zzgck {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgci(com.google.common.util.concurrent.e eVar, zzgcu zzgcuVar) {
        super(eVar, zzgcuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgck
    final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) throws Exception {
        zzgcu zzgcuVar = (zzgcu) obj;
        com.google.common.util.concurrent.e zza = zzgcuVar.zza(obj2);
        zzfvp.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgcuVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgck
    final /* synthetic */ void zzf(Object obj) {
        zzn((com.google.common.util.concurrent.e) obj);
    }
}

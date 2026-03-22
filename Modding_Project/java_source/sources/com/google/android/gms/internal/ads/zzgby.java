package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgby extends zzgca {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgby(com.google.common.util.concurrent.e eVar, Class cls, zzgcu zzgcuVar) {
        super(eVar, cls, zzgcuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgca
    final /* bridge */ /* synthetic */ Object zze(Object obj, Throwable th2) throws Exception {
        zzgcu zzgcuVar = (zzgcu) obj;
        com.google.common.util.concurrent.e zza = zzgcuVar.zza(th2);
        zzfvp.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgcuVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgca
    final /* synthetic */ void zzf(Object obj) {
        zzn((com.google.common.util.concurrent.e) obj);
    }
}

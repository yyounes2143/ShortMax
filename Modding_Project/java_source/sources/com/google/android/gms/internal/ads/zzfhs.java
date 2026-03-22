package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfhs implements zzgdj {
    final /* synthetic */ zzfhu zza;
    final /* synthetic */ zzfhj zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfhs(zzfhu zzfhuVar, zzfhj zzfhjVar) {
        this.zza = zzfhuVar;
        this.zzb = zzfhjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzfhj zzfhjVar = this.zzb;
        zzfhjVar.zzh(th2);
        zzfhjVar.zzg(false);
        this.zza.zza(zzfhjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(Object obj) {
    }
}

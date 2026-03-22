package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfhr implements zzgdj {
    final /* synthetic */ zzfhu zza;
    final /* synthetic */ zzfhj zzb;
    final /* synthetic */ boolean zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfhr(zzfhu zzfhuVar, zzfhj zzfhjVar, boolean z10) {
        this.zza = zzfhuVar;
        this.zzb = zzfhjVar;
        this.zzc = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzfhj zzfhjVar = this.zzb;
        if (zzfhjVar.zzk()) {
            zzfhu zzfhuVar = this.zza;
            zzfhjVar.zzh(th2);
            zzfhjVar.zzg(false);
            zzfhuVar.zza(zzfhjVar);
            if (this.zzc) {
                zzfhuVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(Object obj) {
        zzfhj zzfhjVar = this.zzb;
        zzfhjVar.zzg(true);
        zzfhu zzfhuVar = this.zza;
        zzfhuVar.zza(zzfhjVar);
        if (this.zzc) {
            zzfhuVar.zzh();
        }
    }
}

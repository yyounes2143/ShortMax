package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbjt implements zzgdj {
    final /* synthetic */ zzcfg zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbjt(zzcfg zzcfgVar) {
        this.zza = zzcfgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "DefaultGmsgHandlers.attributionReportingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        com.google.android.gms.ads.internal.util.client.zzv zzvVar;
        String str = (String) obj;
        zzcfg zzcfgVar = this.zza;
        if (zzcfgVar.zzD() != null) {
            zzvVar = zzcfgVar.zzD().zzax;
        } else {
            zzvVar = null;
        }
        new com.google.android.gms.ads.internal.util.zzbw(zzcfgVar.getContext(), zzcfgVar.zzm().afmaVersion, str, null, zzvVar).zzb();
    }
}

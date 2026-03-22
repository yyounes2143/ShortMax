package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfdg implements zzgdj {
    final /* synthetic */ zzcfg zza;
    final /* synthetic */ zzcmq zzb;
    final /* synthetic */ zzfjy zzc;
    final /* synthetic */ zzeca zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfdg(zzcfg zzcfgVar, zzcmq zzcmqVar, zzfjy zzfjyVar, zzeca zzecaVar) {
        this.zza = zzcfgVar;
        this.zzb = zzcmqVar;
        this.zzc = zzfjyVar;
        this.zzd = zzecaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z10;
        int i10;
        zzcmq zzcmqVar;
        String str = (String) obj;
        zzcfg zzcfgVar = this.zza;
        zzfca zzD = zzcfgVar.zzD();
        if (zzD != null && !zzD.zzai) {
            com.google.android.gms.ads.internal.util.client.zzv zzvVar = zzD.zzax;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkx)).booleanValue() && (zzcmqVar = this.zzb) != null && zzcmq.zzj(str)) {
                zzcmqVar.zzi(str, this.zzc, com.google.android.gms.ads.internal.client.zzbb.zze(), zzvVar);
                return;
            } else {
                this.zzc.zzd(str, zzvVar, null, null);
                return;
            }
        }
        zzfcd zzR = zzcfgVar.zzR();
        if (zzR == null) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingClickGmsgHandler");
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        boolean zzA = com.google.android.gms.ads.internal.zzv.zzp().zzA(zzcfgVar.getContext());
        boolean z11 = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgx)).booleanValue() && zzD != null && zzD.zzS) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (zzD != null && zzD.zzad != null) {
            z11 = true;
        }
        if (zzA || z10 || z11) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        this.zzd.zzd(new zzecc(currentTimeMillis, zzR.zzb, str, i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
    }
}

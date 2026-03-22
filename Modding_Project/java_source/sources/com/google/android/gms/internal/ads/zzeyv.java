package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeyv implements zzffd {
    private final zzezr zza;

    public zzeyv(zzezr zzezrVar) {
        this.zza = zzezrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzffd
    public final com.google.common.util.concurrent.e zza(zzffe zzffeVar) {
        zzeyw zzeywVar = (zzeyw) zzffeVar;
        return ((zzeys) this.zza).zzb(zzeywVar.zzb, zzeywVar.zza, null);
    }

    @Override // com.google.android.gms.internal.ads.zzffd
    public final void zzb(zzfes zzfesVar) {
        zzfesVar.zza = ((zzeys) this.zza).zza();
    }
}

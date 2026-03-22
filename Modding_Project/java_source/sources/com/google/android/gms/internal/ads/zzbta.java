package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbta extends zzbhs {
    final /* synthetic */ zzbtd zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbta(zzbtd zzbtdVar, zzbtc zzbtcVar) {
        Objects.requireNonNull(zzbtdVar);
        this.zza = zzbtdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zze(zzbhj zzbhjVar, String str) {
        zzbtd zzbtdVar = this.zza;
        if (zzbtd.zzc(zzbtdVar) == null) {
            return;
        }
        zzbtd.zzc(zzbtdVar).onCustomClick(zzbtd.zze(zzbtdVar, zzbhjVar), str);
    }
}

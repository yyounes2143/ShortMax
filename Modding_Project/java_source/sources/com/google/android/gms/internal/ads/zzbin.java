package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbin extends zzbhs {
    final /* synthetic */ zzbiq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbin(zzbiq zzbiqVar, zzbip zzbipVar) {
        Objects.requireNonNull(zzbiqVar);
        this.zza = zzbiqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbht
    public final void zze(zzbhj zzbhjVar, String str) {
        com.google.android.gms.ads.formats.zzf zzfVar;
        com.google.android.gms.ads.formats.zzf zzfVar2;
        zzbhk zzf;
        zzbiq zzbiqVar = this.zza;
        zzfVar = zzbiqVar.zzb;
        if (zzfVar != null) {
            zzfVar2 = zzbiqVar.zzb;
            zzf = zzbiqVar.zzf(zzbhjVar);
            zzfVar2.zzb(zzf, str);
        }
    }
}

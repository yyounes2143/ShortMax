package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdlm implements zzgdj {
    final /* synthetic */ zzdrr zza;
    final /* synthetic */ zzdln zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdlm(zzdln zzdlnVar, zzdrr zzdrrVar) {
        this.zza = zzdrrVar;
        Objects.requireNonNull(zzdlnVar);
        this.zzb = zzdlnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(Object obj) {
        zzdsd zzdsdVar;
        zzdsdVar = this.zzb.zzd;
        zzdsdVar.zza().putLong(this.zza.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
    }
}

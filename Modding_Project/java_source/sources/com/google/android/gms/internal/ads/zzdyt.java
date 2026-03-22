package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdyt implements zzgdj {
    final /* synthetic */ zzdyu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdyt(zzdyu zzdyuVar) {
        Objects.requireNonNull(zzdyuVar);
        this.zza = zzdyuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcyy zzcyyVar;
        zzcyyVar = this.zza.zzc;
        zzcyyVar.zzdo((zzfcn) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
    }
}

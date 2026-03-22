package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdnp implements zzgdj {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbkf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdnp(zzdny zzdnyVar, String str, zzbkf zzbkfVar) {
        this.zza = str;
        this.zzb = zzbkfVar;
        Objects.requireNonNull(zzdnyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ((zzcfg) obj).zzag(this.zza, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
    }
}

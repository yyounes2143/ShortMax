package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbly implements zzgcu {
    final /* synthetic */ zzblq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbly(zzbmc zzbmcVar, zzblq zzblqVar) {
        this.zza = zzblqVar;
        Objects.requireNonNull(zzbmcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.e zza(Object obj) throws Exception {
        zzcak zzcakVar = new zzcak();
        ((zzblw) obj).zze(this.zza, new zzblx(this, zzcakVar));
        return zzcakVar;
    }
}

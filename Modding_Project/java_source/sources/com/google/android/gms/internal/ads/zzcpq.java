package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcpq implements zzhgr {
    private final zzcoz zza;

    private zzcpq(zzcoz zzcozVar) {
        this.zza = zzcozVar;
    }

    public static zzcpq zzc(zzcoz zzcozVar) {
        return new zzcpq(zzcozVar);
    }

    @Nullable
    public final zzcfg zza() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    @Nullable
    public final /* synthetic */ Object zzb() {
        return this.zza.zzb();
    }
}

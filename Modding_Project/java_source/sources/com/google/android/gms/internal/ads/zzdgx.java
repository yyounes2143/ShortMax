package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdgx implements zzhgr {
    private final zzdgw zza;

    private zzdgx(zzdgw zzdgwVar) {
        this.zza = zzdgwVar;
    }

    public static zzdgx zzc(zzdgw zzdgwVar) {
        return new zzdgx(zzdgwVar);
    }

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzbk zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    @Nullable
    public final /* synthetic */ Object zzb() {
        return this.zza.zza();
    }
}

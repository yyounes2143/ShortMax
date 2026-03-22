package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzchq implements zzhgr {
    private final zzhha zza;

    private zzchq(zzchh zzchhVar, zzhha zzhhaVar) {
        this.zza = zzhhaVar;
    }

    public static zzchq zza(zzchh zzchhVar, zzhha zzhhaVar) {
        return new zzchq(zzchhVar, zzhhaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    @Nullable
    /* renamed from: zzc */
    public final String zzb() {
        return zzfds.zzd(((zzchl) this.zza).zza()).zze();
    }
}

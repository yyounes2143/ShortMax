package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzemo implements zzhgr {
    private final zzhha zza;
    private final zzhha zzb;

    private zzemo(zzhha zzhhaVar, zzhha zzhhaVar2, zzhha zzhhaVar3) {
        this.zza = zzhhaVar;
        this.zzb = zzhhaVar3;
    }

    public static zzemo zza(zzhha zzhhaVar, zzhha zzhhaVar2, zzhha zzhhaVar3) {
        return new zzemo(zzhhaVar, zzhhaVar2, zzhhaVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzemm((com.google.common.util.concurrent.e) this.zza.zzb(), zzffu.zzc(), (ScheduledExecutorService) this.zzb.zzb());
    }
}

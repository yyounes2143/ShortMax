package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeso implements zzeuc {
    private final zzeuc zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzeso(zzeuc zzeucVar, long j10, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzeucVar;
        this.zzb = j10;
        this.zzc = scheduledExecutorService;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzc(zzeso zzesoVar, Throwable th2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcz)).booleanValue()) {
            zzeuc zzeucVar = zzesoVar.zza;
            zzbzs zzp = com.google.android.gms.ads.internal.zzv.zzp();
            int zza = zzeucVar.zza();
            zzp.zzw(th2, "OptionalSignalTimeout:" + zza);
        }
        return zzgdn.zzh(null);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        com.google.common.util.concurrent.e zzb = this.zza.zzb();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcA)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j10 = this.zzb;
        if (j10 > 0) {
            zzb = zzgdn.zzo(zzb, j10, timeUnit, this.zzc);
        }
        return zzgdn.zzf(zzb, Throwable.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzesn
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzeso.zzc(zzeso.this, (Throwable) obj);
            }
        }, zzcaf.zzg);
    }
}

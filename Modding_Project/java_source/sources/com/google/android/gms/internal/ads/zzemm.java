package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzemm implements zzeuc {
    private final com.google.common.util.concurrent.e zza;
    private final Executor zzb;
    private final ScheduledExecutorService zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzemm(com.google.common.util.concurrent.e eVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = eVar;
        this.zzb = executor;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        zzgcu zzgcuVar = new zzgcu() { // from class: com.google.android.gms.internal.ads.zzemk
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzgdn.zzh(new zzemn((String) obj));
            }
        };
        com.google.common.util.concurrent.e eVar = this.zza;
        Executor executor = this.zzb;
        com.google.common.util.concurrent.e zzn = zzgdn.zzn(eVar, zzgcuVar, executor);
        zzbcv zzbcvVar = zzbde.zzmS;
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).intValue() > 0) {
            zzn = zzgdn.zzo(zzn, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).intValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgdn.zzf(zzn, Throwable.class, new zzgcu() { // from class: com.google.android.gms.internal.ads.zzeml
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                if (((Throwable) obj) instanceof TimeoutException) {
                    return zzgdn.zzh(new zzemn(Integer.toString(17)));
                }
                return zzgdn.zzh(new zzemn(null));
            }
        }, executor);
    }
}

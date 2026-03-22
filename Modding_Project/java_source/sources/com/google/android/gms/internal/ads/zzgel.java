package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgel extends zzgdd {
    private com.google.common.util.concurrent.e zza;
    private ScheduledFuture zzb;

    private zzgel(com.google.common.util.concurrent.e eVar) {
        eVar.getClass();
        this.zza = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.common.util.concurrent.e zzf(com.google.common.util.concurrent.e eVar, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgel zzgelVar = new zzgel(eVar);
        zzgei zzgeiVar = new zzgei(zzgelVar);
        zzgelVar.zzb = scheduledExecutorService.schedule(zzgeiVar, j10, timeUnit);
        eVar.addListener(zzgeiVar, zzgdb.INSTANCE);
        return zzgelVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgcb
    public final String zza() {
        com.google.common.util.concurrent.e eVar = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (eVar != null) {
            String str = "inputFuture=[" + eVar.toString() + "]";
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    return str + ", remaining delay=[" + delay + " ms]";
                }
                return str;
            }
            return str;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    protected final void zzb() {
        zzl(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}

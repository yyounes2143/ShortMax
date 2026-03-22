package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzcj;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzde extends zzcq {
    private zzcz zzd;
    private ScheduledFuture zze;

    private zzde(zzcz zzczVar) {
        this.zzd = zzczVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzcz zzs(zzcz zzczVar, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzde zzdeVar = new zzde(zzczVar);
        zzdb zzdbVar = new zzdb(zzdeVar);
        zzdeVar.zze = scheduledExecutorService.schedule(zzdbVar, 28500L, timeUnit);
        zzczVar.zzb(zzdbVar, zzcp.INSTANCE);
        return zzdeVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcj
    protected final String zzd() {
        zzcz zzczVar = this.zzd;
        ScheduledFuture scheduledFuture = this.zze;
        if (zzczVar != null) {
            String str = "inputFuture=[" + zzczVar.toString() + "]";
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

    @Override // com.google.android.gms.internal.play_billing.zzcj
    protected final void zzg() {
        boolean z10;
        zzcz zzczVar = this.zzd;
        boolean z11 = this.valueField instanceof zzcj.zza;
        boolean z12 = true;
        if (zzczVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z11 & z10) {
            Object obj = this.valueField;
            if (!(obj instanceof zzcj.zza) || !((zzcj.zza) obj).zzc) {
                z12 = false;
            }
            zzczVar.cancel(z12);
        }
        ScheduledFuture scheduledFuture = this.zze;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zzd = null;
        this.zze = null;
    }
}

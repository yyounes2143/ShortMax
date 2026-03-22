package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzct implements Runnable {
    final Future zza;
    final zzcs zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzct(Future future, zzcs zzcsVar) {
        this.zza = future;
        this.zzb = zzcsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Throwable zza;
        Future future = this.zza;
        if ((future instanceof zzdf) && (zza = zzdg.zza((zzdf) future)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            if (future.isDone()) {
                boolean z10 = false;
                while (true) {
                    try {
                        obj = future.get();
                        break;
                    } catch (InterruptedException unused) {
                        z10 = true;
                    } catch (Throwable th2) {
                        if (z10) {
                            Thread.currentThread().interrupt();
                        }
                        throw th2;
                    }
                }
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                this.zzb.zzb(obj);
                return;
            }
            throw new IllegalStateException(zzbj.zza("Future was expected to be done: %s", future));
        } catch (ExecutionException e10) {
            this.zzb.zza(e10.getCause());
        } catch (Throwable th3) {
            this.zzb.zza(th3);
        }
    }

    public final String toString() {
        zzbc zza = zzbe.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}

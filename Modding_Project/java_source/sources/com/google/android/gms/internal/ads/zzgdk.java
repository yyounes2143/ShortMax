package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgdk implements Runnable {
    final Future zza;
    final zzgdj zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdk(Future future, zzgdj zzgdjVar) {
        this.zza = future;
        this.zzb = zzgdjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Future future = this.zza;
        if ((future instanceof zzger) && (zza = zzges.zza((zzger) future)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzgdn.zzp(future));
        } catch (ExecutionException e10) {
            this.zzb.zza(e10.getCause());
        } catch (Throwable th2) {
            this.zzb.zza(th2);
        }
    }

    public final String toString() {
        zzfvj zza = zzfvl.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgef {
    public static zzgdy zza(ExecutorService executorService) {
        zzgdy zzgebVar;
        if (executorService instanceof zzgdy) {
            return (zzgdy) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            zzgebVar = new zzgee((ScheduledExecutorService) executorService);
        } else {
            zzgebVar = new zzgeb(executorService);
        }
        return zzgebVar;
    }

    public static zzgdz zzb(ScheduledExecutorService scheduledExecutorService) {
        return new zzgee(scheduledExecutorService);
    }

    public static Executor zzc() {
        return zzgdb.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor zzd(final Executor executor, final zzgcb zzgcbVar) {
        executor.getClass();
        if (executor == zzgdb.INSTANCE) {
            return executor;
        }
        return new Executor() { // from class: com.google.android.gms.internal.ads.zzgea
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                zzgef.zze(executor, zzgcbVar, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zze(Executor executor, zzgcb zzgcbVar, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (RejectedExecutionException e10) {
            zzgcbVar.zzd(e10);
        }
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgee extends zzgeb implements AutoCloseable, zzgdz {
    final ScheduledExecutorService zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgee(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzgch, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        if (this != ForkJoinPool.commonPool() && !isTerminated()) {
            shutdown();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    z10 = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z11) {
                        shutdownNow();
                    }
                    z11 = true;
                }
            }
            if (z11) {
                Thread.currentThread().interrupt();
            }
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzgeo zze = zzgeo.zze(runnable, null);
        return new zzgec(zze, scheduledExecutorService.schedule(zze, j10, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        zzged zzgedVar = new zzged(runnable);
        return new zzgec(zzgedVar, this.zza.scheduleAtFixedRate(zzgedVar, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        zzged zzgedVar = new zzged(runnable);
        return new zzgec(zzgedVar, this.zza.scheduleWithFixedDelay(zzgedVar, j10, j11, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: zzc */
    public final zzgdx schedule(Callable callable, long j10, TimeUnit timeUnit) {
        zzgeo zzgeoVar = new zzgeo(callable);
        return new zzgec(zzgeoVar, this.zza.schedule(zzgeoVar, j10, timeUnit));
    }
}

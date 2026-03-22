package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgch extends AbstractExecutorService implements AutoCloseable, zzgdy {
    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() {
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

    @Override // java.util.concurrent.AbstractExecutorService
    protected final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return zzgeo.zze(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable) {
        return (com.google.common.util.concurrent.e) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzgdy
    public final com.google.common.util.concurrent.e zza(Runnable runnable) {
        return (com.google.common.util.concurrent.e) super.submit(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzgdy
    public final com.google.common.util.concurrent.e zzb(Callable callable) {
        return (com.google.common.util.concurrent.e) super.submit(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final RunnableFuture newTaskFor(Callable callable) {
        return new zzgeo(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (com.google.common.util.concurrent.e) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Callable callable) {
        return (com.google.common.util.concurrent.e) super.submit(callable);
    }
}

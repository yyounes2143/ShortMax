package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfgg implements com.google.common.util.concurrent.e {
    private final Object zza;
    private final String zzb;
    private final com.google.common.util.concurrent.e zzc;

    @VisibleForTesting(otherwise = 3)
    public zzfgg(Object obj, String str, com.google.common.util.concurrent.e eVar) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = eVar;
    }

    @Override // com.google.common.util.concurrent.e
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzc.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return this.zzc.cancel(z10);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return this.zzc.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.zzc.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.zzc.isDone();
    }

    public final String toString() {
        int identityHashCode = System.identityHashCode(this);
        return this.zzb + "@" + identityHashCode;
    }

    public final Object zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.zzc.get(j10, timeUnit);
    }
}

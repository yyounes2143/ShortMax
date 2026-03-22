package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgdr implements com.google.common.util.concurrent.e {
    static final com.google.common.util.concurrent.e zza = new zzgdr(null);
    private static final zzgdw zzb = new zzgdw(zzgdr.class);
    private final Object zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdr(Object obj) {
        this.zzc = obj;
    }

    @Override // com.google.common.util.concurrent.e
    public final void addListener(Runnable runnable, Executor executor) {
        zzfvp.zzc(runnable, "Runnable was null.");
        zzfvp.zzc(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e10) {
            Logger zza2 = zzb.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            zza2.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", "RuntimeException while executing runnable " + valueOf + " with executor " + valueOf2, (Throwable) e10);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.zzc;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        Object obj = this.zzc;
        String obj2 = super.toString();
        String valueOf = String.valueOf(obj);
        return obj2 + "[status=SUCCESS, result=[" + valueOf + "]]";
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws ExecutionException {
        timeUnit.getClass();
        return this.zzc;
    }
}

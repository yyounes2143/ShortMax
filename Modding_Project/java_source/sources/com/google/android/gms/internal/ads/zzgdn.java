package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgdn extends zzgdp {
    public static zzgdl zza(Iterable iterable) {
        return new zzgdl(false, zzfyq.zzk(iterable), null);
    }

    public static zzgdl zzb(Iterable iterable) {
        return new zzgdl(true, zzfyq.zzk(iterable), null);
    }

    @SafeVarargs
    public static zzgdl zzc(com.google.common.util.concurrent.e... eVarArr) {
        return new zzgdl(true, zzfyq.zzm(eVarArr), null);
    }

    public static com.google.common.util.concurrent.e zzd(Iterable iterable) {
        return new zzgcv(zzfyq.zzk(iterable), true);
    }

    public static com.google.common.util.concurrent.e zze(com.google.common.util.concurrent.e eVar, Class cls, zzfve zzfveVar, Executor executor) {
        int i10 = zzgca.zzd;
        zzgbz zzgbzVar = new zzgbz(eVar, cls, zzfveVar);
        eVar.addListener(zzgbzVar, zzgef.zzd(executor, zzgbzVar));
        return zzgbzVar;
    }

    public static com.google.common.util.concurrent.e zzf(com.google.common.util.concurrent.e eVar, Class cls, zzgcu zzgcuVar, Executor executor) {
        int i10 = zzgca.zzd;
        zzgby zzgbyVar = new zzgby(eVar, cls, zzgcuVar);
        eVar.addListener(zzgbyVar, zzgef.zzd(executor, zzgbyVar));
        return zzgbyVar;
    }

    public static com.google.common.util.concurrent.e zzg(Throwable th2) {
        th2.getClass();
        return new zzgdq(th2);
    }

    public static com.google.common.util.concurrent.e zzh(Object obj) {
        if (obj == null) {
            return zzgdr.zza;
        }
        return new zzgdr(obj);
    }

    public static com.google.common.util.concurrent.e zzi() {
        return zzgdr.zza;
    }

    public static com.google.common.util.concurrent.e zzj(Callable callable, Executor executor) {
        zzgeo zzgeoVar = new zzgeo(callable);
        executor.execute(zzgeoVar);
        return zzgeoVar;
    }

    public static com.google.common.util.concurrent.e zzk(zzgct zzgctVar, Executor executor) {
        zzgeo zzgeoVar = new zzgeo(zzgctVar);
        executor.execute(zzgeoVar);
        return zzgeoVar;
    }

    @SafeVarargs
    public static com.google.common.util.concurrent.e zzl(com.google.common.util.concurrent.e... eVarArr) {
        return new zzgcv(zzfyq.zzm(eVarArr), false);
    }

    public static com.google.common.util.concurrent.e zzm(com.google.common.util.concurrent.e eVar, zzfve zzfveVar, Executor executor) {
        int i10 = zzgck.zzc;
        zzgcj zzgcjVar = new zzgcj(eVar, zzfveVar);
        eVar.addListener(zzgcjVar, zzgef.zzd(executor, zzgcjVar));
        return zzgcjVar;
    }

    public static com.google.common.util.concurrent.e zzn(com.google.common.util.concurrent.e eVar, zzgcu zzgcuVar, Executor executor) {
        int i10 = zzgck.zzc;
        zzgci zzgciVar = new zzgci(eVar, zzgcuVar);
        eVar.addListener(zzgciVar, zzgef.zzd(executor, zzgciVar));
        return zzgciVar;
    }

    public static com.google.common.util.concurrent.e zzo(com.google.common.util.concurrent.e eVar, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (eVar.isDone()) {
            return eVar;
        }
        return zzgel.zzf(eVar, j10, timeUnit, scheduledExecutorService);
    }

    public static Object zzp(Future future) throws ExecutionException {
        if (future.isDone()) {
            return zzgeq.zza(future);
        }
        throw new IllegalStateException(zzfwg.zzb("Future was expected to be done: %s", future));
    }

    public static Object zzq(Future future) {
        try {
            return zzgeq.zza(future);
        } catch (ExecutionException e10) {
            if (e10.getCause() instanceof Error) {
                throw new zzgdc((Error) e10.getCause());
            }
            throw new zzgep(e10.getCause());
        }
    }

    public static void zzr(com.google.common.util.concurrent.e eVar, zzgdj zzgdjVar, Executor executor) {
        zzgdjVar.getClass();
        eVar.addListener(new zzgdk(eVar, zzgdjVar), executor);
    }
}

package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhx extends FutureTask implements Comparable {
    final boolean zza;
    final /* synthetic */ zzhz zzb;
    private final long zzc;
    private final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhx(zzhz zzhzVar, Runnable runnable, boolean z10, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        Objects.requireNonNull(zzhzVar);
        this.zzb = zzhzVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzhz.zzj;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = str;
        this.zza = z10;
        if (andIncrement == Long.MAX_VALUE) {
            zzhzVar.zzu.zzaV().zzb().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(@NonNull Object obj) {
        zzhx zzhxVar = (zzhx) obj;
        boolean z10 = zzhxVar.zza;
        boolean z11 = this.zza;
        if (z11 != z10) {
            if (z11) {
                return -1;
            }
        } else {
            long j10 = this.zzc;
            int i10 = (j10 > zzhxVar.zzc ? 1 : (j10 == zzhxVar.zzc ? 0 : -1));
            if (i10 < 0) {
                return -1;
            }
            if (i10 <= 0) {
                this.zzb.zzu.zzaV().zzc().zzb("Two tasks share the same index. index", Long.valueOf(j10));
                return 0;
            }
        }
        return 1;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th2) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.zzb.zzu.zzaV().zzb().zzb(this.zzd, th2);
        if ((th2 instanceof zzhv) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th2);
        }
        super.setException(th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhx(zzhz zzhzVar, Callable callable, boolean z10, String str) {
        super(callable);
        AtomicLong atomicLong;
        Objects.requireNonNull(zzhzVar);
        this.zzb = zzhzVar;
        Preconditions.checkNotNull("Task exception on worker thread");
        atomicLong = zzhz.zzj;
        long andIncrement = atomicLong.getAndIncrement();
        this.zzc = andIncrement;
        this.zzd = "Task exception on worker thread";
        this.zza = z10;
        if (andIncrement == Long.MAX_VALUE) {
            zzhzVar.zzu.zzaV().zzb().zza("Tasks index overflow");
        }
    }
}

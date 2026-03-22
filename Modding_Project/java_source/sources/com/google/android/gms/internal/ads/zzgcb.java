package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgcb<V> extends zzgcc<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public final class zza {
        static final zza zza;
        static final zza zzb;
        final boolean zzc;
        final Throwable zzd;

        static {
            if (zzgcc.zzg) {
                zzb = null;
                zza = null;
                return;
            }
            zzb = new zza(false, null);
            zza = new zza(true, null);
        }

        zza(boolean z10, Throwable th2) {
            this.zzc = z10;
            this.zzd = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public final class zzb<V> implements Runnable {
        final zzgcb<V> zza;
        final com.google.common.util.concurrent.e<? extends V> zzb;

        zzb(zzgcb zzgcbVar, com.google.common.util.concurrent.e eVar) {
            this.zza = zzgcbVar;
            this.zzb = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.zza.valueField == this) {
                if (zzgcc.zzv(this.zza, this, zzgcb.zze(this.zzb))) {
                    zzgcb.zzx(this.zza, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.ads.zzgcb.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        });
        static final zzc zzb = new zzc(new Throwable("Failure.exception is unexpectedly null.") { // from class: com.google.android.gms.internal.ads.zzgcb.zzc.2
            {
                super("Failure.exception is unexpectedly null.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzc;

        zzc(Throwable th2) {
            th2.getClass();
            this.zzc = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public final class zzd {
        static final zzd zza = new zzd();
        zzd next;
        final Runnable zzb;
        final Executor zzc;

        zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public interface zze<V> extends com.google.common.util.concurrent.e<V> {
        @Override // com.google.common.util.concurrent.e
        /* synthetic */ void addListener(Runnable runnable, Executor executor);
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    abstract class zzf<V> extends zzgcb<V> implements zze<V> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object zze(com.google.common.util.concurrent.e eVar) {
        Throwable zzi;
        if (eVar instanceof zze) {
            Object obj = ((zzgcb) eVar).valueField;
            if (obj instanceof zza) {
                zza zzaVar = (zza) obj;
                if (zzaVar.zzc) {
                    Throwable th2 = zzaVar.zzd;
                    obj = th2 != null ? new zza(false, th2) : zza.zzb;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        } else if ((eVar instanceof zzger) && (zzi = ((zzger) eVar).zzi()) != null) {
            return new zzc(zzi);
        } else {
            boolean isCancelled = eVar.isCancelled();
            if ((!zzgcc.zzg) & isCancelled) {
                zza zzaVar2 = zza.zzb;
                Objects.requireNonNull(zzaVar2);
                return zzaVar2;
            }
            try {
                Object zzf2 = zzf(eVar);
                if (isCancelled) {
                    String valueOf = String.valueOf(eVar);
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + valueOf));
                } else if (zzf2 == null) {
                    return zzgcc.zze;
                } else {
                    return zzf2;
                }
            } catch (Error e10) {
                e = e10;
                return new zzc(e);
            } catch (CancellationException e11) {
                if (!isCancelled) {
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(eVar)), e11));
                }
                return new zza(false, e11);
            } catch (ExecutionException e12) {
                if (isCancelled) {
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(eVar)), e12));
                }
                return new zzc(e12.getCause());
            } catch (Exception e13) {
                e = e13;
                return new zzc(e);
            }
        }
    }

    private static Object zzf(Future future) throws ExecutionException {
        Object obj;
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
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzh(Object obj) throws ExecutionException {
        if (!(obj instanceof zza)) {
            if (obj instanceof zzc) {
                Throwable th2 = ((zzc) obj).zzc;
                if (th2 == null) {
                    zzgcc.zzf.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "getDoneValue", "Failure.exception is unexpectedly null.");
                    throw new ExecutionException(zzc.zzb.zzc);
                }
                throw new ExecutionException(th2);
            } else if (obj == zzgcc.zze) {
                return null;
            } else {
                return obj;
            }
        }
        Throwable th3 = ((zza) obj).zzd;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th3);
        throw cancellationException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzm(Object obj) {
        if (!(obj instanceof zzb)) {
            return true;
        }
        return false;
    }

    private final void zzw(StringBuilder sb2) {
        try {
            Object zzf2 = zzf(this);
            sb2.append("SUCCESS, result=[");
            if (zzf2 == null) {
                sb2.append("null");
            } else if (zzf2 == this) {
                sb2.append("this future");
            } else {
                sb2.append(zzf2.getClass().getName());
                sb2.append("@");
                sb2.append(Integer.toHexString(System.identityHashCode(zzf2)));
            }
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (ExecutionException e10) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e10.getCause());
            sb2.append("]");
        } catch (Exception e11) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e11.getClass());
            sb2.append(" thrown from get()]");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzx(zzgcb zzgcbVar, boolean z10) {
        zzd zzdVar = null;
        while (true) {
            zzgcbVar.zzt();
            if (z10) {
                zzgcbVar.zzk();
            }
            zzgcbVar.zzb();
            zzd zzdVar2 = zzdVar;
            zzd zzp = zzgcbVar.zzp(zzd.zza);
            zzd zzdVar3 = zzdVar2;
            while (zzp != null) {
                zzd zzdVar4 = zzp.next;
                zzp.next = zzdVar3;
                zzdVar3 = zzp;
                zzp = zzdVar4;
            }
            while (zzdVar3 != null) {
                Runnable runnable = zzdVar3.zzb;
                zzdVar = zzdVar3.next;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzb) {
                    zzb zzbVar = (zzb) runnable2;
                    zzgcbVar = zzbVar.zza;
                    if (zzgcbVar.valueField == zzbVar && zzgcc.zzv(zzgcbVar, zzbVar, zze(zzbVar.zzb))) {
                        break;
                    }
                } else {
                    Executor executor = zzdVar3.zzc;
                    Objects.requireNonNull(executor);
                    zzy(runnable2, executor);
                }
                zzdVar3 = zzdVar;
            }
            return;
            z10 = false;
        }
    }

    private static void zzy(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e10) {
            Logger zza2 = zzgcc.zzf.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            zza2.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + valueOf + " with executor " + valueOf2, (Throwable) e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcc, com.google.common.util.concurrent.e
    public void addListener(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzfvp.zzc(runnable, "Runnable was null.");
        zzfvp.zzc(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listenersField) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (!zzu(zzdVar, zzdVar2)) {
                    zzdVar = this.listenersField;
                } else {
                    return;
                }
            } while (zzdVar != zzd.zza);
            zzy(runnable, executor);
        }
        zzy(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        boolean z11;
        zza zzaVar;
        boolean z12;
        Object obj = this.valueField;
        boolean z13 = obj instanceof zzb;
        if (obj == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!(z13 | z11)) {
            return false;
        }
        if (zzgcc.zzg) {
            zzaVar = new zza(z10, new CancellationException("Future.cancel() was called."));
        } else {
            if (z10) {
                zzaVar = zza.zza;
            } else {
                zzaVar = zza.zzb;
            }
            Objects.requireNonNull(zzaVar);
        }
        zzgcb<V> zzgcbVar = this;
        boolean z14 = false;
        while (true) {
            if (zzgcc.zzv(zzgcbVar, obj, zzaVar)) {
                zzx(zzgcbVar, z10);
                if (!(obj instanceof zzb)) {
                    break;
                }
                com.google.common.util.concurrent.e<? extends V> eVar = ((zzb) obj).zzb;
                if (eVar instanceof zze) {
                    zzgcbVar = (zzgcb) eVar;
                    obj = zzgcbVar.valueField;
                    if (obj == null) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (!z12 && !(obj instanceof zzb)) {
                        break;
                    }
                    z14 = true;
                } else {
                    eVar.cancel(z10);
                    break;
                }
            } else {
                obj = zzgcbVar.valueField;
                if (zzm(obj)) {
                    return z14;
                }
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException, ExecutionException {
        return zzq();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.valueField instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z10;
        Object obj = this.valueField;
        boolean zzm = zzm(obj);
        if (obj != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 & zzm;
    }

    public String toString() {
        String concat;
        StringBuilder sb2 = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb2.append(getClass().getSimpleName());
        } else {
            sb2.append(getClass().getName());
        }
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            zzw(sb2);
        } else {
            int length = sb2.length();
            sb2.append("PENDING");
            Object obj = this.valueField;
            if (obj instanceof zzb) {
                sb2.append(", setFuture=[");
                com.google.common.util.concurrent.e<? extends V> eVar = ((zzb) obj).zzb;
                try {
                    if (eVar == this) {
                        sb2.append("this future");
                    } else {
                        sb2.append(eVar);
                    }
                } catch (Throwable th2) {
                    zzgeg.zzb(th2);
                    sb2.append("Exception thrown from implementation: ");
                    sb2.append(th2.getClass());
                }
                sb2.append("]");
            } else {
                try {
                    concat = zzfwg.zza(zza());
                } catch (Throwable th3) {
                    zzgeg.zzb(th3);
                    concat = "Exception thrown from implementation: ".concat(String.valueOf(th3.getClass()));
                }
                if (concat != null) {
                    sb2.append(", info=[");
                    sb2.append(concat);
                    sb2.append("]");
                }
            }
            if (isDone()) {
                sb2.delete(length, sb2.length());
                zzw(sb2);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String zza() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            return "remaining delay=[" + delay + " ms]";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzc(Object obj) {
        if (obj == null) {
            obj = zzgcc.zze;
        }
        if (!zzgcc.zzv(this, null, obj)) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzd(Throwable th2) {
        th2.getClass();
        if (!zzgcc.zzv(this, null, new zzc(th2))) {
            return false;
        }
        zzx(this, false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzger
    public final Throwable zzi() {
        if (this instanceof zze) {
            Object obj = this.valueField;
            if (obj instanceof zzc) {
                return ((zzc) obj).zzc;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzl(Future future) {
        boolean z10;
        if (future != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 & isCancelled()) {
            future.cancel(zzo());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzn(com.google.common.util.concurrent.e eVar) {
        zzc zzcVar;
        eVar.getClass();
        Object obj = this.valueField;
        if (obj == null) {
            if (eVar.isDone()) {
                if (!zzgcc.zzv(this, null, zze(eVar))) {
                    return false;
                }
                zzx(this, false);
                return true;
            }
            zzb zzbVar = new zzb(this, eVar);
            if (zzgcc.zzv(this, null, zzbVar)) {
                try {
                    eVar.addListener(zzbVar, zzgdb.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        zzcVar = new zzc(th2);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zzgcc.zzv(this, zzbVar, zzcVar);
                }
                return true;
            }
            obj = this.valueField;
        }
        if (obj instanceof zza) {
            eVar.cancel(((zza) obj).zzc);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzo() {
        Object obj = this.valueField;
        if ((obj instanceof zza) && ((zza) obj).zzc) {
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        return zzr(j10, timeUnit);
    }

    protected void zzb() {
    }

    protected void zzk() {
    }
}

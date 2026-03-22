package com.google.android.gms.internal.play_billing;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public abstract class zzcj<V> extends zzck<V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes5.dex */
    public final class zza {
        static final zza zza;
        static final zza zzb;
        final boolean zzc;
        final Throwable zzd;

        static {
            if (zzck.zzc) {
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
    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes5.dex */
    public final class zzb<V> implements Runnable {
        final zzcj<V> zza;
        final zzcz<? extends V> zzb;

        zzb(zzcj zzcjVar, zzcz zzczVar) {
            this.zza = zzcjVar;
            this.zzb = zzczVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.zza.valueField == this) {
                if (zzck.zzq(this.zza, this, zzcj.zzr(this.zzb))) {
                    zzcj.zzu(this.zza, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes5.dex */
    public final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.play_billing.zzcj.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        });
        static final zzc zzb = new zzc(new Throwable("Failure.exception is unexpectedly null.") { // from class: com.google.android.gms.internal.play_billing.zzcj.zzc.2
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
    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes5.dex */
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
    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes5.dex */
    public interface zze<V> extends zzcz<V> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzc(Object obj) throws ExecutionException {
        if (!(obj instanceof zza)) {
            if (obj instanceof zzc) {
                Throwable th2 = ((zzc) obj).zzc;
                if (th2 == null) {
                    zzck.zzb.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "getDoneValue", "Failure.exception is unexpectedly null.");
                    throw new ExecutionException(zzc.zzb.zzc);
                }
                throw new ExecutionException(th2);
            } else if (obj == zzck.zza) {
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
    public static boolean zzh(Object obj) {
        if (!(obj instanceof zzb)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object zzr(zzcz zzczVar) {
        Throwable zze2;
        if (zzczVar instanceof zze) {
            Object obj = ((zzcj) zzczVar).valueField;
            if (obj instanceof zza) {
                zza zzaVar = (zza) obj;
                if (zzaVar.zzc) {
                    Throwable th2 = zzaVar.zzd;
                    obj = th2 != null ? new zza(false, th2) : zza.zzb;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        } else if ((zzczVar instanceof zzdf) && (zze2 = ((zzdf) zzczVar).zze()) != null) {
            return new zzc(zze2);
        } else {
            boolean isCancelled = zzczVar.isCancelled();
            if ((!zzck.zzc) & isCancelled) {
                zza zzaVar2 = zza.zzb;
                Objects.requireNonNull(zzaVar2);
                return zzaVar2;
            }
            try {
                Object zzs = zzs(zzczVar);
                if (isCancelled) {
                    String valueOf = String.valueOf(zzczVar);
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + valueOf));
                } else if (zzs == null) {
                    return zzck.zza;
                } else {
                    return zzs;
                }
            } catch (Error e10) {
                e = e10;
                return new zzc(e);
            } catch (CancellationException e11) {
                if (!isCancelled) {
                    return new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(zzczVar)), e11));
                }
                return new zza(false, e11);
            } catch (ExecutionException e12) {
                if (isCancelled) {
                    return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(zzczVar)), e12));
                }
                return new zzc(e12.getCause());
            } catch (Exception e13) {
                e = e13;
                return new zzc(e);
            }
        }
    }

    private static Object zzs(Future future) throws ExecutionException {
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

    private final void zzt(StringBuilder sb2) {
        try {
            Object zzs = zzs(this);
            sb2.append("SUCCESS, result=[");
            if (zzs == null) {
                sb2.append("null");
            } else if (zzs == this) {
                sb2.append("this future");
            } else {
                sb2.append(zzs.getClass().getName());
                sb2.append("@");
                sb2.append(Integer.toHexString(System.identityHashCode(zzs)));
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
    public static void zzu(zzcj zzcjVar, boolean z10) {
        zzd zzdVar;
        zzd zzdVar2 = null;
        while (true) {
            zzcjVar.zzo();
            zzcjVar.zzg();
            zzd zzdVar3 = zzdVar2;
            zzd zzk = zzcjVar.zzk(zzd.zza);
            zzd zzdVar4 = zzdVar3;
            while (zzk != null) {
                zzd zzdVar5 = zzk.next;
                zzk.next = zzdVar4;
                zzdVar4 = zzk;
                zzk = zzdVar5;
            }
            while (zzdVar4 != null) {
                Runnable runnable = zzdVar4.zzb;
                zzdVar = zzdVar4.next;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof zzb) {
                    zzb zzbVar = (zzb) runnable2;
                    zzcjVar = zzbVar.zza;
                    if (zzcjVar.valueField == zzbVar && zzck.zzq(zzcjVar, zzbVar, zzr(zzbVar.zzb))) {
                        break;
                    }
                } else {
                    Executor executor = zzdVar4.zzc;
                    Objects.requireNonNull(executor);
                    zzv(runnable2, executor);
                }
                zzdVar4 = zzdVar;
            }
            return;
            zzdVar2 = zzdVar;
        }
    }

    private static void zzv(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e10) {
            Logger zza2 = zzck.zzb.zza();
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            zza2.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + valueOf + " with executor " + valueOf2, (Throwable) e10);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
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
        if (zzck.zzc) {
            zzaVar = new zza(z10, new CancellationException("Future.cancel() was called."));
        } else {
            if (z10) {
                zzaVar = zza.zza;
            } else {
                zzaVar = zza.zzb;
            }
            Objects.requireNonNull(zzaVar);
        }
        zzcj<V> zzcjVar = this;
        boolean z14 = false;
        while (true) {
            if (zzck.zzq(zzcjVar, obj, zzaVar)) {
                zzu(zzcjVar, z10);
                if (!(obj instanceof zzb)) {
                    break;
                }
                zzcz<? extends V> zzczVar = ((zzb) obj).zzb;
                if (zzczVar instanceof zze) {
                    zzcjVar = (zzcj) zzczVar;
                    obj = zzcjVar.valueField;
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
                    zzczVar.cancel(z10);
                    break;
                }
            } else {
                obj = zzcjVar.valueField;
                if (zzh(obj)) {
                    return z14;
                }
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        return zzl();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.valueField instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z10;
        Object obj = this.valueField;
        boolean zzh = zzh(obj);
        if (obj != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 & zzh;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009f, code lost:
        if (r3.isEmpty() != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            java.lang.Object r1 = r6.valueField
            boolean r1 = r1 instanceof com.google.android.gms.internal.play_billing.zzcj.zza
            java.lang.String r2 = "]"
            if (r1 == 0) goto L50
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto Ld0
        L50:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L5b
            r6.zzt(r0)
            goto Ld0
        L5b:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.Object r3 = r6.valueField
            boolean r4 = r3 instanceof com.google.android.gms.internal.play_billing.zzcj.zzb
            java.lang.String r5 = "Exception thrown from implementation: "
            if (r4 == 0) goto L94
            java.lang.String r4 = ", setFuture=["
            r0.append(r4)
            com.google.android.gms.internal.play_billing.zzcj$zzb r3 = (com.google.android.gms.internal.play_billing.zzcj.zzb) r3
            com.google.android.gms.internal.play_billing.zzcz<? extends V> r3 = r3.zzb
            if (r3 != r6) goto L7f
            java.lang.String r3 = "this future"
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L90
        L7d:
            r3 = move-exception
            goto L83
        L7f:
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L90
        L83:
            com.google.android.gms.internal.play_billing.zzda.zza(r3)
            r0.append(r5)
            java.lang.Class r3 = r3.getClass()
            r0.append(r3)
        L90:
            r0.append(r2)
            goto Lc0
        L94:
            java.lang.String r3 = r6.zzd()     // Catch: java.lang.Throwable -> La3
            r4 = 0
            if (r3 == 0) goto La1
            boolean r5 = r3.isEmpty()     // Catch: java.lang.Throwable -> La3
            if (r5 == 0) goto Lb3
        La1:
            r3 = r4
            goto Lb3
        La3:
            r3 = move-exception
            com.google.android.gms.internal.play_billing.zzda.zza(r3)
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r3 = r5.concat(r3)
        Lb3:
            if (r3 == 0) goto Lc0
            java.lang.String r4 = ", info=["
            r0.append(r4)
            r0.append(r3)
            r0.append(r2)
        Lc0:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto Ld0
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.zzt(r0)
        Ld0:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzcj.toString():java.lang.String");
    }

    @Override // com.google.android.gms.internal.play_billing.zzcz
    public final void zzb(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzbg.zzc(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listenersField) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (!zzp(zzdVar, zzdVar2)) {
                    zzdVar = this.listenersField;
                } else {
                    return;
                }
            } while (zzdVar != zzd.zza);
            zzv(runnable, executor);
        }
        zzv(runnable, executor);
    }

    protected String zzd() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.play_billing.zzdf
    public final Throwable zze() {
        if (this instanceof zze) {
            Object obj = this.valueField;
            if (obj instanceof zzc) {
                return ((zzc) obj).zzc;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzi(Throwable th2) {
        if (!zzck.zzq(this, null, new zzc(th2))) {
            return false;
        }
        zzu(this, false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzj(zzcz zzczVar) {
        zzc zzcVar;
        Object obj = this.valueField;
        if (obj == null) {
            if (zzczVar.isDone()) {
                if (!zzck.zzq(this, null, zzr(zzczVar))) {
                    return false;
                }
                zzu(this, false);
                return true;
            }
            zzb zzbVar = new zzb(this, zzczVar);
            if (zzck.zzq(this, null, zzbVar)) {
                try {
                    zzczVar.zzb(zzbVar, zzcp.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        zzcVar = new zzc(th2);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zzck.zzq(this, zzbVar, zzcVar);
                }
                return true;
            }
            obj = this.valueField;
        }
        if (obj instanceof zza) {
            zzczVar.cancel(((zza) obj).zzc);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        return zzm(j10, timeUnit);
    }

    protected void zzg() {
    }
}

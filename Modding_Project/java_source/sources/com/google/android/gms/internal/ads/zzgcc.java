package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgcb;
import com.google.android.gms.internal.ads.zzgcc;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgcc<V> extends zzger implements com.google.common.util.concurrent.e<V> {
    private static final zza zzbi;
    static final Object zze = new Object();
    static final zzgdw zzf = new zzgdw(zzgcb.class);
    static final boolean zzg;
    volatile zzgcb.zzd listenersField;
    volatile Object valueField;
    volatile zze waitersField;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public abstract class zza {
        /* synthetic */ zza(zzgcg zzgcgVar) {
        }

        abstract zzgcb.zzd zza(zzgcc zzgccVar, zzgcb.zzd zzdVar);

        abstract zze zzb(zzgcc zzgccVar, zze zzeVar);

        abstract void zzc(zze zzeVar, zze zzeVar2);

        abstract void zzd(zze zzeVar, Thread thread);

        abstract boolean zze(zzgcc zzgccVar, zzgcb.zzd zzdVar, zzgcb.zzd zzdVar2);

        abstract boolean zzf(zzgcc zzgccVar, Object obj, Object obj2);

        abstract boolean zzg(zzgcc zzgccVar, zze zzeVar, zze zzeVar2);
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    final class zzb extends zza {
        private static final AtomicReferenceFieldUpdater<zze, Thread> zza = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "thread");
        private static final AtomicReferenceFieldUpdater<zze, zze> zzb = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "next");
        private static final AtomicReferenceFieldUpdater<? super zzgcc<?>, zze> zzc = AtomicReferenceFieldUpdater.newUpdater(zzgcc.class, zze.class, "waitersField");
        private static final AtomicReferenceFieldUpdater<? super zzgcc<?>, zzgcb.zzd> zzd = AtomicReferenceFieldUpdater.newUpdater(zzgcc.class, zzgcb.zzd.class, "listenersField");
        private static final AtomicReferenceFieldUpdater<? super zzgcc<?>, Object> zze = AtomicReferenceFieldUpdater.newUpdater(zzgcc.class, Object.class, "valueField");

        private zzb() {
            throw null;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final zzgcb.zzd zza(zzgcc zzgccVar, zzgcb.zzd zzdVar) {
            return zzd.getAndSet(zzgccVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final zze zzb(zzgcc zzgccVar, zze zzeVar) {
            return zzc.getAndSet(zzgccVar, zzeVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final void zzc(zze zzeVar, zze zzeVar2) {
            zzb.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final void zzd(zze zzeVar, Thread thread) {
            zza.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zze(zzgcc zzgccVar, zzgcb.zzd zzdVar, zzgcb.zzd zzdVar2) {
            return zzgcd.zza(zzd, zzgccVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zzf(zzgcc zzgccVar, Object obj, Object obj2) {
            return zzgcd.zza(zze, zzgccVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zzg(zzgcc zzgccVar, zze zzeVar, zze zzeVar2) {
            return zzgcd.zza(zzc, zzgccVar, zzeVar, zzeVar2);
        }

        /* synthetic */ zzb(zzgcg zzgcgVar) {
            super(null);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    final class zzc extends zza {
        private zzc() {
            throw null;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final zzgcb.zzd zza(zzgcc zzgccVar, zzgcb.zzd zzdVar) {
            zzgcb.zzd zzdVar2;
            synchronized (zzgccVar) {
                try {
                    zzdVar2 = zzgccVar.listenersField;
                    if (zzdVar2 != zzdVar) {
                        zzgccVar.listenersField = zzdVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final zze zzb(zzgcc zzgccVar, zze zzeVar) {
            zze zzeVar2;
            synchronized (zzgccVar) {
                try {
                    zzeVar2 = zzgccVar.waitersField;
                    if (zzeVar2 != zzeVar) {
                        zzgccVar.waitersField = zzeVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final void zzc(zze zzeVar, zze zzeVar2) {
            zzeVar.next = zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final void zzd(zze zzeVar, Thread thread) {
            zzeVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zze(zzgcc zzgccVar, zzgcb.zzd zzdVar, zzgcb.zzd zzdVar2) {
            synchronized (zzgccVar) {
                try {
                    if (zzgccVar.listenersField == zzdVar) {
                        zzgccVar.listenersField = zzdVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zzf(zzgcc zzgccVar, Object obj, Object obj2) {
            synchronized (zzgccVar) {
                try {
                    if (zzgccVar.valueField == obj) {
                        zzgccVar.valueField = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zzg(zzgcc zzgccVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzgccVar) {
                try {
                    if (zzgccVar.waitersField == zzeVar) {
                        zzgccVar.waitersField = zzeVar2;
                        return true;
                    }
                    return false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* synthetic */ zzc(zzgcg zzgcgVar) {
            super(null);
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    final class zzd extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;
        public static final /* synthetic */ int zzg = 0;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e10) {
                    throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.google.android.gms.internal.ads.zzgcf
                    @Override // java.security.PrivilegedExceptionAction
                    public final Object run() {
                        Field[] declaredFields;
                        int i10 = zzgcc.zzd.zzg;
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }
                });
            }
            try {
                zzc = unsafe.objectFieldOffset(zzgcc.class.getDeclaredField("waitersField"));
                zzb = unsafe.objectFieldOffset(zzgcc.class.getDeclaredField("listenersField"));
                zzd = unsafe.objectFieldOffset(zzgcc.class.getDeclaredField("valueField"));
                zze = unsafe.objectFieldOffset(zze.class.getDeclaredField("thread"));
                zzf = unsafe.objectFieldOffset(zze.class.getDeclaredField("next"));
                zza = unsafe;
            } catch (NoSuchFieldException e11) {
                throw new RuntimeException(e11);
            }
        }

        private zzd() {
            throw null;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final zzgcb.zzd zza(zzgcc zzgccVar, zzgcb.zzd zzdVar) {
            zzgcb.zzd zzdVar2;
            do {
                zzdVar2 = zzgccVar.listenersField;
                if (zzdVar == zzdVar2) {
                    break;
                }
            } while (!zze(zzgccVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final zze zzb(zzgcc zzgccVar, zze zzeVar) {
            zze zzeVar2;
            do {
                zzeVar2 = zzgccVar.waitersField;
                if (zzeVar == zzeVar2) {
                    break;
                }
            } while (!zzg(zzgccVar, zzeVar2, zzeVar));
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final void zzc(zze zzeVar, zze zzeVar2) {
            zza.putObject(zzeVar, zzf, zzeVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final void zzd(zze zzeVar, Thread thread) {
            zza.putObject(zzeVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zze(zzgcc zzgccVar, zzgcb.zzd zzdVar, zzgcb.zzd zzdVar2) {
            return zzgce.zza(zza, zzgccVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zzf(zzgcc zzgccVar, Object obj, Object obj2) {
            return zzgce.zza(zza, zzgccVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.ads.zzgcc.zza
        final boolean zzg(zzgcc zzgccVar, zze zzeVar, zze zzeVar2) {
            return zzgce.zza(zza, zzgccVar, zzc, zzeVar, zzeVar2);
        }

        /* synthetic */ zzd(zzgcg zzgcgVar) {
            super(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
    /* loaded from: classes4.dex */
    public final class zze {
        static final zze zza = new zze(false);
        volatile zze next;
        volatile Thread thread;

        zze(boolean z10) {
        }

        zze() {
            zzgcc.zzs(this, Thread.currentThread());
        }
    }

    static {
        boolean z10;
        Throwable th2;
        Throwable th3;
        zza zzcVar;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z10 = false;
        }
        zzg = z10;
        String property = System.getProperty("java.runtime.name", "");
        if (property != null && !property.contains("Android")) {
            try {
                zzcVar = new zzb(null);
            } catch (NoClassDefFoundError unused2) {
                zzcVar = new zzc(null);
            }
        } else {
            try {
                zzcVar = new zzd(null);
            } catch (Error | Exception e10) {
                try {
                    th2 = e10;
                    th3 = null;
                    zzcVar = new zzb(null);
                } catch (Error | Exception e11) {
                    th2 = e10;
                    th3 = e11;
                    zzcVar = new zzc(null);
                }
            }
        }
        th3 = null;
        th2 = null;
        zzbi = zzcVar;
        if (th3 != null) {
            zzgdw zzgdwVar = zzf;
            Logger zza2 = zzgdwVar.zza();
            Level level = Level.SEVERE;
            zza2.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzgdwVar.zza().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th3);
        }
    }

    private final void zza(zze zzeVar) {
        zzeVar.thread = null;
        while (true) {
            zze zzeVar2 = this.waitersField;
            if (zzeVar2 != zze.zza) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.next;
                    if (zzeVar2.thread != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.next = zzeVar4;
                        if (zzeVar3.thread == null) {
                            break;
                        }
                    } else if (!zzbi.zzg(this, zzeVar2, zzeVar4)) {
                        break;
                    }
                    zzeVar2 = zzeVar4;
                }
                return;
            }
            return;
        }
    }

    static /* synthetic */ void zzs(zze zzeVar, Thread thread) {
        zzbi.zzd(zzeVar, thread);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzv(zzgcc zzgccVar, Object obj, Object obj2) {
        return zzbi.zzf(zzgccVar, obj, obj2);
    }

    public abstract /* synthetic */ void addListener(Runnable runnable, Executor executor);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzgcb.zzd zzp(zzgcb.zzd zzdVar) {
        return zzbi.zza(this, zzdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object zzq() throws InterruptedException, ExecutionException {
        boolean z10;
        Object obj;
        boolean z11;
        if (!Thread.interrupted()) {
            Object obj2 = this.valueField;
            if (obj2 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 & zzgcb.zzm(obj2)) {
                return zzgcb.zzh(obj2);
            }
            zze zzeVar = this.waitersField;
            if (zzeVar != zze.zza) {
                zze zzeVar2 = new zze();
                do {
                    zza zzaVar = zzbi;
                    zzaVar.zzc(zzeVar2, zzeVar);
                    if (zzaVar.zzg(this, zzeVar, zzeVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.valueField;
                                if (obj != null) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                            } else {
                                zza(zzeVar2);
                                throw new InterruptedException();
                            }
                        } while (!(z11 & zzgcb.zzm(obj)));
                        return zzgcb.zzh(obj);
                    }
                    zzeVar = this.waitersField;
                } while (zzeVar != zze.zza);
                Object obj3 = this.valueField;
                Objects.requireNonNull(obj3);
                return zzgcb.zzh(obj3);
            }
            Object obj32 = this.valueField;
            Objects.requireNonNull(obj32);
            return zzgcb.zzh(obj32);
        }
        throw new InterruptedException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object zzr(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        boolean z10;
        long j11;
        boolean z11;
        boolean z12;
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.valueField;
            boolean z13 = true;
            if (obj != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 & zzgcb.zzm(obj)) {
                return zzgcb.zzh(obj);
            }
            if (nanos > 0) {
                j11 = System.nanoTime() + nanos;
            } else {
                j11 = 0;
            }
            if (nanos >= 1000) {
                zze zzeVar = this.waitersField;
                if (zzeVar != zze.zza) {
                    zze zzeVar2 = new zze();
                    do {
                        zza zzaVar = zzbi;
                        zzaVar.zzc(zzeVar2, zzeVar);
                        if (zzaVar.zzg(this, zzeVar, zzeVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.valueField;
                                    if (obj2 != null) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12 & zzgcb.zzm(obj2)) {
                                        return zzgcb.zzh(obj2);
                                    }
                                    nanos = j11 - System.nanoTime();
                                } else {
                                    zza(zzeVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            zza(zzeVar2);
                        } else {
                            zzeVar = this.waitersField;
                        }
                    } while (zzeVar != zze.zza);
                    Object obj3 = this.valueField;
                    Objects.requireNonNull(obj3);
                    return zzgcb.zzh(obj3);
                }
                Object obj32 = this.valueField;
                Objects.requireNonNull(obj32);
                return zzgcb.zzh(obj32);
            }
            while (nanos > 0) {
                Object obj4 = this.valueField;
                if (obj4 != null) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11 & zzgcb.zzm(obj4)) {
                    return zzgcb.zzh(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = j11 - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String obj5 = toString();
            String obj6 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj6.toLowerCase(locale);
            String str = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String concat = str.concat(" (plus ");
                long j12 = -nanos;
                long convert = timeUnit.convert(j12, TimeUnit.NANOSECONDS);
                long nanos2 = j12 - timeUnit.toNanos(convert);
                int i10 = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                if (i10 != 0 && nanos2 <= 1000) {
                    z13 = false;
                }
                if (i10 > 0) {
                    String str2 = concat + convert + " " + lowerCase;
                    if (z13) {
                        str2 = str2.concat(",");
                    }
                    concat = str2.concat(" ");
                }
                if (z13) {
                    concat = concat + nanos2 + " nanoseconds ";
                }
                str = concat.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(str.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + obj5);
        }
        throw new InterruptedException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt() {
        for (zze zzb2 = zzbi.zzb(this, zze.zza); zzb2 != null; zzb2 = zzb2.next) {
            Thread thread = zzb2.thread;
            if (thread != null) {
                zzb2.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzu(zzgcb.zzd zzdVar, zzgcb.zzd zzdVar2) {
        return zzbi.zze(this, zzdVar, zzdVar2);
    }
}

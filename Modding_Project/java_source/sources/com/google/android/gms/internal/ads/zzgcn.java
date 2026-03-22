package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgcn extends zzgcs {
    private static final zzgdw zza = new zzgdw(zzgcn.class);
    private zzfyl zzb;
    private final boolean zzc;
    private final boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcn(zzfyl zzfylVar, boolean z10, boolean z11) {
        super(zzfylVar.size());
        this.zzb = zzfylVar;
        this.zzc = z10;
        this.zzd = z11;
    }

    private final void zzD(int i10, Future future) {
        try {
            zzx(i10, zzgeq.zza(future));
        } catch (ExecutionException e10) {
            zzF(e10.getCause());
        } catch (Throwable th2) {
            zzF(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzE(zzfyl zzfylVar) {
        boolean z10;
        int zzB = zzB();
        int i10 = 0;
        if (zzB >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zzm(z10, "Less than 0 remaining futures");
        if (zzB == 0) {
            if (zzfylVar != null) {
                zzgaw it = zzfylVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        zzD(i10, future);
                    }
                    i10++;
                }
            }
            this.seenExceptionsField = null;
            zzy();
            zzA(2);
        }
    }

    private final void zzF(Throwable th2) {
        th2.getClass();
        if (this.zzc && !zzd(th2) && zzI(zzC(), th2)) {
            zzG(th2);
        } else if (th2 instanceof Error) {
            zzG(th2);
        }
    }

    private static void zzG(Throwable th2) {
        String str;
        if (true != (th2 instanceof Error)) {
            str = "Got more than one input Future failure. Logging failures after the first";
        } else {
            str = "Input Future failed with Error";
        }
        zza.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", str, th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzH(int i10, com.google.common.util.concurrent.e eVar) {
        try {
            if (eVar.isCancelled()) {
                this.zzb = null;
                cancel(false);
            } else {
                zzD(i10, eVar);
            }
            zzE(null);
        } catch (Throwable th2) {
            zzE(null);
            throw th2;
        }
    }

    private static boolean zzI(Set set, Throwable th2) {
        while (th2 != null) {
            if (!set.add(th2)) {
                return false;
            }
            th2 = th2.getCause();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzA(int i10) {
        this.zzb = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgcb
    public final String zza() {
        zzfyl zzfylVar = this.zzb;
        if (zzfylVar != null) {
            return "futures=".concat(zzfylVar.toString());
        }
        return super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    protected final void zzb() {
        zzfyl zzfylVar = this.zzb;
        boolean z10 = true;
        zzA(1);
        boolean isCancelled = isCancelled();
        if (zzfylVar == null) {
            z10 = false;
        }
        if (z10 & isCancelled) {
            boolean zzo = zzo();
            zzgaw it = zzfylVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zzo);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcs
    final void zzw(Set set) {
        set.getClass();
        if (!isCancelled()) {
            Throwable zzi = zzi();
            Objects.requireNonNull(zzi);
            zzI(set, zzi);
        }
    }

    abstract void zzx(int i10, Object obj);

    abstract void zzy();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzz() {
        final zzfyl zzfylVar;
        Objects.requireNonNull(this.zzb);
        if (this.zzb.isEmpty()) {
            zzy();
        } else if (this.zzc) {
            zzgaw it = this.zzb.iterator();
            final int i10 = 0;
            while (it.hasNext()) {
                final com.google.common.util.concurrent.e eVar = (com.google.common.util.concurrent.e) it.next();
                int i11 = i10 + 1;
                if (eVar.isDone()) {
                    zzH(i10, eVar);
                } else {
                    eVar.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgcl
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzgcn.this.zzH(i10, eVar);
                        }
                    }, zzgdb.INSTANCE);
                }
                i10 = i11;
            }
        } else {
            zzfyl zzfylVar2 = this.zzb;
            if (true != this.zzd) {
                zzfylVar = null;
            } else {
                zzfylVar = zzfylVar2;
            }
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzgcm
                @Override // java.lang.Runnable
                public final void run() {
                    zzgcn.this.zzE(zzfylVar);
                }
            };
            zzgaw it2 = zzfylVar2.iterator();
            while (it2.hasNext()) {
                com.google.common.util.concurrent.e eVar2 = (com.google.common.util.concurrent.e) it2.next();
                if (eVar2.isDone()) {
                    zzE(zzfylVar);
                } else {
                    eVar2.addListener(runnable, zzgdb.INSTANCE);
                }
            }
        }
    }
}

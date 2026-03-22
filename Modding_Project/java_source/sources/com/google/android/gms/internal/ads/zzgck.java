package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgck extends zzgdd implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    com.google.common.util.concurrent.e zza;
    Object zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgck(com.google.common.util.concurrent.e eVar, Object obj) {
        eVar.getClass();
        this.zza = eVar;
        this.zzb = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        com.google.common.util.concurrent.e eVar = this.zza;
        Object obj = this.zzb;
        boolean isCancelled = isCancelled();
        boolean z11 = true;
        if (eVar == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z12 = isCancelled | z10;
        if (obj != null) {
            z11 = false;
        }
        if (z12 | z11) {
            return;
        }
        this.zza = null;
        if (!eVar.isCancelled()) {
            try {
                try {
                    Object zze = zze(obj, zzgdn.zzp(eVar));
                    this.zzb = null;
                    zzf(zze);
                    return;
                } catch (Throwable th2) {
                    try {
                        zzgeg.zza(th2);
                        zzd(th2);
                        return;
                    } finally {
                        this.zzb = null;
                    }
                }
            } catch (Error e10) {
                zzd(e10);
                return;
            } catch (CancellationException unused) {
                cancel(false);
                return;
            } catch (ExecutionException e11) {
                zzd(e11.getCause());
                return;
            } catch (Exception e12) {
                zzd(e12);
                return;
            }
        }
        zzn(eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgcb
    public final String zza() {
        String str;
        com.google.common.util.concurrent.e eVar = this.zza;
        Object obj = this.zzb;
        String zza = super.zza();
        if (eVar != null) {
            str = "inputFuture=[" + eVar.toString() + "], ";
        } else {
            str = "";
        }
        if (obj != null) {
            return str + "function=[" + obj.toString() + "]";
        } else if (zza != null) {
            return str.concat(zza);
        } else {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    protected final void zzb() {
        zzl(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    abstract Object zze(Object obj, Object obj2) throws Exception;

    abstract void zzf(Object obj);
}

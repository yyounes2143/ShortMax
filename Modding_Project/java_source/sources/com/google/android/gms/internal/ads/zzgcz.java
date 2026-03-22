package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgcz extends zzgdv {
    private final Executor zza;
    final /* synthetic */ zzgda zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcz(zzgda zzgdaVar, Executor executor) {
        Objects.requireNonNull(zzgdaVar);
        this.zzb = zzgdaVar;
        executor.getClass();
        this.zza = executor;
    }

    abstract void zzc(Object obj);

    @Override // com.google.android.gms.internal.ads.zzgdv
    final void zzd(Throwable th2) {
        zzgda zzgdaVar = this.zzb;
        zzgdaVar.zza = null;
        if (th2 instanceof ExecutionException) {
            zzgdaVar.zzd(((ExecutionException) th2).getCause());
        } else if (th2 instanceof CancellationException) {
            zzgdaVar.cancel(false);
        } else {
            zzgdaVar.zzd(th2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final void zze(Object obj) {
        this.zzb.zza = null;
        zzc(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e10) {
            this.zzb.zzd(e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final boolean zzg() {
        return this.zzb.isDone();
    }
}

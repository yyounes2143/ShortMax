package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-sdk-api@@23.0.0 */
/* loaded from: classes5.dex */
public abstract class zzeq implements Runnable {
    final long zzh;
    final long zzi;
    final boolean zzj;
    final /* synthetic */ zzfb zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeq(zzfb zzfbVar, boolean z10) {
        Objects.requireNonNull(zzfbVar);
        this.zzk = zzfbVar;
        this.zzh = zzfbVar.zza.currentTimeMillis();
        this.zzi = zzfbVar.zza.elapsedRealtime();
        this.zzj = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzk.zzP()) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e10) {
            this.zzk.zzN(e10, false, this.zzj);
            zzb();
        }
    }

    abstract void zza() throws RemoteException;

    protected void zzb() {
    }
}

package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public abstract class zzg extends zzf {
    private boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzic zzicVar) {
        super(zzicVar);
        this.zzu.zzF();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza() {
        if (this.zza) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb() {
        if (zza()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzc() {
        if (!this.zza) {
            if (!zze()) {
                this.zzu.zzG();
                this.zza = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzd() {
        if (!this.zza) {
            zzf();
            this.zzu.zzG();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean zze();

    @WorkerThread
    protected void zzf() {
    }
}

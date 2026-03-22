package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public abstract class zzjf extends zzje {
    private boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjf(zzic zzicVar) {
        super(zzicVar);
        this.zzu.zzF();
    }

    protected abstract boolean zza();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzv() {
        if (this.zza) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzw() {
        if (zzv()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzx() {
        if (!this.zza) {
            if (!zza()) {
                this.zzu.zzG();
                this.zza = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzy() {
        if (!this.zza) {
            zzba();
            this.zzu.zzG();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected void zzba() {
    }
}

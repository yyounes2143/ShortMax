package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public abstract class zzos extends zzol {
    private boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzos(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzg.zzae();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzav() {
        if (this.zza) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzaw() {
        if (zzav()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzax() {
        if (!this.zza) {
            zzbb();
            this.zzg.zzaf();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean zzbb();
}

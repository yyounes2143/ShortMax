package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzp {
    Object zza;
    zzt zzb;
    private zzv zzc = zzv.zze();
    private boolean zzd;

    protected final void finalize() {
        zzv zzvVar;
        zzt zztVar = this.zzb;
        if (zztVar != null && !zztVar.isDone()) {
            zztVar.zzc(new zzq("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.zza))));
        }
        if (!this.zzd && (zzvVar = this.zzc) != null) {
            zzvVar.zzd(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza() {
        this.zza = null;
        this.zzb = null;
        this.zzc.zzd(null);
    }

    public final boolean zzb(Object obj) {
        boolean z10 = true;
        this.zzd = true;
        zzt zztVar = this.zzb;
        if (zztVar == null || !zztVar.zza(obj)) {
            z10 = false;
        }
        if (z10) {
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
        }
        return z10;
    }
}

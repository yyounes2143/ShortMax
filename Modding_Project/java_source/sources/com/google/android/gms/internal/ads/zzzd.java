package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzzd {
    @Nullable
    private zzzc zza;
    @Nullable
    private zzzl zzb;

    @Nullable
    public zzmc zze() {
        throw null;
    }

    @CallSuper
    public void zzj() {
        this.zza = null;
        this.zzb = null;
    }

    public void zzk(zze zzeVar) {
        throw null;
    }

    public boolean zzn() {
        throw null;
    }

    public abstract zzze zzo(zzmd[] zzmdVarArr, zzxk zzxkVar, zzvh zzvhVar, zzbl zzblVar) throws zzin;

    public abstract void zzp(@Nullable Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzzl zzq() {
        zzzl zzzlVar = this.zzb;
        zzdd.zzb(zzzlVar);
        return zzzlVar;
    }

    @CallSuper
    public final void zzr(zzzc zzzcVar, zzzl zzzlVar) {
        boolean z10;
        if (this.zza == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        this.zza = zzzcVar;
        this.zzb = zzzlVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzs() {
        zzzc zzzcVar = this.zza;
        if (zzzcVar != null) {
            zzzcVar.zzm();
        }
    }
}

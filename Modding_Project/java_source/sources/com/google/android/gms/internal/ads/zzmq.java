package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzmq {
    private final zzv zza;
    private final SparseArray zzb;

    public zzmq(zzv zzvVar, SparseArray sparseArray) {
        this.zza = zzvVar;
        SparseArray sparseArray2 = new SparseArray(zzvVar.zzb());
        for (int i10 = 0; i10 < zzvVar.zzb(); i10++) {
            int zza = zzvVar.zza(i10);
            zzmp zzmpVar = (zzmp) sparseArray.get(zza);
            zzmpVar.getClass();
            sparseArray2.append(zza, zzmpVar);
        }
        this.zzb = sparseArray2;
    }

    public final int zza(int i10) {
        return this.zza.zza(i10);
    }

    public final int zzb() {
        return this.zza.zzb();
    }

    public final zzmp zzc(int i10) {
        zzmp zzmpVar = (zzmp) this.zzb.get(i10);
        zzmpVar.getClass();
        return zzmpVar;
    }

    public final boolean zzd(int i10) {
        return this.zza.zzc(i10);
    }
}

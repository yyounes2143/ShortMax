package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzxf {
    private int zza;
    private final SparseArray zzb;
    private final zzdn zzc;

    public zzxf() {
        this(new zzdn() { // from class: com.google.android.gms.internal.ads.zzxe
            @Override // com.google.android.gms.internal.ads.zzdn
            public final void zza(Object obj) {
            }
        });
    }

    public final Object zza(int i10) {
        SparseArray sparseArray;
        if (this.zza == -1) {
            this.zza = 0;
        }
        while (true) {
            int i11 = this.zza;
            if (i11 > 0 && i10 < this.zzb.keyAt(i11)) {
                this.zza--;
            }
        }
        while (true) {
            int i12 = this.zza;
            sparseArray = this.zzb;
            if (i12 >= sparseArray.size() - 1 || i10 < sparseArray.keyAt(this.zza + 1)) {
                break;
            }
            this.zza++;
        }
        return sparseArray.valueAt(this.zza);
    }

    public final Object zzb() {
        SparseArray sparseArray = this.zzb;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void zzc(int i10, Object obj) {
        boolean z10;
        boolean z11 = true;
        if (this.zza == -1) {
            if (this.zzb.size() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzdd.zzf(z10);
            this.zza = 0;
        }
        SparseArray sparseArray = this.zzb;
        if (sparseArray.size() > 0) {
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i10 < keyAt) {
                z11 = false;
            }
            zzdd.zzd(z11);
            if (keyAt == i10) {
                this.zzc.zza(sparseArray.valueAt(sparseArray.size() - 1));
            }
        }
        sparseArray.append(i10, obj);
    }

    public final void zzd() {
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = this.zzb;
            if (i10 < sparseArray.size()) {
                this.zzc.zza(sparseArray.valueAt(i10));
                i10++;
            } else {
                this.zza = -1;
                sparseArray.clear();
                return;
            }
        }
    }

    public final void zze(int i10) {
        int i11 = 0;
        while (true) {
            SparseArray sparseArray = this.zzb;
            if (i11 < sparseArray.size() - 1) {
                int i12 = i11 + 1;
                if (i10 >= sparseArray.keyAt(i12)) {
                    this.zzc.zza(sparseArray.valueAt(i11));
                    sparseArray.removeAt(i11);
                    int i13 = this.zza;
                    if (i13 > 0) {
                        this.zza = i13 - 1;
                    }
                    i11 = i12;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final boolean zzf() {
        if (this.zzb.size() == 0) {
            return true;
        }
        return false;
    }

    public zzxf(zzdn zzdnVar) {
        this.zzb = new SparseArray();
        this.zzc = zzdnVar;
        this.zza = -1;
    }
}

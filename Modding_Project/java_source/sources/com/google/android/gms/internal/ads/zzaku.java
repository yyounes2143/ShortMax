package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaku implements zzady {
    private final zzady zzb;
    private final zzakr zzc;
    private final SparseArray zzd = new SparseArray();
    private boolean zze;

    public zzaku(zzady zzadyVar, zzakr zzakrVar) {
        this.zzb = zzadyVar;
        this.zzc = zzakrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzady
    public final void zzG() {
        this.zzb.zzG();
        if (this.zze) {
            int i10 = 0;
            while (true) {
                SparseArray sparseArray = this.zzd;
                if (i10 < sparseArray.size()) {
                    ((zzakw) sparseArray.valueAt(i10)).zzb(true);
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzady
    public final void zzP(zzaeu zzaeuVar) {
        this.zzb.zzP(zzaeuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzady
    public final zzafb zzw(int i10, int i11) {
        if (i11 != 3) {
            this.zze = true;
            return this.zzb.zzw(i10, i11);
        }
        SparseArray sparseArray = this.zzd;
        zzakw zzakwVar = (zzakw) sparseArray.get(i10);
        if (zzakwVar != null) {
            return zzakwVar;
        }
        zzakw zzakwVar2 = new zzakw(this.zzb.zzw(i10, 3), this.zzc);
        sparseArray.put(i10, zzakwVar2);
        return zzakwVar2;
    }
}

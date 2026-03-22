package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzyh extends zzbq {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private final SparseArray zzh;
    private final SparseBooleanArray zzi;

    public zzyh() {
        this.zzh = new SparseArray();
        this.zzi = new SparseBooleanArray();
        this.zza = true;
        this.zzb = true;
        this.zzc = true;
        this.zzd = true;
        this.zze = true;
        this.zzf = true;
        this.zzg = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzyh zzw(zzbr zzbrVar) {
        super.zzj(zzbrVar);
        return this;
    }

    public final zzyh zzx(int i10, boolean z10) {
        SparseBooleanArray sparseBooleanArray = this.zzi;
        if (sparseBooleanArray.get(i10) != z10) {
            if (z10) {
                sparseBooleanArray.put(i10, true);
            } else {
                sparseBooleanArray.delete(i10);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzyh(zzyi zzyiVar, zzyt zzytVar) {
        super(zzyiVar);
        this.zza = zzyiVar.zzG;
        this.zzb = zzyiVar.zzI;
        this.zzc = zzyiVar.zzK;
        this.zzd = zzyiVar.zzP;
        this.zze = zzyiVar.zzQ;
        this.zzf = zzyiVar.zzR;
        this.zzg = zzyiVar.zzT;
        SparseArray zza = zzyi.zza(zzyiVar);
        SparseArray sparseArray = new SparseArray();
        for (int i10 = 0; i10 < zza.size(); i10++) {
            sparseArray.put(zza.keyAt(i10), new HashMap((Map) zza.valueAt(i10)));
        }
        this.zzh = sparseArray;
        this.zzi = zzyi.zzb(zzyiVar).clone();
    }
}

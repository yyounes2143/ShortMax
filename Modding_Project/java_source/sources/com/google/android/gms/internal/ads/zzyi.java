package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzyi extends zzbr {
    public static final zzyi zzF = new zzyi(new zzyh());
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final boolean zzQ;
    public final boolean zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final boolean zzU;
    private final SparseArray zzV;
    private final SparseBooleanArray zzW;

    static {
        String str = zzex.zza;
        Integer.toString(1000, 36);
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(1005, 36);
        Integer.toString(1006, 36);
        Integer.toString(1007, 36);
        Integer.toString(1008, 36);
        Integer.toString(1009, 36);
        Integer.toString(1010, 36);
        Integer.toString(1011, 36);
        Integer.toString(1012, 36);
        Integer.toString(1013, 36);
        Integer.toString(1014, 36);
        Integer.toString(1015, 36);
        Integer.toString(1016, 36);
        Integer.toString(1017, 36);
        Integer.toString(1018, 36);
    }

    @Override // com.google.android.gms.internal.ads.zzbr
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzyi.class == obj.getClass()) {
            zzyi zzyiVar = (zzyi) obj;
            if (super.equals(zzyiVar) && this.zzG == zzyiVar.zzG && this.zzI == zzyiVar.zzI && this.zzK == zzyiVar.zzK && this.zzP == zzyiVar.zzP && this.zzQ == zzyiVar.zzQ && this.zzR == zzyiVar.zzR && this.zzT == zzyiVar.zzT) {
                SparseBooleanArray sparseBooleanArray = this.zzW;
                SparseBooleanArray sparseBooleanArray2 = zzyiVar.zzW;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i10 = 0;
                    while (true) {
                        if (i10 < size) {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i10)) < 0) {
                                break;
                            }
                            i10++;
                        } else {
                            SparseArray sparseArray = this.zzV;
                            SparseArray sparseArray2 = zzyiVar.zzV;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i11 = 0; i11 < size2; i11++) {
                                    int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i11));
                                    if (indexOfKey >= 0) {
                                        Map map = (Map) sparseArray.valueAt(i11);
                                        Map map2 = (Map) sparseArray2.valueAt(indexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                zzxk zzxkVar = (zzxk) entry.getKey();
                                                if (map2.containsKey(zzxkVar)) {
                                                    if (!Objects.equals(entry.getValue(), map2.get(zzxkVar))) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbr
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.zzG ? 1 : 0)) * 961) + (this.zzI ? 1 : 0)) * 961) + (this.zzK ? 1 : 0)) * 28629151) + (this.zzP ? 1 : 0)) * 31) + (this.zzQ ? 1 : 0)) * 31) + (this.zzR ? 1 : 0)) * 961) + (this.zzT ? 1 : 0)) * 31;
    }

    public final zzyh zzc() {
        return new zzyh(this, null);
    }

    @Nullable
    @Deprecated
    public final zzyj zzd(int i10, zzxk zzxkVar) {
        Map map = (Map) this.zzV.get(i10);
        if (map != null) {
            return (zzyj) map.get(zzxkVar);
        }
        return null;
    }

    public final boolean zze(int i10) {
        return this.zzW.get(i10);
    }

    @Deprecated
    public final boolean zzf(int i10, zzxk zzxkVar) {
        Map map = (Map) this.zzV.get(i10);
        if (map != null && map.containsKey(zzxkVar)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzyi(zzyh zzyhVar) {
        super(zzyhVar);
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        z10 = zzyhVar.zza;
        this.zzG = z10;
        this.zzH = false;
        z11 = zzyhVar.zzb;
        this.zzI = z11;
        this.zzJ = false;
        z12 = zzyhVar.zzc;
        this.zzK = z12;
        this.zzL = false;
        this.zzM = false;
        this.zzN = false;
        this.zzO = false;
        z13 = zzyhVar.zzd;
        this.zzP = z13;
        z14 = zzyhVar.zze;
        this.zzQ = z14;
        z15 = zzyhVar.zzf;
        this.zzR = z15;
        this.zzS = false;
        z16 = zzyhVar.zzg;
        this.zzT = z16;
        this.zzU = false;
        sparseArray = zzyhVar.zzh;
        this.zzV = sparseArray;
        sparseBooleanArray = zzyhVar.zzi;
        this.zzW = sparseBooleanArray;
    }
}

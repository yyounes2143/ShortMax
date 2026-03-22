package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzadj {
    private final Map zza = new LinkedHashMap();

    public final zzadi zza() {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (zzadi zzadiVar : this.zza.values()) {
            arrayList.add(zzadiVar.zzb);
            arrayList2.add(zzadiVar.zzc);
            arrayList3.add(zzadiVar.zzd);
            arrayList4.add(zzadiVar.zze);
        }
        int[][] iArr = (int[][]) arrayList.toArray(new int[arrayList.size()]);
        long j10 = 0;
        for (int[] iArr2 : iArr) {
            j10 += iArr2.length;
        }
        int i10 = (int) j10;
        if (j10 == i10) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zzh(z10, "the total number of elements (%s) in the arrays must fit in an int", j10);
        int[] iArr3 = new int[i10];
        int i11 = 0;
        for (int[] iArr4 : iArr) {
            int length = iArr4.length;
            System.arraycopy(iArr4, 0, iArr3, i11, length);
            i11 += length;
        }
        return new zzadi(iArr3, zzgbw.zza((long[][]) arrayList2.toArray(new long[arrayList2.size()])), zzgbw.zza((long[][]) arrayList3.toArray(new long[arrayList3.size()])), zzgbw.zza((long[][]) arrayList4.toArray(new long[arrayList4.size()])));
    }

    public final void zzb(zzadi zzadiVar) {
        long[] jArr = zzadiVar.zze;
        if (jArr.length > 0) {
            Map map = this.zza;
            if (!map.containsKey(Long.valueOf(jArr[0]))) {
                map.put(Long.valueOf(jArr[0]), zzadiVar);
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzamp implements zzako {
    private final List zza;
    private final long[] zzb;
    private final long[] zzc;

    public zzamp(List list) {
        this.zza = Collections.unmodifiableList(new ArrayList(list));
        int size = list.size();
        this.zzb = new long[size + size];
        for (int i10 = 0; i10 < list.size(); i10++) {
            zzame zzameVar = (zzame) list.get(i10);
            long[] jArr = this.zzb;
            int i11 = i10 + i10;
            jArr[i11] = zzameVar.zzb;
            jArr[i11 + 1] = zzameVar.zzc;
        }
        long[] jArr2 = this.zzb;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.zzc = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // com.google.android.gms.internal.ads.zzako
    public final int zza() {
        return this.zzc.length;
    }

    @Override // com.google.android.gms.internal.ads.zzako
    public final long zzb(int i10) {
        boolean z10;
        boolean z11 = false;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        long[] jArr = this.zzc;
        if (i10 < jArr.length) {
            z11 = true;
        }
        zzdd.zzd(z11);
        return jArr[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzako
    public final List zzc(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i10 = 0;
        while (true) {
            List list = this.zza;
            if (i10 >= list.size()) {
                break;
            }
            long[] jArr = this.zzb;
            int i11 = i10 + i10;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                zzame zzameVar = (zzame) list.get(i10);
                zzcu zzcuVar = zzameVar.zza;
                if (zzcuVar.zze == -3.4028235E38f) {
                    arrayList2.add(zzameVar);
                } else {
                    arrayList.add(zzcuVar);
                }
            }
            i10++;
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzamo
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((zzame) obj).zzb, ((zzame) obj2).zzb);
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            zzcs zzb = ((zzame) arrayList2.get(i12)).zza.zzb();
            zzb.zze((-1) - i12, 1);
            arrayList.add(zzb.zzq());
        }
        return arrayList;
    }
}

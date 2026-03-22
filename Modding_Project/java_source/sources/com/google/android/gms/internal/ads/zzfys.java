package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfys {
    Object[] zza;
    int zzb;
    zzfyr zzc;

    public zzfys() {
        this(4);
    }

    private final void zzd(int i10) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i11 = i10 + i10;
        if (i11 > length) {
            this.zza = Arrays.copyOf(objArr, zzfyk.zze(length, i11));
        }
    }

    public final zzfys zza(Object obj, Object obj2) {
        zzd(this.zzb + 1);
        zzfxn.zzb(obj, obj2);
        Object[] objArr = this.zza;
        int i10 = this.zzb;
        int i11 = i10 + i10;
        objArr[i11] = obj;
        objArr[i11 + 1] = obj2;
        this.zzb = i10 + 1;
        return this;
    }

    public final zzfys zzb(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzd(this.zzb + ((Collection) iterable).size());
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zza(entry.getKey(), entry.getValue());
        }
        return this;
    }

    public final zzfyt zzc() {
        zzfyr zzfyrVar = this.zzc;
        if (zzfyrVar == null) {
            zzgah zzj = zzgah.zzj(this.zzb, this.zza, this);
            zzfyr zzfyrVar2 = this.zzc;
            if (zzfyrVar2 == null) {
                return zzj;
            }
            throw zzfyrVar2.zza();
        }
        throw zzfyrVar.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfys(int i10) {
        this.zza = new Object[i10 + i10];
        this.zzb = 0;
    }
}

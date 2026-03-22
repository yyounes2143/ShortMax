package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfzg {
    public static ArrayList zza(Iterator it) {
        ArrayList arrayList = new ArrayList();
        it.getClass();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static ArrayList zzb(int i10) {
        zzfxn.zza(i10, "initialArraySize");
        return new ArrayList(i10);
    }

    public static List zzc(List list, zzfve zzfveVar) {
        if (list instanceof RandomAccess) {
            return new zzfzd(list, zzfveVar);
        }
        return new zzfzf(list, zzfveVar);
    }
}

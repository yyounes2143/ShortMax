package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhhd implements zzhgr {
    private final List zza;
    private final List zzb;

    static {
        zzhgs.zza(Collections.emptySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhhd(List list, List list2, zzhhb zzhhbVar) {
        this.zza = list;
        this.zzb = list2;
    }

    public static zzhhc zza(int i10, int i11) {
        return new zzhhc(i10, i11, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    /* renamed from: zzc */
    public final Set zzb() {
        List list = this.zza;
        int size = list.size();
        List list2 = this.zzb;
        ArrayList arrayList = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            Collection collection = (Collection) ((zzhha) list2.get(i10)).zzb();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet zza = zzhgo.zza(size);
        int size3 = list.size();
        for (int i11 = 0; i11 < size3; i11++) {
            Object zzb = ((zzhha) list.get(i11)).zzb();
            zzb.getClass();
            zza.add(zzb);
        }
        int size4 = arrayList.size();
        for (int i12 = 0; i12 < size4; i12++) {
            for (Object obj : (Collection) arrayList.get(i12)) {
                obj.getClass();
                zza.add(obj);
            }
        }
        return Collections.unmodifiableSet(zza);
    }
}

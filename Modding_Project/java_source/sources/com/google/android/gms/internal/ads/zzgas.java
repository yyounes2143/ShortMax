package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgas {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Set set) {
        int i10;
        int i11 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 += i10;
        }
        return i11;
    }

    public static zzgaq zzb(Set set, Set set2) {
        zzfvp.zzc(set, "set1");
        zzfvp.zzc(set2, "set2");
        return new zzgam(set, set2);
    }

    public static Set zzc(Set set, zzfvq zzfvqVar) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (sortedSet instanceof zzgan) {
                zzgan zzganVar = (zzgan) sortedSet;
                return new zzgao((SortedSet) zzganVar.zza, zzfvt.zza(zzganVar.zzb, zzfvqVar));
            }
            sortedSet.getClass();
            return new zzgao(sortedSet, zzfvqVar);
        } else if (set instanceof zzgan) {
            zzgan zzganVar2 = (zzgan) set;
            return new zzgan((Set) zzganVar2.zza, zzfvt.zza(zzganVar2.zzb, zzfvqVar));
        } else {
            set.getClass();
            return new zzgan(set, zzfvqVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzd(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zze(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzfzy) {
            collection = ((zzfzy) collection).zza();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator it = set.iterator();
            collection.getClass();
            boolean z10 = false;
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }
        return zzf(set, collection.iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzf(Set set, Iterator it) {
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= set.remove(it.next());
        }
        return z10;
    }
}

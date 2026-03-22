package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfyw {
    public static Object zza(Iterable iterable, Object obj) {
        zzgaw it = ((zzgam) iterable).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return obj;
    }

    public static boolean zzb(Iterable iterable, zzfvq zzfvqVar) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            zzfvqVar.getClass();
            return zzd((List) iterable, zzfvqVar);
        }
        Iterator it = iterable.iterator();
        zzfvqVar.getClass();
        boolean z10 = false;
        while (it.hasNext()) {
            if (zzfvqVar.zza(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    private static void zzc(List list, zzfvq zzfvqVar, int i10, int i11) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i11) {
                break;
            } else if (zzfvqVar.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i11--;
            if (i11 >= i10) {
                list.remove(i11);
            } else {
                return;
            }
        }
    }

    private static boolean zzd(List list, zzfvq zzfvqVar) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < list.size()) {
            Object obj = list.get(i10);
            if (!zzfvqVar.zza(obj)) {
                if (i10 > i11) {
                    try {
                        list.set(i11, obj);
                    } catch (IllegalArgumentException unused) {
                        zzc(list, zzfvqVar, i11, i10);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        zzc(list, zzfvqVar, i11, i10);
                        return true;
                    }
                }
                i11++;
            }
            i10++;
        }
        list.subList(i11, list.size()).clear();
        if (i10 == i11) {
            return false;
        }
        return true;
    }
}

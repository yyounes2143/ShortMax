package com.google.android.gms.internal.ads;

import com.ss.texturerender.TextureRenderKeys;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfyq extends zzfyl implements List, RandomAccess {
    private static final zzgax zza = new zzfyo(zzgac.zza, 0);
    public static final /* synthetic */ int zzd = 0;

    public static zzfyn zzi(int i10) {
        zzfxn.zza(i10, "expectedSize");
        return new zzfyn(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfyq zzj(Object[] objArr, int i10) {
        if (i10 == 0) {
            return zzgac.zza;
        }
        return new zzgac(objArr, i10);
    }

    public static zzfyq zzk(Iterable iterable) {
        iterable.getClass();
        return zzl((Collection) iterable);
    }

    public static zzfyq zzl(Collection collection) {
        if (collection instanceof zzfyl) {
            zzfyq zzd2 = ((zzfyl) collection).zzd();
            if (zzd2.zzf()) {
                Object[] array = zzd2.toArray();
                return zzj(array, array.length);
            }
            return zzd2;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        zzgaa.zzb(array2, length);
        return zzj(array2, length);
    }

    public static zzfyq zzm(Object[] objArr) {
        if (objArr.length == 0) {
            return zzgac.zza;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzgaa.zzb(objArr2, length);
        return zzj(objArr2, length);
    }

    public static zzfyq zzn() {
        return zzgac.zza;
    }

    public static zzfyq zzo(Object obj) {
        Object[] objArr = {obj};
        zzgaa.zzb(objArr, 1);
        return zzj(objArr, 1);
    }

    public static zzfyq zzp(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        zzgaa.zzb(objArr, 2);
        return zzj(objArr, 2);
    }

    public static zzfyq zzq(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        zzgaa.zzb(objArr, 3);
        return zzj(objArr, 3);
    }

    public static zzfyq zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        zzgaa.zzb(objArr, 5);
        return zzj(objArr, 5);
    }

    public static zzfyq zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        zzgaa.zzb(objArr, 6);
        return zzj(objArr, 6);
    }

    @SafeVarargs
    public static zzfyq zzt(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        int length = objArr.length;
        int i10 = length + 12;
        Object[] objArr2 = new Object[i10];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        objArr2[6] = obj7;
        objArr2[7] = obj8;
        objArr2[8] = obj9;
        objArr2[9] = obj10;
        objArr2[10] = obj11;
        objArr2[11] = obj12;
        System.arraycopy(objArr, 0, objArr2, 12, length);
        zzgaa.zzb(objArr2, i10);
        return zzj(objArr2, i10);
    }

    public static zzfyq zzu(Comparator comparator, Iterable iterable) {
        Collection zza2;
        if (iterable instanceof Collection) {
            zza2 = (Collection) iterable;
        } else {
            zza2 = zzfzg.zza(((zzfyq) iterable).listIterator(0));
        }
        Object[] array = zza2.toArray();
        int length = array.length;
        zzgaa.zzb(array, length);
        Arrays.sort(array, comparator);
        return zzj(array, length);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzfyl, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (zzfvm.zza(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!zzfvm.zza(it.next(), it2.next())) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = (i10 * 31) + get(i11).hashCode();
        }
        return i10;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzfyl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzfyl
    int zza(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // com.google.android.gms.internal.ads.zzfyl
    public final zzgaw zze() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzh */
    public zzfyq subList(int i10, int i11) {
        zzfvp.zzk(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        if (i12 == 0) {
            return zzgac.zza;
        }
        return new zzfyp(this, i10, i12);
    }

    @Override // java.util.List
    /* renamed from: zzv */
    public final zzgax listIterator(int i10) {
        zzfvp.zzb(i10, size(), TextureRenderKeys.KEY_IS_INDEX);
        if (isEmpty()) {
            return zza;
        }
        return new zzfyo(this, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzfyl
    @Deprecated
    public final zzfyq zzd() {
        return this;
    }
}

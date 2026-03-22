package com.google.android.gms.internal.ads;

import com.ss.texturerender.TextureRenderKeys;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgbs extends AbstractList implements RandomAccess, Serializable {
    final int[] zza;
    final int zzb;
    final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgbs(int[] iArr, int i10, int i11) {
        this.zza = iArr;
        this.zzb = i10;
        this.zzc = i11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if ((obj instanceof Integer) && zzgbt.zza(this.zza, ((Integer) obj).intValue(), this.zzb, this.zzc) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgbs) {
            zzgbs zzgbsVar = (zzgbs) obj;
            int i10 = this.zzc;
            int i11 = this.zzb;
            int i12 = zzgbsVar.zzc;
            int i13 = zzgbsVar.zzb;
            int i14 = i10 - i11;
            if (i12 - i13 != i14) {
                return false;
            }
            for (int i15 = 0; i15 < i14; i15++) {
                if (this.zza[i11 + i15] != zzgbsVar.zza[i13 + i15]) {
                    return false;
                }
            }
            return true;
        }
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        int i11 = this.zzc;
        int i12 = this.zzb;
        zzfvp.zza(i10, i11 - i12, TextureRenderKeys.KEY_IS_INDEX);
        return Integer.valueOf(this.zza[i12 + i10]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = this.zzb; i11 < this.zzc; i11++) {
            i10 = (i10 * 31) + this.zza[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.zza;
            int intValue = ((Integer) obj).intValue();
            int i10 = this.zzb;
            int zza = zzgbt.zza(iArr, intValue, i10, this.zzc);
            if (zza >= 0) {
                return zza - i10;
            }
            return -1;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.zza;
            int intValue = ((Integer) obj).intValue();
            int i10 = this.zzb;
            int i11 = this.zzc - 1;
            while (true) {
                if (i11 >= i10) {
                    if (iArr[i11] == intValue) {
                        break;
                    }
                    i11--;
                } else {
                    i11 = -1;
                    break;
                }
            }
            if (i11 >= 0) {
                return i11 - i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        int i11 = this.zzc;
        int i12 = this.zzb;
        Integer num = (Integer) obj;
        zzfvp.zza(i10, i11 - i12, TextureRenderKeys.KEY_IS_INDEX);
        int[] iArr = this.zza;
        int i13 = i12 + i10;
        int i14 = iArr[i13];
        num.getClass();
        iArr[i13] = num.intValue();
        return Integer.valueOf(i14);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc - this.zzb;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.spliterator(this.zza, this.zzb, this.zzc, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i10, int i11) {
        int i12 = this.zzc;
        int i13 = this.zzb;
        zzfvp.zzk(i10, i11, i12 - i13);
        if (i10 == i11) {
            return Collections.emptyList();
        }
        return new zzgbs(this.zza, i10 + i13, i13 + i11);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        int i10 = this.zzc;
        int i11 = this.zzb;
        StringBuilder sb2 = new StringBuilder((i10 - i11) * 5);
        sb2.append('[');
        int[] iArr = this.zza;
        sb2.append(iArr[i11]);
        while (true) {
            i11++;
            if (i11 < i10) {
                sb2.append(", ");
                sb2.append(iArr[i11]);
            } else {
                sb2.append(']');
                return sb2.toString();
            }
        }
    }
}

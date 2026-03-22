package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgzi extends zzgxl implements RandomAccess, zzgzp, zzhbb {
    private static final int[] zza;
    private static final zzgzi zzb;
    private int[] zzc;
    private int zzd;

    static {
        int[] iArr = new int[0];
        zza = iArr;
        zzb = new zzgzi(iArr, 0, false);
    }

    zzgzi() {
        this(zza, 0, true);
    }

    public static zzgzi zzg() {
        return zzb;
    }

    private static int zzk(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String zzl(int i10) {
        int i11 = this.zzd;
        return "Index:" + i10 + ", Size:" + i11;
    }

    private final void zzm(int i10) {
        if (i10 >= 0 && i10 < this.zzd) {
            return;
        }
        throw new IndexOutOfBoundsException(zzl(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        int intValue = ((Integer) obj).intValue();
        zzdJ();
        if (i10 >= 0 && i10 <= (i11 = this.zzd)) {
            int i12 = i10 + 1;
            int[] iArr = this.zzc;
            int length = iArr.length;
            if (i11 < length) {
                System.arraycopy(iArr, i10, iArr, i12, i11 - i10);
            } else {
                int[] iArr2 = new int[zzk(length)];
                System.arraycopy(this.zzc, 0, iArr2, 0, i10);
                System.arraycopy(this.zzc, i10, iArr2, i12, this.zzd - i10);
                this.zzc = iArr2;
            }
            this.zzc[i10] = intValue;
            this.zzd++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzl(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zzdJ();
        byte[] bArr = zzgzu.zzb;
        collection.getClass();
        if (!(collection instanceof zzgzi)) {
            return super.addAll(collection);
        }
        zzgzi zzgziVar = (zzgzi) collection;
        int i10 = zzgziVar.zzd;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.zzd;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            int[] iArr = this.zzc;
            if (i12 > iArr.length) {
                this.zzc = Arrays.copyOf(iArr, i12);
            }
            System.arraycopy(zzgziVar.zzc, 0, this.zzc, this.zzd, zzgziVar.zzd);
            this.zzd = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgzi)) {
            return super.equals(obj);
        }
        zzgzi zzgziVar = (zzgzi) obj;
        if (this.zzd != zzgziVar.zzd) {
            return false;
        }
        int[] iArr = zzgziVar.zzc;
        for (int i10 = 0; i10 < this.zzd; i10++) {
            if (this.zzc[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        zzm(i10);
        return Integer.valueOf(this.zzc[i10]);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.zzd; i11++) {
            i10 = (i10 * 31) + this.zzc[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = this.zzd;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.zzc[i11] == intValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        int i11;
        zzdJ();
        zzm(i10);
        int[] iArr = this.zzc;
        int i12 = iArr[i10];
        if (i10 < this.zzd - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i11 - i10) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        zzdJ();
        if (i11 >= i10) {
            int[] iArr = this.zzc;
            System.arraycopy(iArr, i11, iArr, i10, this.zzd - i11);
            this.zzd -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        return Integer.valueOf(zze(i10, ((Integer) obj).intValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zzd(int i10) {
        zzm(i10);
        return this.zzc[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final int zze(int i10, int i11) {
        zzdJ();
        zzm(i10);
        int[] iArr = this.zzc;
        int i12 = iArr[i10];
        iArr[i10] = i11;
        return i12;
    }

    @Override // com.google.android.gms.internal.ads.zzgzt
    /* renamed from: zzh */
    public final zzgzp zzf(int i10) {
        int[] copyOf;
        if (i10 >= this.zzd) {
            if (i10 == 0) {
                copyOf = zza;
            } else {
                copyOf = Arrays.copyOf(this.zzc, i10);
            }
            return new zzgzi(copyOf, this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgzp
    public final void zzi(int i10) {
        zzdJ();
        int i11 = this.zzd;
        int length = this.zzc.length;
        if (i11 == length) {
            int[] iArr = new int[zzk(length)];
            System.arraycopy(this.zzc, 0, iArr, 0, this.zzd);
            this.zzc = iArr;
        }
        int[] iArr2 = this.zzc;
        int i12 = this.zzd;
        this.zzd = i12 + 1;
        iArr2[i12] = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(int i10) {
        int length = this.zzc.length;
        if (i10 <= length) {
            return;
        }
        if (length != 0) {
            while (length < i10) {
                length = zzk(length);
            }
            this.zzc = Arrays.copyOf(this.zzc, length);
            return;
        }
        this.zzc = new int[Math.max(i10, 10)];
    }

    private zzgzi(int[] iArr, int i10, boolean z10) {
        super(z10);
        this.zzc = iArr;
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzi(((Integer) obj).intValue());
        return true;
    }
}

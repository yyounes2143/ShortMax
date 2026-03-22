package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgxp extends zzgxl implements RandomAccess, zzgzj, zzhbb {
    private static final boolean[] zza;
    private static final zzgxp zzb;
    private boolean[] zzc;
    private int zzd;

    static {
        boolean[] zArr = new boolean[0];
        zza = zArr;
        zzb = new zzgxp(zArr, 0, false);
    }

    zzgxp() {
        this(zza, 0, true);
    }

    public static zzgxp zzd() {
        return zzb;
    }

    private static int zzi(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String zzj(int i10) {
        int i11 = this.zzd;
        return "Index:" + i10 + ", Size:" + i11;
    }

    private final void zzk(int i10) {
        if (i10 >= 0 && i10 < this.zzd) {
            return;
        }
        throw new IndexOutOfBoundsException(zzj(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzdJ();
        if (i10 >= 0 && i10 <= (i11 = this.zzd)) {
            int i12 = i10 + 1;
            boolean[] zArr = this.zzc;
            int length = zArr.length;
            if (i11 < length) {
                System.arraycopy(zArr, i10, zArr, i12, i11 - i10);
            } else {
                boolean[] zArr2 = new boolean[zzi(length)];
                System.arraycopy(this.zzc, 0, zArr2, 0, i10);
                System.arraycopy(this.zzc, i10, zArr2, i12, this.zzd - i10);
                this.zzc = zArr2;
            }
            this.zzc[i10] = booleanValue;
            this.zzd++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzj(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zzdJ();
        byte[] bArr = zzgzu.zzb;
        collection.getClass();
        if (!(collection instanceof zzgxp)) {
            return super.addAll(collection);
        }
        zzgxp zzgxpVar = (zzgxp) collection;
        int i10 = zzgxpVar.zzd;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.zzd;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            boolean[] zArr = this.zzc;
            if (i12 > zArr.length) {
                this.zzc = Arrays.copyOf(zArr, i12);
            }
            System.arraycopy(zzgxpVar.zzc, 0, this.zzc, this.zzd, zzgxpVar.zzd);
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
        if (!(obj instanceof zzgxp)) {
            return super.equals(obj);
        }
        zzgxp zzgxpVar = (zzgxp) obj;
        if (this.zzd != zzgxpVar.zzd) {
            return false;
        }
        boolean[] zArr = zzgxpVar.zzc;
        for (int i10 = 0; i10 < this.zzd; i10++) {
            if (this.zzc[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        zzk(i10);
        return Boolean.valueOf(this.zzc[i10]);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.zzd; i11++) {
            i10 = (i10 * 31) + zzgzu.zza(this.zzc[i11]);
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.zzd;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.zzc[i11] == booleanValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        int i11;
        zzdJ();
        zzk(i10);
        boolean[] zArr = this.zzc;
        boolean z10 = zArr[i10];
        if (i10 < this.zzd - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (i11 - i10) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        zzdJ();
        if (i11 >= i10) {
            boolean[] zArr = this.zzc;
            System.arraycopy(zArr, i11, zArr, i10, this.zzd - i11);
            this.zzd -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzdJ();
        zzk(i10);
        boolean[] zArr = this.zzc;
        boolean z10 = zArr[i10];
        zArr[i10] = booleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgzt
    /* renamed from: zze */
    public final zzgzj zzf(int i10) {
        boolean[] copyOf;
        if (i10 >= this.zzd) {
            if (i10 == 0) {
                copyOf = zza;
            } else {
                copyOf = Arrays.copyOf(this.zzc, i10);
            }
            return new zzgxp(copyOf, this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zzg(boolean z10) {
        zzdJ();
        int i10 = this.zzd;
        int length = this.zzc.length;
        if (i10 == length) {
            boolean[] zArr = new boolean[zzi(length)];
            System.arraycopy(this.zzc, 0, zArr, 0, this.zzd);
            this.zzc = zArr;
        }
        boolean[] zArr2 = this.zzc;
        int i11 = this.zzd;
        this.zzd = i11 + 1;
        zArr2[i11] = z10;
    }

    public final boolean zzh(int i10) {
        zzk(i10);
        return this.zzc[i10];
    }

    private zzgxp(boolean[] zArr, int i10, boolean z10) {
        super(z10);
        this.zzc = zArr;
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzg(((Boolean) obj).booleanValue());
        return true;
    }
}

package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgyo extends zzgxl implements RandomAccess, zzgzk, zzhbb {
    private static final double[] zza;
    private static final zzgyo zzb;
    private double[] zzc;
    private int zzd;

    static {
        double[] dArr = new double[0];
        zza = dArr;
        zzb = new zzgyo(dArr, 0, false);
    }

    zzgyo() {
        this(zza, 0, true);
    }

    public static zzgyo zze() {
        return zzb;
    }

    private static int zzj(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String zzk(int i10) {
        int i11 = this.zzd;
        return "Index:" + i10 + ", Size:" + i11;
    }

    private final void zzl(int i10) {
        if (i10 >= 0 && i10 < this.zzd) {
            return;
        }
        throw new IndexOutOfBoundsException(zzk(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        double doubleValue = ((Double) obj).doubleValue();
        zzdJ();
        if (i10 >= 0 && i10 <= (i11 = this.zzd)) {
            int i12 = i10 + 1;
            double[] dArr = this.zzc;
            int length = dArr.length;
            if (i11 < length) {
                System.arraycopy(dArr, i10, dArr, i12, i11 - i10);
            } else {
                double[] dArr2 = new double[zzj(length)];
                System.arraycopy(this.zzc, 0, dArr2, 0, i10);
                System.arraycopy(this.zzc, i10, dArr2, i12, this.zzd - i10);
                this.zzc = dArr2;
            }
            this.zzc[i10] = doubleValue;
            this.zzd++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzk(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        zzdJ();
        byte[] bArr = zzgzu.zzb;
        collection.getClass();
        if (!(collection instanceof zzgyo)) {
            return super.addAll(collection);
        }
        zzgyo zzgyoVar = (zzgyo) collection;
        int i10 = zzgyoVar.zzd;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.zzd;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            double[] dArr = this.zzc;
            if (i12 > dArr.length) {
                this.zzc = Arrays.copyOf(dArr, i12);
            }
            System.arraycopy(zzgyoVar.zzc, 0, this.zzc, this.zzd, zzgyoVar.zzd);
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
        if (!(obj instanceof zzgyo)) {
            return super.equals(obj);
        }
        zzgyo zzgyoVar = (zzgyo) obj;
        if (this.zzd != zzgyoVar.zzd) {
            return false;
        }
        double[] dArr = zzgyoVar.zzc;
        for (int i10 = 0; i10 < this.zzd; i10++) {
            if (Double.doubleToLongBits(this.zzc[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        zzl(i10);
        return Double.valueOf(this.zzc[i10]);
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.zzd; i11++) {
            long doubleToLongBits = Double.doubleToLongBits(this.zzc[i11]);
            byte[] bArr = zzgzu.zzb;
            i10 = (i10 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i10 = this.zzd;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.zzc[i11] == doubleValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        int i11;
        zzdJ();
        zzl(i10);
        double[] dArr = this.zzc;
        double d10 = dArr[i10];
        if (i10 < this.zzd - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (i11 - i10) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        zzdJ();
        if (i11 >= i10) {
            double[] dArr = this.zzc;
            System.arraycopy(dArr, i11, dArr, i10, this.zzd - i11);
            this.zzd -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zzdJ();
        zzl(i10);
        double[] dArr = this.zzc;
        double d10 = dArr[i10];
        dArr[i10] = doubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    public final double zzd(int i10) {
        zzl(i10);
        return this.zzc[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgzt
    /* renamed from: zzg */
    public final zzgzk zzf(int i10) {
        double[] copyOf;
        if (i10 >= this.zzd) {
            if (i10 == 0) {
                copyOf = zza;
            } else {
                copyOf = Arrays.copyOf(this.zzc, i10);
            }
            return new zzgyo(copyOf, this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zzh(double d10) {
        zzdJ();
        int i10 = this.zzd;
        int length = this.zzc.length;
        if (i10 == length) {
            double[] dArr = new double[zzj(length)];
            System.arraycopy(this.zzc, 0, dArr, 0, this.zzd);
            this.zzc = dArr;
        }
        double[] dArr2 = this.zzc;
        int i11 = this.zzd;
        this.zzd = i11 + 1;
        dArr2[i11] = d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzi(int i10) {
        int length = this.zzc.length;
        if (i10 <= length) {
            return;
        }
        if (length != 0) {
            while (length < i10) {
                length = zzj(length);
            }
            this.zzc = Arrays.copyOf(this.zzc, length);
            return;
        }
        this.zzc = new double[Math.max(i10, 10)];
    }

    private zzgyo(double[] dArr, int i10, boolean z10) {
        super(z10);
        this.zzc = dArr;
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzh(((Double) obj).doubleValue());
        return true;
    }
}

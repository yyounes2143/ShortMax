package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhbd extends zzgxl implements RandomAccess {
    private static final Object[] zza;
    private static final zzhbd zzb;
    private Object[] zzc;
    private int zzd;

    static {
        Object[] objArr = new Object[0];
        zza = objArr;
        zzb = new zzhbd(objArr, 0, false);
    }

    zzhbd() {
        this(zza, 0, true);
    }

    public static zzhbd zzd() {
        return zzb;
    }

    private static int zzg(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String zzh(int i10) {
        int i11 = this.zzd;
        return "Index:" + i10 + ", Size:" + i11;
    }

    private final void zzi(int i10) {
        if (i10 >= 0 && i10 < this.zzd) {
            return;
        }
        throw new IndexOutOfBoundsException(zzh(i10));
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        zzdJ();
        if (i10 >= 0 && i10 <= (i11 = this.zzd)) {
            int i12 = i10 + 1;
            Object[] objArr = this.zzc;
            int length = objArr.length;
            if (i11 < length) {
                System.arraycopy(objArr, i10, objArr, i12, i11 - i10);
            } else {
                Object[] objArr2 = new Object[zzg(length)];
                System.arraycopy(this.zzc, 0, objArr2, 0, i10);
                System.arraycopy(this.zzc, i10, objArr2, i12, this.zzd - i10);
                this.zzc = objArr2;
            }
            this.zzc[i10] = obj;
            this.zzd++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzh(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        zzi(i10);
        return this.zzc[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        int i11;
        zzdJ();
        zzi(i10);
        Object[] objArr = this.zzc;
        Object obj = objArr[i10];
        if (i10 < this.zzd - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        zzdJ();
        zzi(i10);
        Object[] objArr = this.zzc;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(int i10) {
        int length = this.zzc.length;
        if (i10 <= length) {
            return;
        }
        if (length != 0) {
            while (length < i10) {
                length = zzg(length);
            }
            this.zzc = Arrays.copyOf(this.zzc, length);
            return;
        }
        this.zzc = new Object[Math.max(i10, 10)];
    }

    @Override // com.google.android.gms.internal.ads.zzgzt
    public final /* bridge */ /* synthetic */ zzgzt zzf(int i10) {
        Object[] copyOf;
        if (i10 >= this.zzd) {
            if (i10 == 0) {
                copyOf = zza;
            } else {
                copyOf = Arrays.copyOf(this.zzc, i10);
            }
            return new zzhbd(copyOf, this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    private zzhbd(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.zzc = objArr;
        this.zzd = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzdJ();
        int i10 = this.zzd;
        int length = this.zzc.length;
        if (i10 == length) {
            this.zzc = Arrays.copyOf(this.zzc, zzg(length));
        }
        Object[] objArr = this.zzc;
        int i11 = this.zzd;
        this.zzd = i11 + 1;
        objArr[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}

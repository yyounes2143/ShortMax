package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzana  reason: invalid package */
/* loaded from: classes4.dex */
final class zzana<E> extends zzajp<E> implements RandomAccess {
    private static final Object[] zza;
    private static final zzana<Object> zzb;
    private E[] zzc;
    private int zzd;

    static {
        Object[] objArr = new Object[0];
        zza = objArr;
        zzb = new zzana<>(objArr, 0, false);
    }

    zzana() {
        this(zza, 0, true);
    }

    private static int zzb(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String zzc(int i10) {
        int i11 = this.zzd;
        return "Index:" + i10 + ", Size:" + i11;
    }

    public static <E> zzana<E> zzd() {
        return (zzana<E>) zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajp, java.util.AbstractList, java.util.List
    public final void add(int i10, E e10) {
        int i11;
        zza();
        if (i10 >= 0 && i10 <= (i11 = this.zzd)) {
            E[] eArr = this.zzc;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) new Object[zzb(eArr.length)];
                System.arraycopy(this.zzc, 0, eArr2, 0, i10);
                System.arraycopy(this.zzc, i10, eArr2, i10 + 1, this.zzd - i10);
                this.zzc = eArr2;
            }
            this.zzc[i10] = e10;
            this.zzd++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzc(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i10) {
        zzd(i10);
        return this.zzc[i10];
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajp, java.util.AbstractList, java.util.List
    public final E remove(int i10) {
        int i11;
        zza();
        zzd(i10);
        E[] eArr = this.zzc;
        E e10 = eArr[i10];
        if (i10 < this.zzd - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (i11 - i10) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajp, java.util.AbstractList, java.util.List
    public final E set(int i10, E e10) {
        zza();
        zzd(i10);
        E[] eArr = this.zzc;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzalm
    public final /* synthetic */ zzalm zza(int i10) {
        Object[] copyOf;
        if (i10 >= this.zzd) {
            if (i10 == 0) {
                copyOf = zza;
            } else {
                copyOf = Arrays.copyOf(this.zzc, i10);
            }
            return new zzana(copyOf, this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    private zzana(E[] eArr, int i10, boolean z10) {
        super(z10);
        this.zzc = eArr;
        this.zzd = i10;
    }

    private final void zzd(int i10) {
        if (i10 < 0 || i10 >= this.zzd) {
            throw new IndexOutOfBoundsException(zzc(i10));
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzajp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        zza();
        int i10 = this.zzd;
        E[] eArr = this.zzc;
        if (i10 == eArr.length) {
            this.zzc = (E[]) Arrays.copyOf(this.zzc, zzb(eArr.length));
        }
        E[] eArr2 = this.zzc;
        int i11 = this.zzd;
        this.zzd = i11 + 1;
        eArr2[i11] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }
}

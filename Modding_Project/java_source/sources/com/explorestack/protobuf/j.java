package com.explorestack.protobuf;

import com.explorestack.protobuf.i0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BooleanArrayList.java */
/* loaded from: classes3.dex */
public final class j extends c<Boolean> implements i0.a, RandomAccess, k1 {

    /* renamed from: d  reason: collision with root package name */
    private static final j f14412d;

    /* renamed from: b  reason: collision with root package name */
    private boolean[] f14413b;

    /* renamed from: c  reason: collision with root package name */
    private int f14414c;

    static {
        j jVar = new j(new boolean[0], 0);
        f14412d = jVar;
        jVar.makeImmutable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j() {
        this(new boolean[10], 0);
    }

    private void e(int i10, boolean z10) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f14414c)) {
            boolean[] zArr = this.f14413b;
            if (i11 < zArr.length) {
                System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
            } else {
                boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i10);
                System.arraycopy(this.f14413b, i10, zArr2, i10 + 1, this.f14414c - i10);
                this.f14413b = zArr2;
            }
            this.f14413b[i10] = z10;
            this.f14414c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    public static j f() {
        return f14412d;
    }

    private void g(int i10) {
        if (i10 >= 0 && i10 < this.f14414c) {
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    private String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f14414c;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        a();
        i0.a(collection);
        if (!(collection instanceof j)) {
            return super.addAll(collection);
        }
        j jVar = (j) collection;
        int i10 = jVar.f14414c;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f14414c;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            boolean[] zArr = this.f14413b;
            if (i12 > zArr.length) {
                this.f14413b = Arrays.copyOf(zArr, i12);
            }
            System.arraycopy(jVar.f14413b, 0, this.f14413b, this.f14414c, jVar.f14414c);
            this.f14414c = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public void addBoolean(boolean z10) {
        a();
        int i10 = this.f14414c;
        boolean[] zArr = this.f14413b;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f14413b = zArr2;
        }
        boolean[] zArr3 = this.f14413b;
        int i11 = this.f14414c;
        this.f14414c = i11 + 1;
        zArr3[i11] = z10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c */
    public void add(int i10, Boolean bool) {
        e(i10, bool.booleanValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: d */
    public boolean add(Boolean bool) {
        addBoolean(bool.booleanValue());
        return true;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return super.equals(obj);
        }
        j jVar = (j) obj;
        if (this.f14414c != jVar.f14414c) {
            return false;
        }
        boolean[] zArr = jVar.f14413b;
        for (int i10 = 0; i10 < this.f14414c; i10++) {
            if (this.f14413b[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public boolean getBoolean(int i10) {
        g(i10);
        return this.f14413b[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: h */
    public Boolean get(int i10) {
        return Boolean.valueOf(getBoolean(i10));
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f14414c; i11++) {
            i10 = (i10 * 31) + i0.d(this.f14413b[i11]);
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f14413b[i10] == booleanValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.List
    /* renamed from: j */
    public Boolean remove(int i10) {
        int i11;
        a();
        g(i10);
        boolean[] zArr = this.f14413b;
        boolean z10 = zArr[i10];
        if (i10 < this.f14414c - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (i11 - i10) - 1);
        }
        this.f14414c--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: l */
    public Boolean set(int i10, Boolean bool) {
        return Boolean.valueOf(setBoolean(i10, bool.booleanValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        a();
        if (i11 >= i10) {
            boolean[] zArr = this.f14413b;
            System.arraycopy(zArr, i11, zArr, i10, this.f14414c - i11);
            this.f14414c -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public boolean setBoolean(int i10, boolean z10) {
        a();
        g(i10);
        boolean[] zArr = this.f14413b;
        boolean z11 = zArr[i10];
        zArr[i10] = z10;
        return z11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14414c;
    }

    private j(boolean[] zArr, int i10) {
        this.f14413b = zArr;
        this.f14414c = i10;
    }

    @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
    /* renamed from: mutableCopyWithCapacity */
    public i0.j<Boolean> mutableCopyWithCapacity2(int i10) {
        if (i10 >= this.f14414c) {
            return new j(Arrays.copyOf(this.f14413b, i10), this.f14414c);
        }
        throw new IllegalArgumentException();
    }
}

package com.explorestack.protobuf;

import com.explorestack.protobuf.i0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LongArrayList.java */
/* loaded from: classes3.dex */
public final class q0 extends c<Long> implements i0.i, RandomAccess, k1 {

    /* renamed from: d  reason: collision with root package name */
    private static final q0 f14604d;

    /* renamed from: b  reason: collision with root package name */
    private long[] f14605b;

    /* renamed from: c  reason: collision with root package name */
    private int f14606c;

    static {
        q0 q0Var = new q0(new long[0], 0);
        f14604d = q0Var;
        q0Var.makeImmutable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0() {
        this(new long[10], 0);
    }

    private void e(int i10, long j10) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f14606c)) {
            long[] jArr = this.f14605b;
            if (i11 < jArr.length) {
                System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
            } else {
                long[] jArr2 = new long[((i11 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i10);
                System.arraycopy(this.f14605b, i10, jArr2, i10 + 1, this.f14606c - i10);
                this.f14605b = jArr2;
            }
            this.f14605b[i10] = j10;
            this.f14606c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    public static q0 f() {
        return f14604d;
    }

    private void g(int i10) {
        if (i10 >= 0 && i10 < this.f14606c) {
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    private String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f14606c;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        a();
        i0.a(collection);
        if (!(collection instanceof q0)) {
            return super.addAll(collection);
        }
        q0 q0Var = (q0) collection;
        int i10 = q0Var.f14606c;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f14606c;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            long[] jArr = this.f14605b;
            if (i12 > jArr.length) {
                this.f14605b = Arrays.copyOf(jArr, i12);
            }
            System.arraycopy(q0Var.f14605b, 0, this.f14605b, this.f14606c, q0Var.f14606c);
            this.f14606c = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.explorestack.protobuf.i0.i
    public void addLong(long j10) {
        a();
        int i10 = this.f14606c;
        long[] jArr = this.f14605b;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f14605b = jArr2;
        }
        long[] jArr3 = this.f14605b;
        int i11 = this.f14606c;
        this.f14606c = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c */
    public void add(int i10, Long l10) {
        e(i10, l10.longValue());
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
    public boolean add(Long l10) {
        addLong(l10.longValue());
        return true;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return super.equals(obj);
        }
        q0 q0Var = (q0) obj;
        if (this.f14606c != q0Var.f14606c) {
            return false;
        }
        long[] jArr = q0Var.f14605b;
        for (int i10 = 0; i10 < this.f14606c; i10++) {
            if (this.f14605b[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.explorestack.protobuf.i0.i
    public long getLong(int i10) {
        g(i10);
        return this.f14605b[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: h */
    public Long get(int i10) {
        return Long.valueOf(getLong(i10));
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f14606c; i11++) {
            i10 = (i10 * 31) + i0.i(this.f14605b[i11]);
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f14605b[i10] == longValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.List
    /* renamed from: j */
    public Long remove(int i10) {
        int i11;
        a();
        g(i10);
        long[] jArr = this.f14605b;
        long j10 = jArr[i10];
        if (i10 < this.f14606c - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.f14606c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: l */
    public Long set(int i10, Long l10) {
        return Long.valueOf(setLong(i10, l10.longValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        a();
        if (i11 >= i10) {
            long[] jArr = this.f14605b;
            System.arraycopy(jArr, i11, jArr, i10, this.f14606c - i11);
            this.f14606c -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.explorestack.protobuf.i0.i
    public long setLong(int i10, long j10) {
        a();
        g(i10);
        long[] jArr = this.f14605b;
        long j11 = jArr[i10];
        jArr[i10] = j10;
        return j11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14606c;
    }

    private q0(long[] jArr, int i10) {
        this.f14605b = jArr;
        this.f14606c = i10;
    }

    @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
    /* renamed from: mutableCopyWithCapacity */
    public i0.j<Long> mutableCopyWithCapacity2(int i10) {
        if (i10 >= this.f14606c) {
            return new q0(Arrays.copyOf(this.f14605b, i10), this.f14606c);
        }
        throw new IllegalArgumentException();
    }
}

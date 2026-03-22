package com.explorestack.protobuf;

import com.explorestack.protobuf.i0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatArrayList.java */
/* loaded from: classes3.dex */
public final class f0 extends c<Float> implements i0.f, RandomAccess, k1 {

    /* renamed from: d  reason: collision with root package name */
    private static final f0 f14377d;

    /* renamed from: b  reason: collision with root package name */
    private float[] f14378b;

    /* renamed from: c  reason: collision with root package name */
    private int f14379c;

    static {
        f0 f0Var = new f0(new float[0], 0);
        f14377d = f0Var;
        f0Var.makeImmutable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0() {
        this(new float[10], 0);
    }

    private void e(int i10, float f10) {
        int i11;
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f14379c)) {
            float[] fArr = this.f14378b;
            if (i11 < fArr.length) {
                System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
            } else {
                float[] fArr2 = new float[((i11 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i10);
                System.arraycopy(this.f14378b, i10, fArr2, i10 + 1, this.f14379c - i10);
                this.f14378b = fArr2;
            }
            this.f14378b[i10] = f10;
            this.f14379c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    public static f0 f() {
        return f14377d;
    }

    private void g(int i10) {
        if (i10 >= 0 && i10 < this.f14379c) {
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    private String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f14379c;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        a();
        i0.a(collection);
        if (!(collection instanceof f0)) {
            return super.addAll(collection);
        }
        f0 f0Var = (f0) collection;
        int i10 = f0Var.f14379c;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f14379c;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            float[] fArr = this.f14378b;
            if (i12 > fArr.length) {
                this.f14378b = Arrays.copyOf(fArr, i12);
            }
            System.arraycopy(f0Var.f14378b, 0, this.f14378b, this.f14379c, f0Var.f14379c);
            this.f14379c = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public void addFloat(float f10) {
        a();
        int i10 = this.f14379c;
        float[] fArr = this.f14378b;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f14378b = fArr2;
        }
        float[] fArr3 = this.f14378b;
        int i11 = this.f14379c;
        this.f14379c = i11 + 1;
        fArr3[i11] = f10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: c */
    public void add(int i10, Float f10) {
        e(i10, f10.floatValue());
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
    public boolean add(Float f10) {
        addFloat(f10.floatValue());
        return true;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return super.equals(obj);
        }
        f0 f0Var = (f0) obj;
        if (this.f14379c != f0Var.f14379c) {
            return false;
        }
        float[] fArr = f0Var.f14378b;
        for (int i10 = 0; i10 < this.f14379c; i10++) {
            if (Float.floatToIntBits(this.f14378b[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public float getFloat(int i10) {
        g(i10);
        return this.f14378b[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: h */
    public Float get(int i10) {
        return Float.valueOf(getFloat(i10));
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f14379c; i11++) {
            i10 = (i10 * 31) + Float.floatToIntBits(this.f14378b[i11]);
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f14378b[i10] == floatValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.explorestack.protobuf.c, java.util.AbstractList, java.util.List
    /* renamed from: j */
    public Float remove(int i10) {
        int i11;
        a();
        g(i10);
        float[] fArr = this.f14378b;
        float f10 = fArr[i10];
        if (i10 < this.f14379c - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (i11 - i10) - 1);
        }
        this.f14379c--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: l */
    public Float set(int i10, Float f10) {
        return Float.valueOf(setFloat(i10, f10.floatValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        a();
        if (i11 >= i10) {
            float[] fArr = this.f14378b;
            System.arraycopy(fArr, i11, fArr, i10, this.f14379c - i11);
            this.f14379c -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public float setFloat(int i10, float f10) {
        a();
        g(i10);
        float[] fArr = this.f14378b;
        float f11 = fArr[i10];
        fArr[i10] = f10;
        return f11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14379c;
    }

    private f0(float[] fArr, int i10) {
        this.f14378b = fArr;
        this.f14379c = i10;
    }

    @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
    /* renamed from: mutableCopyWithCapacity */
    public i0.j<Float> mutableCopyWithCapacity2(int i10) {
        if (i10 >= this.f14379c) {
            return new f0(Arrays.copyOf(this.f14378b, i10), this.f14379c);
        }
        throw new IllegalArgumentException();
    }
}

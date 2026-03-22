package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class RegularImmutableSet<E> extends ImmutableSet<E> {

    /* renamed from: h  reason: collision with root package name */
    private static final Object[] f20256h;

    /* renamed from: i  reason: collision with root package name */
    static final RegularImmutableSet<Object> f20257i;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f20258c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f20259d;

    /* renamed from: e  reason: collision with root package name */
    final transient Object[] f20260e;

    /* renamed from: f  reason: collision with root package name */
    private final transient int f20261f;

    /* renamed from: g  reason: collision with root package name */
    private final transient int f20262g;

    static {
        Object[] objArr = new Object[0];
        f20256h = objArr;
        f20257i = new RegularImmutableSet<>(objArr, 0, objArr, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegularImmutableSet(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f20258c = objArr;
        this.f20259d = i10;
        this.f20260e = objArr2;
        this.f20261f = i11;
        this.f20262g = i12;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        Object[] objArr = this.f20260e;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int c10 = k.c(obj);
        while (true) {
            int i10 = c10 & this.f20261f;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            c10 = i10 + 1;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    int e(Object[] objArr, int i10) {
        System.arraycopy(this.f20258c, 0, objArr, i10, this.f20262g);
        return i10 + this.f20262g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] f() {
        return this.f20258c;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int g() {
        return this.f20262g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int h() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f20259d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean i() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: j */
    public y<E> iterator() {
        return d().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f20262g;
    }

    @Override // com.google.common.collect.ImmutableSet
    ImmutableList<E> v() {
        return ImmutableList.q(this.f20258c, this.f20262g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean y() {
        return true;
    }
}

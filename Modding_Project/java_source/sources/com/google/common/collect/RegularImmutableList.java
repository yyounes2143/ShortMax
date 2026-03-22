package com.google.common.collect;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class RegularImmutableList<E> extends ImmutableList<E> {

    /* renamed from: e  reason: collision with root package name */
    static final ImmutableList<Object> f20239e = new RegularImmutableList(new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f20240c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f20241d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegularImmutableList(Object[] objArr, int i10) {
        this.f20240c = objArr;
        this.f20241d = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int e(Object[] objArr, int i10) {
        System.arraycopy(this.f20240c, 0, objArr, i10, this.f20241d);
        return i10 + this.f20241d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] f() {
        return this.f20240c;
    }

    @Override // com.google.common.collect.ImmutableCollection
    int g() {
        return this.f20241d;
    }

    @Override // java.util.List
    public E get(int i10) {
        h7.k.h(i10, this.f20241d);
        E e10 = (E) this.f20240c[i10];
        Objects.requireNonNull(e10);
        return e10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int h() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean i() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f20241d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}

package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class SingletonImmutableSet<E> extends ImmutableSet<E> {

    /* renamed from: c  reason: collision with root package name */
    final transient E f20265c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingletonImmutableSet(E e10) {
        this.f20265c = (E) h7.k.j(e10);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f20265c.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public ImmutableList<E> d() {
        return ImmutableList.B(this.f20265c);
    }

    @Override // com.google.common.collect.ImmutableCollection
    int e(Object[] objArr, int i10) {
        objArr[i10] = this.f20265c;
        return i10 + 1;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f20265c.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean i() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: j */
    public y<E> iterator() {
        return Iterators.q(this.f20265c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.f20265c.toString() + ']';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return super.writeReplace();
    }
}

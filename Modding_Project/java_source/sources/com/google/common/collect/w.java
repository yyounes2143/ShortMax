package com.google.common.collect;

import java.util.Iterator;
/* compiled from: TransformedIterator.java */
/* loaded from: classes5.dex */
abstract class w<F, T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<? extends F> f20295a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Iterator<? extends F> it) {
        this.f20295a = (Iterator) h7.k.j(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T a(F f10);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f20295a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f20295a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f20295a.remove();
    }
}

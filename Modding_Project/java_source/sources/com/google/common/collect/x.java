package com.google.common.collect;

import java.util.ListIterator;
/* compiled from: TransformedListIterator.java */
/* loaded from: classes5.dex */
abstract class x<F, T> extends w<F, T> implements ListIterator<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public x(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    private ListIterator<? extends F> b() {
        return (ListIterator) this.f20295a;
    }

    @Override // java.util.ListIterator
    public void add(T t10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return a(b().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(T t10) {
        throw new UnsupportedOperationException();
    }
}

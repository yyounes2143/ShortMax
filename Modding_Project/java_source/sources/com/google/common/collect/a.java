package com.google.common.collect;

import java.util.NoSuchElementException;
/* compiled from: AbstractIndexedListIterator.java */
/* loaded from: classes5.dex */
abstract class a<E> extends z<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f20266a;

    /* renamed from: b  reason: collision with root package name */
    private int f20267b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i10, int i11) {
        h7.k.l(i11, i10);
        this.f20266a = i10;
        this.f20267b = i11;
    }

    protected abstract E a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        if (this.f20267b < this.f20266a) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.f20267b > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i10 = this.f20267b;
            this.f20267b = i10 + 1;
            return a(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f20267b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i10 = this.f20267b - 1;
            this.f20267b = i10;
            return a(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f20267b - 1;
    }
}

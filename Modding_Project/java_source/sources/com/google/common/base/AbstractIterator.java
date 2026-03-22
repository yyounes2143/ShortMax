package com.google.common.base;

import h7.k;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
abstract class AbstractIterator<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private State f20039a = State.NOT_READY;

    /* renamed from: b  reason: collision with root package name */
    private T f20040b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f20039a = State.FAILED;
        this.f20040b = a();
        if (this.f20039a != State.DONE) {
            this.f20039a = State.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f20039a = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z10;
        if (this.f20039a != State.FAILED) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.o(z10);
        int ordinal = this.f20039a.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal == 2) {
            return false;
        }
        return c();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f20039a = State.NOT_READY;
            T t10 = (T) a.a(this.f20040b);
            this.f20040b = null;
            return t10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

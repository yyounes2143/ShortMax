package com.google.common.collect;

import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public abstract class AbstractIterator<T> extends y<T> {

    /* renamed from: a  reason: collision with root package name */
    private State f20065a = State.NOT_READY;

    /* renamed from: b  reason: collision with root package name */
    private T f20066b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean c() {
        this.f20065a = State.FAILED;
        this.f20066b = a();
        if (this.f20065a != State.DONE) {
            this.f20065a = State.READY;
            return true;
        }
        return false;
    }

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f20065a = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z10;
        if (this.f20065a != State.FAILED) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.o(z10);
        int ordinal = this.f20065a.ordinal();
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
            this.f20065a = State.NOT_READY;
            T t10 = (T) r.a(this.f20066b);
            this.f20066b = null;
            return t10;
        }
        throw new NoSuchElementException();
    }
}

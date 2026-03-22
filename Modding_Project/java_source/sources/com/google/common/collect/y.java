package com.google.common.collect;

import java.util.Iterator;
/* compiled from: UnmodifiableIterator.java */
/* loaded from: classes5.dex */
public abstract class y<E> implements Iterator<E> {
    @Override // java.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: AbstractListIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class AbstractListIterator<E> implements ListIterator<E>, KMappedMarker {
    public static final int $stable = 8;
    private int index;
    private int size;

    public AbstractListIterator(int i10, int i11) {
        this.index = i10;
        this.size = i11;
    }

    @Override // java.util.ListIterator
    public void add(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void checkHasNext$runtime() {
        if (hasNext()) {
            return;
        }
        throw new NoSuchElementException();
    }

    public final void checkHasPrevious$runtime() {
        if (hasPrevious()) {
            return;
        }
        throw new NoSuchElementException();
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getSize() {
        return this.size;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.size) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        if (this.index > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.index;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.index - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public void set(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void setSize(int i10) {
        this.size = i10;
    }
}

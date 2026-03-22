package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
/* compiled from: AbstractListIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SingleElementListIterator<E> extends AbstractListIterator<E> {
    public static final int $stable = 8;
    private final E element;

    public SingleElementListIterator(E e10, int i10) {
        super(i10, 1);
        this.element = e10;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public E next() {
        checkHasNext$runtime();
        setIndex(getIndex() + 1);
        return this.element;
    }

    @Override // java.util.ListIterator
    public E previous() {
        checkHasPrevious$runtime();
        setIndex(getIndex() - 1);
        return this.element;
    }
}

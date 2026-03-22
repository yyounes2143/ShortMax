package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentVectorIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PersistentVectorIterator<T> extends AbstractListIterator<T> {
    public static final int $stable = 8;
    @NotNull
    private final T[] tail;
    @NotNull
    private final TrieIterator<T> trieIterator;

    public PersistentVectorIterator(@NotNull Object[] objArr, @NotNull T[] tArr, int i10, int i11, int i12) {
        super(i10, i11);
        this.tail = tArr;
        int rootSize = UtilsKt.rootSize(i11);
        this.trieIterator = new TrieIterator<>(objArr, e.j(i10, rootSize), rootSize, i12);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public T next() {
        checkHasNext$runtime();
        if (this.trieIterator.hasNext()) {
            setIndex(getIndex() + 1);
            return this.trieIterator.next();
        }
        T[] tArr = this.tail;
        int index = getIndex();
        setIndex(index + 1);
        return tArr[index - this.trieIterator.getSize()];
    }

    @Override // java.util.ListIterator
    public T previous() {
        checkHasPrevious$runtime();
        if (getIndex() > this.trieIterator.getSize()) {
            T[] tArr = this.tail;
            setIndex(getIndex() - 1);
            return tArr[getIndex() - this.trieIterator.getSize()];
        }
        setIndex(getIndex() - 1);
        return this.trieIterator.previous();
    }
}

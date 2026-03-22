package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferIterator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class BufferIterator<T> extends AbstractListIterator<T> {
    public static final int $stable = 8;
    @NotNull
    private final T[] buffer;

    public BufferIterator(@NotNull T[] tArr, int i10, int i11) {
        super(i10, i11);
        this.buffer = tArr;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public T next() {
        if (hasNext()) {
            T[] tArr = this.buffer;
            int index = getIndex();
            setIndex(index + 1);
            return tArr[index];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public T previous() {
        if (hasPrevious()) {
            T[] tArr = this.buffer;
            setIndex(getIndex() - 1);
            return tArr[getIndex()];
        }
        throw new NoSuchElementException();
    }
}

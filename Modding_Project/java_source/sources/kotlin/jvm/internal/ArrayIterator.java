package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterator.kt */
@Metadata
/* loaded from: classes8.dex */
final class ArrayIterator<T> implements Iterator<T>, KMappedMarker {
    @NotNull
    private final T[] array;
    private int index;

    public ArrayIterator(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.array = array;
    }

    @NotNull
    public final T[] getArray() {
        return this.array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.array.length) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.array;
            int i10 = this.index;
            this.index = i10 + 1;
            return tArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.index--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

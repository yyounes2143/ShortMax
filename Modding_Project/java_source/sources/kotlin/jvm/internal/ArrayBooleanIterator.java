package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.u;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata
/* loaded from: classes8.dex */
final class ArrayBooleanIterator extends u {
    @NotNull
    private final boolean[] array;
    private int index;

    public ArrayBooleanIterator(@NotNull boolean[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.array = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.index < this.array.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.u
    public boolean nextBoolean() {
        try {
            boolean[] zArr = this.array;
            int i10 = this.index;
            this.index = i10 + 1;
            return zArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.index--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}

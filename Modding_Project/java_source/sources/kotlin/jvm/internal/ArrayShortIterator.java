package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.c1;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata
/* loaded from: classes8.dex */
final class ArrayShortIterator extends c1 {
    @NotNull
    private final short[] array;
    private int index;

    public ArrayShortIterator(@NotNull short[] array) {
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

    @Override // kotlin.collections.c1
    public short nextShort() {
        try {
            short[] sArr = this.array;
            int i10 = this.index;
            this.index = i10 + 1;
            return sArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.index--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}

package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.m0;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata
/* loaded from: classes8.dex */
final class ArrayIntIterator extends m0 {
    @NotNull
    private final int[] array;
    private int index;

    public ArrayIntIterator(@NotNull int[] array) {
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

    @Override // kotlin.collections.m0
    public int nextInt() {
        try {
            int[] iArr = this.array;
            int i10 = this.index;
            this.index = i10 + 1;
            return iArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.index--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}

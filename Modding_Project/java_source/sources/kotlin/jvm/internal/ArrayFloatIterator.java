package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.j0;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata
/* loaded from: classes8.dex */
final class ArrayFloatIterator extends j0 {
    @NotNull
    private final float[] array;
    private int index;

    public ArrayFloatIterator(@NotNull float[] array) {
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

    @Override // kotlin.collections.j0
    public float nextFloat() {
        try {
            float[] fArr = this.array;
            int i10 = this.index;
            this.index = i10 + 1;
            return fArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.index--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}

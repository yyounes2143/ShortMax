package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata
/* loaded from: classes8.dex */
final class ArrayByteIterator extends v {
    @NotNull
    private final byte[] array;
    private int index;

    public ArrayByteIterator(@NotNull byte[] array) {
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

    @Override // kotlin.collections.v
    public byte nextByte() {
        try {
            byte[] bArr = this.array;
            int i10 = this.index;
            this.index = i10 + 1;
            return bArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.index--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }
}

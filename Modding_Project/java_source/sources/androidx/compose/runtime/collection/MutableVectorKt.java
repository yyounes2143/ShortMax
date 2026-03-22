package androidx.compose.runtime.collection;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MutableVector.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMutableVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,1116:1\n1085#1,2:1117\n*S KotlinDebug\n*F\n+ 1 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1107#1:1117,2\n*E\n"})
/* loaded from: classes.dex */
public final class MutableVectorKt {
    public static final /* synthetic */ <T> MutableVector<T> MutableVector(int i10) {
        Intrinsics.reifiedOperationMarker(0, "T?");
        return new MutableVector<>(new Object[i10], 0);
    }

    public static /* synthetic */ MutableVector MutableVector$default(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 16;
        }
        Intrinsics.reifiedOperationMarker(0, "T?");
        return new MutableVector(new Object[i10], 0);
    }

    public static final void checkIndex(@NotNull List<?> list, int i10) {
        int size = list.size();
        if (i10 < 0 || i10 >= size) {
            throwListIndexOutOfBoundsException(i10, size);
        }
    }

    public static final void checkSubIndex(@NotNull List<?> list, int i10, int i11) {
        if (i10 > i11) {
            throwReversedIndicesException(i10, i11);
        }
        if (i10 < 0) {
            throwNegativeIndexException(i10);
        }
        if (i11 > list.size()) {
            throwOutOfRangeException(i11, list.size());
        }
    }

    public static final /* synthetic */ <T> MutableVector<T> mutableVectorOf(T... tArr) {
        return new MutableVector<>(tArr, tArr.length);
    }

    private static final void throwListIndexOutOfBoundsException(int i10, int i11) {
        throw new IndexOutOfBoundsException("Index " + i10 + " is out of bounds. The list has " + i11 + " elements.");
    }

    private static final void throwNegativeIndexException(int i10) {
        throw new IndexOutOfBoundsException("fromIndex (" + i10 + ") is less than 0.");
    }

    private static final void throwOutOfRangeException(int i10, int i11) {
        throw new IndexOutOfBoundsException("toIndex (" + i10 + ") is more than than the list size (" + i11 + ')');
    }

    private static final void throwReversedIndicesException(int i10, int i11) {
        throw new IllegalArgumentException("Indices are out of order. fromIndex (" + i10 + ") is greater than toIndex (" + i11 + ").");
    }

    public static final /* synthetic */ <T> MutableVector<T> MutableVector(int i10, Function1<? super Integer, ? extends T> function1) {
        Intrinsics.reifiedOperationMarker(0, "T");
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = function1.invoke(Integer.valueOf(i11));
        }
        return new MutableVector<>(objArr, i10);
    }

    public static final /* synthetic */ <T> MutableVector<T> mutableVectorOf() {
        Intrinsics.reifiedOperationMarker(0, "T?");
        return new MutableVector<>(new Object[16], 0);
    }
}

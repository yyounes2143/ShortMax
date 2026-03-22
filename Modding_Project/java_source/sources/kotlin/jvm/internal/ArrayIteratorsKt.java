package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.collections.c1;
import kotlin.collections.h0;
import kotlin.collections.j0;
import kotlin.collections.m0;
import kotlin.collections.n0;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.collections.w;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterators.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ArrayIteratorsKt {
    @NotNull
    public static final v iterator(@NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayByteIterator(array);
    }

    @NotNull
    public static final w iterator(@NotNull char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayCharIterator(array);
    }

    @NotNull
    public static final c1 iterator(@NotNull short[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayShortIterator(array);
    }

    @NotNull
    public static final m0 iterator(@NotNull int[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayIntIterator(array);
    }

    @NotNull
    public static final n0 iterator(@NotNull long[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayLongIterator(array);
    }

    @NotNull
    public static final j0 iterator(@NotNull float[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayFloatIterator(array);
    }

    @NotNull
    public static final h0 iterator(@NotNull double[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayDoubleIterator(array);
    }

    @NotNull
    public static final u iterator(@NotNull boolean[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayBooleanIterator(array);
    }
}

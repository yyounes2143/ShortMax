package androidx.collection.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContainerHelpers.kt */
@Metadata
/* loaded from: classes.dex */
public final class ContainerHelpersKt {
    @NotNull
    public static final int[] EMPTY_INTS = new int[0];
    @NotNull
    public static final long[] EMPTY_LONGS = new long[0];
    @NotNull
    public static final Object[] EMPTY_OBJECTS = new Object[0];

    public static final int binarySearch(@NotNull int[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        int i12 = i10 - 1;
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) >>> 1;
            int i15 = array[i14];
            if (i15 < i11) {
                i13 = i14 + 1;
            } else if (i15 <= i11) {
                return i14;
            } else {
                i12 = i14 - 1;
            }
        }
        return ~i13;
    }

    public static final boolean equal(@Nullable Object obj, @Nullable Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    public static final int idealByteArraySize(int i10) {
        for (int i11 = 4; i11 < 32; i11++) {
            int i12 = (1 << i11) - 12;
            if (i10 <= i12) {
                return i12;
            }
        }
        return i10;
    }

    public static final int idealIntArraySize(int i10) {
        return idealByteArraySize(i10 * 4) / 4;
    }

    public static final int idealLongArraySize(int i10) {
        return idealByteArraySize(i10 * 8) / 8;
    }

    public static final int binarySearch(@NotNull long[] array, int i10, long j10) {
        Intrinsics.checkNotNullParameter(array, "array");
        int i11 = i10 - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            int i14 = (array[i13] > j10 ? 1 : (array[i13] == j10 ? 0 : -1));
            if (i14 < 0) {
                i12 = i13 + 1;
            } else if (i14 <= 0) {
                return i13;
            } else {
                i11 = i13 - 1;
            }
        }
        return ~i12;
    }
}

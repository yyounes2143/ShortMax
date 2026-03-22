package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotId.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotId_jvmKt {
    public static final long SnapshotIdInvalidValue = -1;
    public static final long SnapshotIdMax = Long.MAX_VALUE;
    public static final int SnapshotIdSize = 64;
    public static final long SnapshotIdZero = 0;

    public static final int binarySearch(@NotNull long[] jArr, long j10) {
        int length = jArr.length - 1;
        int i10 = 0;
        while (i10 <= length) {
            int i11 = (i10 + length) >>> 1;
            int i12 = (j10 > jArr[i11] ? 1 : (j10 == jArr[i11] ? 0 : -1));
            if (i12 > 0) {
                i10 = i11 + 1;
            } else if (i12 < 0) {
                length = i11 - 1;
            } else {
                return i11;
            }
        }
        return -(i10 + 1);
    }

    public static final int compareTo(long j10, long j11) {
        return Intrinsics.compare(j10, j11);
    }

    public static final void copyInto(@NotNull long[] jArr, @NotNull long[] jArr2) {
        kotlin.collections.n.t(jArr, jArr2, 0, 0, 0, 12, null);
    }

    public static final long div(long j10, int i10) {
        return j10 / i10;
    }

    public static final long first(@NotNull long[] jArr) {
        return jArr[0];
    }

    public static final void forEach(@NotNull long[] jArr, @NotNull Function1<? super Long, Unit> function1) {
        for (long j10 : jArr) {
            function1.invoke(Long.valueOf(j10));
        }
    }

    public static final long get(@NotNull long[] jArr, int i10) {
        return jArr[i10];
    }

    public static final int getSize(@NotNull long[] jArr) {
        return jArr.length;
    }

    public static final long minus(long j10, int i10) {
        return j10 - i10;
    }

    public static final long plus(long j10, int i10) {
        return j10 + i10;
    }

    public static final void set(@NotNull long[] jArr, int i10, long j10) {
        jArr[i10] = j10;
    }

    @NotNull
    public static final long[] snapshotIdArrayOf(long j10) {
        return new long[]{j10};
    }

    @NotNull
    public static final long[] snapshotIdArrayWithCapacity(int i10) {
        return new long[i10];
    }

    public static final long times(long j10, int i10) {
        return j10 * i10;
    }

    public static final int toInt(long j10) {
        return (int) j10;
    }

    public static final long toSnapshotId(int i10) {
        return i10;
    }

    @NotNull
    public static final long[] withIdInsertedAt(@NotNull long[] jArr, int i10, long j10) {
        int length = jArr.length;
        long[] jArr2 = new long[length + 1];
        kotlin.collections.n.m(jArr, jArr2, 0, 0, i10);
        kotlin.collections.n.m(jArr, jArr2, i10 + 1, i10, length);
        jArr2[i10] = j10;
        return jArr2;
    }

    @Nullable
    public static final long[] withIdRemovedAt(@NotNull long[] jArr, int i10) {
        int length = jArr.length;
        int i11 = length - 1;
        if (i11 == 0) {
            return null;
        }
        long[] jArr2 = new long[i11];
        if (i10 > 0) {
            kotlin.collections.n.m(jArr, jArr2, 0, 0, i10);
        }
        if (i10 < i11) {
            kotlin.collections.n.m(jArr, jArr2, i10, i10 + 1, length);
        }
        return jArr2;
    }

    public static final int compareTo(long j10, int i10) {
        return Intrinsics.compare(j10, i10);
    }

    public static final long minus(long j10, long j11) {
        return j10 - j11;
    }

    public static final long toSnapshotId(long j10) {
        return j10;
    }

    public static final long toLong(long j10) {
        return j10;
    }
}

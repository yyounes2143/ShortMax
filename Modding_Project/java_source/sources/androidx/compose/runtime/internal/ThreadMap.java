package androidx.compose.runtime.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotThreadLocal.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotThreadLocal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotThreadLocal.kt\nandroidx/compose/runtime/internal/ThreadMap\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,154:1\n12734#2,3:155\n*S KotlinDebug\n*F\n+ 1 SnapshotThreadLocal.kt\nandroidx/compose/runtime/internal/ThreadMap\n*L\n84#1:155,3\n*E\n"})
/* loaded from: classes.dex */
public final class ThreadMap {
    public static final int $stable = 8;
    @NotNull
    private final long[] keys;
    private final int size;
    @NotNull
    private final Object[] values;

    public ThreadMap(int i10, @NotNull long[] jArr, @NotNull Object[] objArr) {
        this.size = i10;
        this.keys = jArr;
        this.values = objArr;
    }

    private final int find(long j10) {
        int i10 = this.size - 1;
        if (i10 == -1) {
            return -1;
        }
        int i11 = 0;
        if (i10 != 0) {
            while (i11 <= i10) {
                int i12 = (i11 + i10) >>> 1;
                int i13 = ((this.keys[i12] - j10) > 0L ? 1 : ((this.keys[i12] - j10) == 0L ? 0 : -1));
                if (i13 < 0) {
                    i11 = i12 + 1;
                } else if (i13 > 0) {
                    i10 = i12 - 1;
                } else {
                    return i12;
                }
            }
            return -(i11 + 1);
        }
        long j11 = this.keys[0];
        if (j11 == j10) {
            return 0;
        }
        if (j11 <= j10) {
            return -1;
        }
        return -2;
    }

    @Nullable
    public final Object get(long j10) {
        int find = find(j10);
        if (find >= 0) {
            return this.values[find];
        }
        return null;
    }

    @NotNull
    public final ThreadMap newWith(long j10, @Nullable Object obj) {
        int i10 = this.size;
        int i11 = 0;
        int i12 = 0;
        for (Object obj2 : this.values) {
            if (obj2 != null) {
                i12++;
            }
        }
        int i13 = i12 + 1;
        long[] jArr = new long[i13];
        Object[] objArr = new Object[i13];
        if (i13 > 1) {
            int i14 = 0;
            while (true) {
                if (i11 >= i13 || i14 >= i10) {
                    break;
                }
                long j11 = this.keys[i14];
                Object obj3 = this.values[i14];
                if (j11 > j10) {
                    jArr[i11] = j10;
                    objArr[i11] = obj;
                    i11++;
                    break;
                }
                if (obj3 != null) {
                    jArr[i11] = j11;
                    objArr[i11] = obj3;
                    i11++;
                }
                i14++;
            }
            if (i14 == i10) {
                jArr[i12] = j10;
                objArr[i12] = obj;
            } else {
                while (i11 < i13) {
                    long j12 = this.keys[i14];
                    Object obj4 = this.values[i14];
                    if (obj4 != null) {
                        jArr[i11] = j12;
                        objArr[i11] = obj4;
                        i11++;
                    }
                    i14++;
                }
            }
        } else {
            jArr[0] = j10;
            objArr[0] = obj;
        }
        return new ThreadMap(i13, jArr, objArr);
    }

    public final boolean trySet(long j10, @Nullable Object obj) {
        int find = find(j10);
        if (find < 0) {
            return false;
        }
        this.values[find] = obj;
        return true;
    }
}

package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.TestOnly;
/* compiled from: SnapshotDoubleIndexHeap.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotDoubleIndexHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotDoubleIndexHeap.kt\nandroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap\n+ 2 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n*L\n1#1,201:1\n55#2:202\n58#2,2:203\n55#2:205\n31#2:206\n55#2:207\n55#2:208\n55#2:209\n55#2:210\n31#2:211\n55#2:212\n31#2:213\n55#2:214\n31#2:215\n55#2:216\n31#2:217\n55#2:218\n55#2,5:219\n58#2,2:224\n62#2:226\n65#2,2:227\n*S KotlinDebug\n*F\n+ 1 SnapshotDoubleIndexHeap.kt\nandroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap\n*L\n56#1:202\n66#1:203,2\n92#1:205\n92#1:206\n101#1:207\n102#1:208\n108#1:209\n112#1:210\n112#1:211\n132#1:212\n132#1:213\n133#1:214\n133#1:215\n137#1:216\n137#1:217\n153#1:218\n154#1:219,5\n155#1:224,2\n166#1:226\n171#1:227,2\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotDoubleIndexHeap {
    public static final int $stable = 8;
    private int firstFreeHandle;
    @NotNull
    private int[] handles;
    private int size;
    @NotNull
    private long[] values = SnapshotId_jvmKt.snapshotIdArrayWithCapacity(16);
    @NotNull
    private int[] index = new int[16];

    public SnapshotDoubleIndexHeap() {
        int[] iArr = new int[16];
        int i10 = 0;
        while (i10 < 16) {
            int i11 = i10 + 1;
            iArr[i10] = i11;
            i10 = i11;
        }
        this.handles = iArr;
    }

    private final int allocateHandle() {
        int length = this.handles.length;
        if (this.firstFreeHandle >= length) {
            int i10 = length * 2;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                iArr[i11] = i12;
                i11 = i12;
            }
            kotlin.collections.n.s(this.handles, iArr, 0, 0, 0, 14, null);
            this.handles = iArr;
        }
        int i13 = this.firstFreeHandle;
        this.firstFreeHandle = this.handles[i13];
        return i13;
    }

    private final void ensure(int i10) {
        int length = this.values.length;
        if (i10 <= length) {
            return;
        }
        int i11 = length * 2;
        long[] snapshotIdArrayWithCapacity = SnapshotId_jvmKt.snapshotIdArrayWithCapacity(i11);
        int[] iArr = new int[i11];
        kotlin.collections.n.t(this.values, snapshotIdArrayWithCapacity, 0, 0, 0, 12, null);
        kotlin.collections.n.s(this.index, iArr, 0, 0, 0, 14, null);
        this.values = snapshotIdArrayWithCapacity;
        this.index = iArr;
    }

    private final void freeHandle(int i10) {
        this.handles[i10] = this.firstFreeHandle;
        this.firstFreeHandle = i10;
    }

    public static /* synthetic */ long lowestOrDefault$default(SnapshotDoubleIndexHeap snapshotDoubleIndexHeap, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 0;
        }
        return snapshotDoubleIndexHeap.lowestOrDefault(j10);
    }

    private final void shiftDown(int i10) {
        long[] jArr = this.values;
        int i11 = this.size >> 1;
        while (i10 < i11) {
            int i12 = (i10 + 1) << 1;
            int i13 = i12 - 1;
            if (i12 < this.size && Intrinsics.compare(jArr[i12], jArr[i13]) < 0) {
                if (Intrinsics.compare(jArr[i12], jArr[i10]) < 0) {
                    swap(i12, i10);
                    i10 = i12;
                } else {
                    return;
                }
            } else if (Intrinsics.compare(jArr[i13], jArr[i10]) < 0) {
                swap(i13, i10);
                i10 = i13;
            } else {
                return;
            }
        }
    }

    private final void shiftUp(int i10) {
        long[] jArr = this.values;
        long j10 = jArr[i10];
        while (i10 > 0) {
            int i11 = ((i10 + 1) >> 1) - 1;
            if (Intrinsics.compare(jArr[i11], j10) > 0) {
                swap(i11, i10);
                i10 = i11;
            } else {
                return;
            }
        }
    }

    private final void swap(int i10, int i11) {
        long[] jArr = this.values;
        int[] iArr = this.index;
        int[] iArr2 = this.handles;
        long j10 = jArr[i10];
        jArr[i10] = jArr[i11];
        jArr[i11] = j10;
        int i12 = iArr[i10];
        int i13 = iArr[i11];
        iArr[i10] = i13;
        iArr[i11] = i12;
        iArr2[i13] = i10;
        iArr2[i12] = i11;
    }

    public final int add(long j10) {
        ensure(this.size + 1);
        int i10 = this.size;
        this.size = i10 + 1;
        int allocateHandle = allocateHandle();
        this.values[i10] = j10;
        this.index[i10] = allocateHandle;
        this.handles[allocateHandle] = i10;
        shiftUp(i10);
        return allocateHandle;
    }

    public final int getSize() {
        return this.size;
    }

    public final long lowestOrDefault(long j10) {
        if (this.size > 0) {
            return this.values[0];
        }
        return j10;
    }

    public final void remove(int i10) {
        int i11 = this.handles[i10];
        swap(i11, this.size - 1);
        this.size--;
        shiftUp(i11);
        shiftDown(i11);
        freeHandle(i10);
    }

    @TestOnly
    public final void validate() {
        int i10 = this.size;
        int i11 = 1;
        while (i11 < i10) {
            int i12 = i11 + 1;
            long[] jArr = this.values;
            if (Intrinsics.compare(jArr[(i12 >> 1) - 1], jArr[i11]) <= 0) {
                i11 = i12;
            } else {
                throw new IllegalStateException(("Index " + i11 + " is out of place").toString());
            }
        }
    }

    @TestOnly
    public final void validateHandle(int i10, long j10) {
        int i11 = this.handles[i10];
        if (this.index[i11] == i10) {
            if (this.values[i11] == j10) {
                return;
            }
            throw new IllegalStateException(("Value for handle " + i10 + " was " + this.values[i11] + " but was supposed to be " + j10).toString());
        }
        throw new IllegalStateException(("Index for handle " + i10 + " is corrupted").toString());
    }
}

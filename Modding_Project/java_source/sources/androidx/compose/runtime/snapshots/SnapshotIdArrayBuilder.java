package androidx.compose.runtime.snapshots;

import androidx.collection.MutableLongList;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotId.jvm.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotId.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LongList.kt\nandroidx/collection/LongListKt\n+ 4 LongList.kt\nandroidx/collection/MutableLongList\n+ 5 LongList.kt\nandroidx/collection/LongList\n*L\n1#1,148:1\n1#2:149\n1#2:151\n939#3:150\n908#3:154\n673#4,2:152\n65#5:155\n251#5,6:156\n*S KotlinDebug\n*F\n+ 1 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder\n*L\n128#1:151\n128#1:150\n128#1:154\n128#1:152,2\n135#1:155\n138#1:156,6\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotIdArrayBuilder {
    public static final int $stable = 8;
    @NotNull
    private final MutableLongList list;

    public SnapshotIdArrayBuilder(@Nullable long[] jArr) {
        MutableLongList mutableLongList;
        if (jArr != null) {
            long[] copyOf = Arrays.copyOf(jArr, jArr.length);
            mutableLongList = new MutableLongList(copyOf.length);
            mutableLongList.addAll(mutableLongList._size, copyOf);
        } else {
            mutableLongList = new MutableLongList(0, 1, null);
        }
        this.list = mutableLongList;
    }

    public final void add(long j10) {
        this.list.add(j10);
    }

    @Nullable
    public final long[] toArray() {
        MutableLongList mutableLongList = this.list;
        int i10 = mutableLongList._size;
        if (i10 == 0) {
            return null;
        }
        long[] jArr = new long[i10];
        long[] jArr2 = mutableLongList.content;
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = jArr2[i11];
        }
        return jArr;
    }
}

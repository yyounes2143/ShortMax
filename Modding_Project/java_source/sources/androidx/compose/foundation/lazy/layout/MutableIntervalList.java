package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntervalList.kt */
@StabilityInferred(parameters = 0)
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class MutableIntervalList<T> implements IntervalList<T> {
    public static final int $stable = 8;
    @NotNull
    private final MutableVector<IntervalList.Interval<T>> intervals = new MutableVector<>(new IntervalList.Interval[16], 0);
    @Nullable
    private IntervalList.Interval<T> lastInterval;
    private int size;

    private final void checkIndexBounds(int i10) {
        if (i10 >= 0 && i10 < getSize()) {
            return;
        }
        throw new IndexOutOfBoundsException("Index " + i10 + ", size " + getSize());
    }

    private final boolean contains(IntervalList.Interval<T> interval, int i10) {
        int startIndex = interval.getStartIndex();
        if (i10 >= interval.getStartIndex() + interval.getSize() || startIndex > i10) {
            return false;
        }
        return true;
    }

    private final IntervalList.Interval<T> getIntervalForIndex(int i10) {
        int binarySearch;
        IntervalList.Interval<T> interval = this.lastInterval;
        if (interval == null || !contains(interval, i10)) {
            MutableVector<IntervalList.Interval<T>> mutableVector = this.intervals;
            binarySearch = IntervalListKt.binarySearch(mutableVector, i10);
            IntervalList.Interval<T> interval2 = mutableVector.getContent()[binarySearch];
            this.lastInterval = interval2;
            return interval2;
        }
        return interval;
    }

    public final void addInterval(int i10, T t10) {
        if (i10 >= 0) {
            if (i10 == 0) {
                return;
            }
            IntervalList.Interval<T> interval = new IntervalList.Interval<>(getSize(), i10, t10);
            this.size = getSize() + i10;
            this.intervals.add(interval);
            return;
        }
        throw new IllegalArgumentException(("size should be >=0, but was " + i10).toString());
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public void forEach(int i10, int i11, @NotNull Function1<? super IntervalList.Interval<T>, Unit> block) {
        int binarySearch;
        Intrinsics.checkNotNullParameter(block, "block");
        checkIndexBounds(i10);
        checkIndexBounds(i11);
        if (i11 >= i10) {
            binarySearch = IntervalListKt.binarySearch(this.intervals, i10);
            int startIndex = this.intervals.getContent()[binarySearch].getStartIndex();
            while (startIndex <= i11) {
                IntervalList.Interval<T> interval = this.intervals.getContent()[binarySearch];
                block.invoke(interval);
                startIndex += interval.getSize();
                binarySearch++;
            }
            return;
        }
        throw new IllegalArgumentException(("toIndex (" + i11 + ") should be not smaller than fromIndex (" + i10 + ')').toString());
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    @NotNull
    public IntervalList.Interval<T> get(int i10) {
        checkIndexBounds(i10);
        return getIntervalForIndex(i10);
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public int getSize() {
        return this.size;
    }
}

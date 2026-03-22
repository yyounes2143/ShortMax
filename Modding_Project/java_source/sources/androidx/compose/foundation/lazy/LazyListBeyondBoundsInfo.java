package androidx.compose.foundation.lazy;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListBeyondBoundsInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListBeyondBoundsInfo {
    @NotNull
    private final MutableVector<Interval> beyondBoundsItems = new MutableVector<>(new Interval[16], 0);

    /* compiled from: LazyListBeyondBoundsInfo.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Interval {
        private final int end;
        private final int start;

        public Interval(int i10, int i11) {
            this.start = i10;
            this.end = i11;
            if (i10 >= 0) {
                if (i11 >= i10) {
                    return;
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public static /* synthetic */ Interval copy$default(Interval interval, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = interval.start;
            }
            if ((i12 & 2) != 0) {
                i11 = interval.end;
            }
            return interval.copy(i10, i11);
        }

        public final int component1() {
            return this.start;
        }

        public final int component2() {
            return this.end;
        }

        @NotNull
        public final Interval copy(int i10, int i11) {
            return new Interval(i10, i11);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interval)) {
                return false;
            }
            Interval interval = (Interval) obj;
            if (this.start == interval.start && this.end == interval.end) {
                return true;
            }
            return false;
        }

        public final int getEnd() {
            return this.end;
        }

        public final int getStart() {
            return this.start;
        }

        public int hashCode() {
            return (Integer.hashCode(this.start) * 31) + Integer.hashCode(this.end);
        }

        @NotNull
        public String toString() {
            return "Interval(start=" + this.start + ", end=" + this.end + ')';
        }
    }

    @NotNull
    public final Interval addInterval(int i10, int i11) {
        Interval interval = new Interval(i10, i11);
        this.beyondBoundsItems.add(interval);
        return interval;
    }

    public final int getEnd() {
        int end = this.beyondBoundsItems.first().getEnd();
        MutableVector<Interval> mutableVector = this.beyondBoundsItems;
        int size = mutableVector.getSize();
        if (size > 0) {
            Interval[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                Interval interval = content[i10];
                if (interval.getEnd() > end) {
                    end = interval.getEnd();
                }
                i10++;
            } while (i10 < size);
            return end;
        }
        return end;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getStart() {
        /*
            r6 = this;
            androidx.compose.runtime.collection.MutableVector<androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval> r0 = r6.beyondBoundsItems
            java.lang.Object r0 = r0.first()
            androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval r0 = (androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo.Interval) r0
            int r0 = r0.getStart()
            androidx.compose.runtime.collection.MutableVector<androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval> r1 = r6.beyondBoundsItems
            int r2 = r1.getSize()
            if (r2 <= 0) goto L2b
            java.lang.Object[] r1 = r1.getContent()
            r3 = 0
        L19:
            r4 = r1[r3]
            androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval r4 = (androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo.Interval) r4
            int r5 = r4.getStart()
            if (r5 >= r0) goto L27
            int r0 = r4.getStart()
        L27:
            int r3 = r3 + 1
            if (r3 < r2) goto L19
        L2b:
            if (r0 < 0) goto L2e
            return r0
        L2e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Failed requirement."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo.getStart():int");
    }

    public final boolean hasIntervals() {
        return this.beyondBoundsItems.isNotEmpty();
    }

    public final void removeInterval(@NotNull Interval interval) {
        Intrinsics.checkNotNullParameter(interval, "interval");
        this.beyondBoundsItems.remove(interval);
    }
}

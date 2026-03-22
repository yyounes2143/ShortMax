package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyGridSpanLayoutProvider.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridSpanLayoutProvider {
    @NotNull
    private final ArrayList<Bucket> buckets;
    @NotNull
    private final List<Integer> cachedBucket;
    private int cachedBucketIndex;
    @NotNull
    private final LazyGridItemsSnapshot itemsSnapshot;
    private int lastLineIndex;
    private int lastLineStartItemIndex;
    private int lastLineStartKnownSpan;
    @NotNull
    private List<GridItemSpan> previousDefaultSpans;
    private int slotsPerLine;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LazyGridSpanLayoutProvider.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class LazyGridItemSpanScopeImpl implements LazyGridItemSpanScope {
        @NotNull
        public static final LazyGridItemSpanScopeImpl INSTANCE = new LazyGridItemSpanScopeImpl();
        private static int maxCurrentLineSpan;
        private static int maxLineSpan;

        private LazyGridItemSpanScopeImpl() {
        }

        @Override // androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope
        public int getMaxCurrentLineSpan() {
            return maxCurrentLineSpan;
        }

        @Override // androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope
        public int getMaxLineSpan() {
            return maxLineSpan;
        }

        public void setMaxCurrentLineSpan(int i10) {
            maxCurrentLineSpan = i10;
        }

        public void setMaxLineSpan(int i10) {
            maxLineSpan = i10;
        }
    }

    /* compiled from: LazyGridSpanLayoutProvider.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class LineConfiguration {
        public static final int $stable = 8;
        private final int firstItemIndex;
        @NotNull
        private final List<GridItemSpan> spans;

        public LineConfiguration(int i10, @NotNull List<GridItemSpan> spans) {
            Intrinsics.checkNotNullParameter(spans, "spans");
            this.firstItemIndex = i10;
            this.spans = spans;
        }

        public final int getFirstItemIndex() {
            return this.firstItemIndex;
        }

        @NotNull
        public final List<GridItemSpan> getSpans() {
            return this.spans;
        }
    }

    public LazyGridSpanLayoutProvider(@NotNull LazyGridItemsSnapshot itemsSnapshot) {
        Intrinsics.checkNotNullParameter(itemsSnapshot, "itemsSnapshot");
        this.itemsSnapshot = itemsSnapshot;
        ArrayList<Bucket> arrayList = new ArrayList<>();
        arrayList.add(new Bucket(0, 0, 2, null));
        this.buckets = arrayList;
        this.cachedBucketIndex = -1;
        this.cachedBucket = new ArrayList();
        this.previousDefaultSpans = CollectionsKt.n();
    }

    private final int getBucketSize() {
        return ((int) Math.sqrt((getTotalSize() * 1.0d) / this.slotsPerLine)) + 1;
    }

    private final List<GridItemSpan> getDefaultSpans(int i10) {
        if (i10 == this.previousDefaultSpans.size()) {
            return this.previousDefaultSpans;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(GridItemSpan.m582boximpl(LazyGridSpanKt.GridItemSpan(1)));
        }
        this.previousDefaultSpans = arrayList;
        return arrayList;
    }

    private final void invalidateCache() {
        this.buckets.clear();
        this.buckets.add(new Bucket(0, 0, 2, null));
        this.lastLineIndex = 0;
        this.lastLineStartItemIndex = 0;
        this.cachedBucketIndex = -1;
        this.cachedBucket.clear();
    }

    private final int spanOf(int i10, int i11) {
        LazyGridItemsSnapshot lazyGridItemsSnapshot = this.itemsSnapshot;
        LazyGridItemSpanScopeImpl lazyGridItemSpanScopeImpl = LazyGridItemSpanScopeImpl.INSTANCE;
        lazyGridItemSpanScopeImpl.setMaxCurrentLineSpan(i11);
        lazyGridItemSpanScopeImpl.setMaxLineSpan(this.slotsPerLine);
        return e.n(GridItemSpan.m586getCurrentLineSpanimpl(lazyGridItemsSnapshot.m617getSpan_orMbw(lazyGridItemSpanScopeImpl, i10)), 1, this.slotsPerLine);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008d, code lost:
        if (r7 < r6) goto L15;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider.LineConfiguration getLineConfiguration(int r11) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider.getLineConfiguration(int):androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$LineConfiguration");
    }

    /* renamed from: getLineIndexOfItem--_Ze7BM  reason: not valid java name */
    public final int m634getLineIndexOfItem_Ze7BM(final int i10) {
        int i11;
        if (getTotalSize() <= 0) {
            return LineIndex.m644constructorimpl(0);
        }
        if (i10 < getTotalSize()) {
            if (!this.itemsSnapshot.getHasCustomSpans()) {
                return LineIndex.m644constructorimpl(i10 / this.slotsPerLine);
            }
            int l10 = CollectionsKt.l(this.buckets, 0, 0, new Function1<Bucket, Integer>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Integer invoke(@NotNull LazyGridSpanLayoutProvider.Bucket it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Integer.valueOf(it.getFirstItemIndex() - i10);
                }
            }, 3, null);
            if (l10 < 0) {
                l10 = (-l10) - 2;
            }
            int bucketSize = getBucketSize() * l10;
            int firstItemIndex = this.buckets.get(l10).getFirstItemIndex();
            if (firstItemIndex <= i10) {
                int i12 = 0;
                while (firstItemIndex < i10) {
                    int i13 = firstItemIndex + 1;
                    int spanOf = spanOf(firstItemIndex, this.slotsPerLine - i12);
                    i12 += spanOf;
                    int i14 = this.slotsPerLine;
                    if (i12 >= i14) {
                        if (i12 == i14) {
                            bucketSize++;
                            i12 = 0;
                        } else {
                            bucketSize++;
                            i12 = spanOf;
                        }
                    }
                    if (bucketSize % getBucketSize() == 0 && bucketSize / getBucketSize() >= this.buckets.size()) {
                        ArrayList<Bucket> arrayList = this.buckets;
                        if (i12 > 0) {
                            i11 = 1;
                        } else {
                            i11 = 0;
                        }
                        arrayList.add(new Bucket(i13 - i11, 0, 2, null));
                    }
                    firstItemIndex = i13;
                }
                if (i12 + spanOf(i10, this.slotsPerLine - i12) > this.slotsPerLine) {
                    bucketSize++;
                }
                return LineIndex.m644constructorimpl(bucketSize);
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final int getSlotsPerLine() {
        return this.slotsPerLine;
    }

    public final int getTotalSize() {
        return this.itemsSnapshot.getItemsCount();
    }

    public final void setSlotsPerLine(int i10) {
        if (i10 != this.slotsPerLine) {
            this.slotsPerLine = i10;
            invalidateCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LazyGridSpanLayoutProvider.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Bucket {
        private final int firstItemIndex;
        private final int firstItemKnownSpan;

        public Bucket(int i10, int i11) {
            this.firstItemIndex = i10;
            this.firstItemKnownSpan = i11;
        }

        public final int getFirstItemIndex() {
            return this.firstItemIndex;
        }

        public final int getFirstItemKnownSpan() {
            return this.firstItemKnownSpan;
        }

        public /* synthetic */ Bucket(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, (i12 & 2) != 0 ? 0 : i11);
        }
    }
}

package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListScrollPosition.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListScrollPosition {
    @NotNull
    private static final Companion Companion = new Companion(null);
    private boolean hadFirstNotEmptyLayout;
    @NotNull
    private final MutableState index$delegate;
    @Nullable
    private Object lastKnownFirstItemKey;
    @NotNull
    private final MutableState scrollOffset$delegate;

    /* compiled from: LazyListScrollPosition.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @ExperimentalFoundationApi
        /* renamed from: findLazyListIndexByKey-KXnL5Ic  reason: not valid java name */
        public final int m574findLazyListIndexByKeyKXnL5Ic(Object obj, int i10, LazyListItemProvider lazyListItemProvider) {
            if (obj == null) {
                return i10;
            }
            if (i10 < lazyListItemProvider.getItemCount() && Intrinsics.areEqual(obj, lazyListItemProvider.getKey(i10))) {
                return i10;
            }
            Integer num = lazyListItemProvider.getKeyToIndexMap().get(obj);
            if (num != null) {
                return DataIndex.m536constructorimpl(num.intValue());
            }
            return i10;
        }

        private Companion() {
        }
    }

    public LazyListScrollPosition() {
        this(0, 0, 3, null);
    }

    private final void setScrollOffset(int i10) {
        this.scrollOffset$delegate.setValue(Integer.valueOf(i10));
    }

    /* renamed from: update-AhXoVpI  reason: not valid java name */
    private final void m569updateAhXoVpI(int i10, int i11) {
        if (i10 >= 0.0f) {
            if (!DataIndex.m539equalsimpl0(i10, m570getIndexjQJCoq8())) {
                m572setIndexZjPyQlc(i10);
            }
            if (i11 != getScrollOffset()) {
                setScrollOffset(i11);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
    }

    /* renamed from: getIndex-jQJCoq8  reason: not valid java name */
    public final int m570getIndexjQJCoq8() {
        return ((DataIndex) this.index$delegate.getValue()).m546unboximpl();
    }

    public final int getScrollOffset() {
        return ((Number) this.scrollOffset$delegate.getValue()).intValue();
    }

    /* renamed from: requestPosition-AhXoVpI  reason: not valid java name */
    public final void m571requestPositionAhXoVpI(int i10, int i11) {
        m569updateAhXoVpI(i10, i11);
        this.lastKnownFirstItemKey = null;
    }

    /* renamed from: setIndex-ZjPyQlc  reason: not valid java name */
    public final void m572setIndexZjPyQlc(int i10) {
        this.index$delegate.setValue(DataIndex.m534boximpl(i10));
    }

    public final void updateFromMeasureResult(@NotNull LazyListMeasureResult measureResult) {
        Object obj;
        int i10;
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        LazyMeasuredItem firstVisibleItem = measureResult.getFirstVisibleItem();
        if (firstVisibleItem != null) {
            obj = firstVisibleItem.getKey();
        } else {
            obj = null;
        }
        this.lastKnownFirstItemKey = obj;
        if (this.hadFirstNotEmptyLayout || measureResult.getTotalItemsCount() > 0) {
            this.hadFirstNotEmptyLayout = true;
            int firstVisibleItemScrollOffset = measureResult.getFirstVisibleItemScrollOffset();
            if (firstVisibleItemScrollOffset >= 0.0f) {
                Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
                try {
                    Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                    LazyMeasuredItem firstVisibleItem2 = measureResult.getFirstVisibleItem();
                    if (firstVisibleItem2 != null) {
                        i10 = firstVisibleItem2.getIndex();
                    } else {
                        i10 = 0;
                    }
                    m569updateAhXoVpI(DataIndex.m536constructorimpl(i10), firstVisibleItemScrollOffset);
                    Unit unit = Unit.f60915a;
                    createNonObservableSnapshot.restoreCurrent(makeCurrent);
                    return;
                } finally {
                    createNonObservableSnapshot.dispose();
                }
            }
            throw new IllegalStateException(("scrollOffset should be non-negative (" + firstVisibleItemScrollOffset + ')').toString());
        }
    }

    @ExperimentalFoundationApi
    public final void updateScrollPositionIfTheFirstItemWasMoved(@NotNull LazyListItemProvider itemProvider) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            m569updateAhXoVpI(Companion.m574findLazyListIndexByKeyKXnL5Ic(this.lastKnownFirstItemKey, m570getIndexjQJCoq8(), itemProvider), getScrollOffset());
            Unit unit = Unit.f60915a;
            createNonObservableSnapshot.restoreCurrent(makeCurrent);
        } finally {
            createNonObservableSnapshot.dispose();
        }
    }

    public LazyListScrollPosition(int i10, int i11) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DataIndex.m534boximpl(DataIndex.m536constructorimpl(i10)), null, 2, null);
        this.index$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Integer.valueOf(i11), null, 2, null);
        this.scrollOffset$delegate = mutableStateOf$default2;
    }

    public /* synthetic */ LazyListScrollPosition(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}

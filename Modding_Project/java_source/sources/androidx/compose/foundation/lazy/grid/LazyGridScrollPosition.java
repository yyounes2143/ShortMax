package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridScrollPosition.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridScrollPosition {
    @NotNull
    private static final Companion Companion = new Companion(null);
    private boolean hadFirstNotEmptyLayout;
    @NotNull
    private final MutableState index$delegate;
    @Nullable
    private Object lastKnownFirstItemKey;
    @NotNull
    private final MutableState scrollOffset$delegate;

    /* compiled from: LazyGridScrollPosition.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: findLazyGridIndexByKey-Cw5TLFk  reason: not valid java name */
        public final int m633findLazyGridIndexByKeyCw5TLFk(Object obj, int i10, LazyGridItemProvider lazyGridItemProvider) {
            if (obj == null) {
                return i10;
            }
            if (i10 < lazyGridItemProvider.getItemCount() && Intrinsics.areEqual(obj, lazyGridItemProvider.getKey(i10))) {
                return i10;
            }
            Integer num = lazyGridItemProvider.getKeyToIndexMap().get(obj);
            if (num != null) {
                return ItemIndex.m592constructorimpl(num.intValue());
            }
            return i10;
        }

        private Companion() {
        }
    }

    public LazyGridScrollPosition() {
        this(0, 0, 3, null);
    }

    /* renamed from: setIndex-YGsSkvE  reason: not valid java name */
    private final void m628setIndexYGsSkvE(int i10) {
        this.index$delegate.setValue(ItemIndex.m590boximpl(i10));
    }

    private final void setScrollOffset(int i10) {
        this.scrollOffset$delegate.setValue(Integer.valueOf(i10));
    }

    /* renamed from: update-yO3Fmg4  reason: not valid java name */
    private final void m629updateyO3Fmg4(int i10, int i11) {
        if (i10 >= 0.0f) {
            if (!ItemIndex.m595equalsimpl0(i10, m630getIndexVZbfaAc())) {
                m628setIndexYGsSkvE(i10);
            }
            if (i11 != getScrollOffset()) {
                setScrollOffset(i11);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
    }

    /* renamed from: getIndex-VZbfaAc  reason: not valid java name */
    public final int m630getIndexVZbfaAc() {
        return ((ItemIndex) this.index$delegate.getValue()).m602unboximpl();
    }

    public final int getScrollOffset() {
        return ((Number) this.scrollOffset$delegate.getValue()).intValue();
    }

    /* renamed from: requestPosition-yO3Fmg4  reason: not valid java name */
    public final void m631requestPositionyO3Fmg4(int i10, int i11) {
        m629updateyO3Fmg4(i10, i11);
        this.lastKnownFirstItemKey = null;
    }

    public final void updateFromMeasureResult(@NotNull LazyGridMeasureResult measureResult) {
        Object obj;
        int i10;
        LazyMeasuredItem[] items;
        LazyMeasuredItem lazyMeasuredItem;
        LazyMeasuredItem[] items2;
        LazyMeasuredItem lazyMeasuredItem2;
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        LazyMeasuredLine firstVisibleLine = measureResult.getFirstVisibleLine();
        if (firstVisibleLine != null && (items2 = firstVisibleLine.getItems()) != null && (lazyMeasuredItem2 = (LazyMeasuredItem) n.l0(items2)) != null) {
            obj = lazyMeasuredItem2.getKey();
        } else {
            obj = null;
        }
        this.lastKnownFirstItemKey = obj;
        if (this.hadFirstNotEmptyLayout || measureResult.getTotalItemsCount() > 0) {
            this.hadFirstNotEmptyLayout = true;
            int firstVisibleLineScrollOffset = measureResult.getFirstVisibleLineScrollOffset();
            if (firstVisibleLineScrollOffset >= 0.0f) {
                Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
                try {
                    Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                    LazyMeasuredLine firstVisibleLine2 = measureResult.getFirstVisibleLine();
                    if (firstVisibleLine2 != null && (items = firstVisibleLine2.getItems()) != null && (lazyMeasuredItem = (LazyMeasuredItem) n.l0(items)) != null) {
                        i10 = lazyMeasuredItem.m636getIndexVZbfaAc();
                    } else {
                        i10 = 0;
                    }
                    m629updateyO3Fmg4(ItemIndex.m592constructorimpl(i10), firstVisibleLineScrollOffset);
                    Unit unit = Unit.f60915a;
                    createNonObservableSnapshot.restoreCurrent(makeCurrent);
                    return;
                } finally {
                    createNonObservableSnapshot.dispose();
                }
            }
            throw new IllegalStateException(("scrollOffset should be non-negative (" + firstVisibleLineScrollOffset + ')').toString());
        }
    }

    public final void updateScrollPositionIfTheFirstItemWasMoved(@NotNull LazyGridItemProvider itemProvider) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            m629updateyO3Fmg4(Companion.m633findLazyGridIndexByKeyCw5TLFk(this.lastKnownFirstItemKey, m630getIndexVZbfaAc(), itemProvider), getScrollOffset());
            Unit unit = Unit.f60915a;
            createNonObservableSnapshot.restoreCurrent(makeCurrent);
        } finally {
            createNonObservableSnapshot.dispose();
        }
    }

    public LazyGridScrollPosition(int i10, int i11) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ItemIndex.m590boximpl(ItemIndex.m592constructorimpl(i10)), null, 2, null);
        this.index$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Integer.valueOf(i11), null, 2, null);
        this.scrollOffset$delegate = mutableStateOf$default2;
    }

    public /* synthetic */ LazyGridScrollPosition(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}

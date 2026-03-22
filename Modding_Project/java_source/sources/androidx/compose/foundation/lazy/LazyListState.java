package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LazyListState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class LazyListState implements ScrollableState {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Saver<LazyListState, ?> Saver = ListSaverKt.listSaver(new Function2<SaverScope, LazyListState, List<? extends Integer>>() { // from class: androidx.compose.foundation.lazy.LazyListState$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        @NotNull
        public final List<Integer> invoke(@NotNull SaverScope listSaver, @NotNull LazyListState it) {
            Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.q(Integer.valueOf(it.getFirstVisibleItemIndex()), Integer.valueOf(it.getFirstVisibleItemScrollOffset()));
        }
    }, new Function1<List<? extends Integer>, LazyListState>() { // from class: androidx.compose.foundation.lazy.LazyListState$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ LazyListState invoke(List<? extends Integer> list) {
            return invoke2((List<Integer>) list);
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final LazyListState invoke2(@NotNull List<Integer> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new LazyListState(it.get(0).intValue(), it.get(1).intValue());
        }
    });
    @NotNull
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private boolean canScrollBackward;
    private boolean canScrollForward;
    @Nullable
    private LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;
    @NotNull
    private final MutableState density$delegate;
    private int indexToPrefetch;
    @NotNull
    private final MutableInteractionSource internalInteractionSource;
    @NotNull
    private final MutableState<LazyListLayoutInfo> layoutInfoState;
    private int numMeasurePasses;
    @NotNull
    private final MutableState placementAnimator$delegate;
    @NotNull
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;
    @NotNull
    private final MutableState premeasureConstraints$delegate;
    @NotNull
    private final MutableState remeasurement$delegate;
    @NotNull
    private final RemeasurementModifier remeasurementModifier;
    @NotNull
    private final LazyListScrollPosition scrollPosition;
    private float scrollToBeConsumed;
    @NotNull
    private final ScrollableState scrollableState;
    private boolean wasScrollingForward;

    /* compiled from: LazyListState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<LazyListState, ?> getSaver() {
            return LazyListState.Saver;
        }

        private Companion() {
        }
    }

    public LazyListState() {
        this(0, 0, 3, null);
    }

    public static /* synthetic */ Object animateScrollToItem$default(LazyListState lazyListState, int i10, int i11, c cVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyListState.animateScrollToItem(i10, i11, cVar);
    }

    private final void notifyPrefetch(float f10) {
        boolean z10;
        int index;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        if (!this.prefetchingEnabled) {
            return;
        }
        LazyListLayoutInfo layoutInfo = getLayoutInfo();
        if (!layoutInfo.getVisibleItemsInfo().isEmpty()) {
            if (f10 < 0.0f) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                index = ((LazyListItemInfo) CollectionsKt.C0(layoutInfo.getVisibleItemsInfo())).getIndex() + 1;
            } else {
                index = ((LazyListItemInfo) CollectionsKt.r0(layoutInfo.getVisibleItemsInfo())).getIndex() - 1;
            }
            if (index != this.indexToPrefetch && index >= 0 && index < layoutInfo.getTotalItemsCount()) {
                if (this.wasScrollingForward != z10 && (prefetchHandle = this.currentPrefetchHandle) != null) {
                    prefetchHandle.cancel();
                }
                this.wasScrollingForward = z10;
                this.indexToPrefetch = index;
                this.currentPrefetchHandle = this.prefetchState.m660schedulePrefetch0kLqBqw(index, m575getPremeasureConstraintsmsEJaDk$foundation_release());
            }
        }
    }

    public static /* synthetic */ Object scrollToItem$default(LazyListState lazyListState, int i10, int i11, c cVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyListState.scrollToItem(i10, i11, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRemeasurement(Remeasurement remeasurement) {
        this.remeasurement$delegate.setValue(remeasurement);
    }

    @Nullable
    public final Object animateScrollToItem(int i10, int i11, @NotNull c<? super Unit> cVar) {
        Object doSmoothScrollToItem = LazyListScrollingKt.doSmoothScrollToItem(this, i10, i11, cVar);
        if (doSmoothScrollToItem == a.f()) {
            return doSmoothScrollToItem;
        }
        return Unit.f60915a;
    }

    public final void applyMeasureResult$foundation_release(@NotNull LazyListMeasureResult result) {
        int i10;
        Intrinsics.checkNotNullParameter(result, "result");
        this.scrollPosition.updateFromMeasureResult(result);
        this.scrollToBeConsumed -= result.getConsumedScroll();
        this.layoutInfoState.setValue(result);
        this.canScrollForward = result.getCanScrollForward();
        LazyMeasuredItem firstVisibleItem = result.getFirstVisibleItem();
        boolean z10 = false;
        if (firstVisibleItem != null) {
            i10 = firstVisibleItem.getIndex();
        } else {
            i10 = 0;
        }
        if (i10 != 0 || result.getFirstVisibleItemScrollOffset() != 0) {
            z10 = true;
        }
        this.canScrollBackward = z10;
        this.numMeasurePasses++;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f10) {
        return this.scrollableState.dispatchRawDelta(f10);
    }

    @NotNull
    public final AwaitFirstLayoutModifier getAwaitLayoutModifier$foundation_release() {
        return this.awaitLayoutModifier;
    }

    public final boolean getCanScrollForward$foundation_release() {
        return this.canScrollForward;
    }

    @NotNull
    public final Density getDensity$foundation_release() {
        return (Density) this.density$delegate.getValue();
    }

    public final int getFirstVisibleItemIndex() {
        return this.scrollPosition.m570getIndexjQJCoq8();
    }

    public final int getFirstVisibleItemScrollOffset() {
        return this.scrollPosition.getScrollOffset();
    }

    @NotNull
    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    @NotNull
    public final MutableInteractionSource getInternalInteractionSource$foundation_release() {
        return this.internalInteractionSource;
    }

    @NotNull
    public final LazyListLayoutInfo getLayoutInfo() {
        return this.layoutInfoState.getValue();
    }

    public final int getNumMeasurePasses$foundation_release() {
        return this.numMeasurePasses;
    }

    @Nullable
    public final LazyListItemPlacementAnimator getPlacementAnimator$foundation_release() {
        return (LazyListItemPlacementAnimator) this.placementAnimator$delegate.getValue();
    }

    @NotNull
    public final LazyLayoutPrefetchState getPrefetchState$foundation_release() {
        return this.prefetchState;
    }

    public final boolean getPrefetchingEnabled$foundation_release() {
        return this.prefetchingEnabled;
    }

    /* renamed from: getPremeasureConstraints-msEJaDk$foundation_release  reason: not valid java name */
    public final long m575getPremeasureConstraintsmsEJaDk$foundation_release() {
        return ((Constraints) this.premeasureConstraints$delegate.getValue()).m4011unboximpl();
    }

    @Nullable
    public final Remeasurement getRemeasurement$foundation_release() {
        return (Remeasurement) this.remeasurement$delegate.getValue();
    }

    @NotNull
    public final RemeasurementModifier getRemeasurementModifier$foundation_release() {
        return this.remeasurementModifier;
    }

    public final float getScrollToBeConsumed$foundation_release() {
        return this.scrollToBeConsumed;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    public final float onScroll$foundation_release(float f10) {
        if ((f10 < 0.0f && !this.canScrollForward) || (f10 > 0.0f && !this.canScrollBackward)) {
            return 0.0f;
        }
        if (Math.abs(this.scrollToBeConsumed) <= 0.5f) {
            float f11 = this.scrollToBeConsumed + f10;
            this.scrollToBeConsumed = f11;
            if (Math.abs(f11) > 0.5f) {
                float f12 = this.scrollToBeConsumed;
                Remeasurement remeasurement$foundation_release = getRemeasurement$foundation_release();
                if (remeasurement$foundation_release != null) {
                    remeasurement$foundation_release.forceRemeasure();
                }
                if (this.prefetchingEnabled) {
                    notifyPrefetch(f12 - this.scrollToBeConsumed);
                }
            }
            if (Math.abs(this.scrollToBeConsumed) <= 0.5f) {
                return f10;
            }
            float f13 = f10 - this.scrollToBeConsumed;
            this.scrollToBeConsumed = 0.0f;
            return f13;
        }
        throw new IllegalStateException(("entered drag with non-zero pending scroll: " + this.scrollToBeConsumed).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b A[RETURN] */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object scroll(@org.jetbrains.annotations.NotNull androidx.compose.foundation.MutatePriority r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super androidx.compose.foundation.gestures.ScrollScope, ? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object> r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.lazy.LazyListState$scroll$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = (androidx.compose.foundation.lazy.LazyListState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = new androidx.compose.foundation.lazy.LazyListState$scroll$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r8)
            goto L6c
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.L$2
            r7 = r6
            kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7
            java.lang.Object r6 = r0.L$1
            androidx.compose.foundation.MutatePriority r6 = (androidx.compose.foundation.MutatePriority) r6
            java.lang.Object r2 = r0.L$0
            androidx.compose.foundation.lazy.LazyListState r2 = (androidx.compose.foundation.lazy.LazyListState) r2
            kotlin.f.b(r8)
            goto L5a
        L45:
            kotlin.f.b(r8)
            androidx.compose.foundation.lazy.AwaitFirstLayoutModifier r8 = r5.awaitLayoutModifier
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r7
            r0.label = r4
            java.lang.Object r8 = r8.waitForFirstLayout(r0)
            if (r8 != r1) goto L59
            return r1
        L59:
            r2 = r5
        L5a:
            androidx.compose.foundation.gestures.ScrollableState r8 = r2.scrollableState
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.L$2 = r2
            r0.label = r3
            java.lang.Object r6 = r8.scroll(r6, r7, r0)
            if (r6 != r1) goto L6c
            return r1
        L6c:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object scrollToItem(int i10, int i11, @NotNull c<? super Unit> cVar) {
        Object scroll$default = ScrollableState.scroll$default(this, null, new LazyListState$scrollToItem$2(this, i10, i11, null), cVar, 1, null);
        if (scroll$default == a.f()) {
            return scroll$default;
        }
        return Unit.f60915a;
    }

    public final void setDensity$foundation_release(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.density$delegate.setValue(density);
    }

    public final void setPlacementAnimator$foundation_release(@Nullable LazyListItemPlacementAnimator lazyListItemPlacementAnimator) {
        this.placementAnimator$delegate.setValue(lazyListItemPlacementAnimator);
    }

    public final void setPrefetchingEnabled$foundation_release(boolean z10) {
        this.prefetchingEnabled = z10;
    }

    /* renamed from: setPremeasureConstraints-BRTryo0$foundation_release  reason: not valid java name */
    public final void m576setPremeasureConstraintsBRTryo0$foundation_release(long j10) {
        this.premeasureConstraints$delegate.setValue(Constraints.m3993boximpl(j10));
    }

    public final void snapToItemIndexInternal$foundation_release(int i10, int i11) {
        this.scrollPosition.m571requestPositionAhXoVpI(DataIndex.m536constructorimpl(i10), i11);
        LazyListItemPlacementAnimator placementAnimator$foundation_release = getPlacementAnimator$foundation_release();
        if (placementAnimator$foundation_release != null) {
            placementAnimator$foundation_release.reset();
        }
        Remeasurement remeasurement$foundation_release = getRemeasurement$foundation_release();
        if (remeasurement$foundation_release != null) {
            remeasurement$foundation_release.forceRemeasure();
        }
    }

    public final void updateScrollPositionIfTheFirstItemWasMoved$foundation_release(@NotNull LazyListItemProvider itemProvider) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        this.scrollPosition.updateScrollPositionIfTheFirstItemWasMoved(itemProvider);
    }

    public LazyListState(int i10, int i11) {
        MutableState<LazyListLayoutInfo> mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        this.scrollPosition = new LazyListScrollPosition(i10, i11);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(EmptyLazyListLayoutInfo.INSTANCE, null, 2, null);
        this.layoutInfoState = mutableStateOf$default;
        this.internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DensityKt.Density(1.0f, 1.0f), null, 2, null);
        this.density$delegate = mutableStateOf$default2;
        this.scrollableState = ScrollableStateKt.ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.lazy.LazyListState$scrollableState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @NotNull
            public final Float invoke(float f10) {
                return Float.valueOf(-LazyListState.this.onScroll$foundation_release(-f10));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Float invoke(Float f10) {
                return invoke(f10.floatValue());
            }
        });
        this.prefetchingEnabled = true;
        this.indexToPrefetch = -1;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.remeasurement$delegate = mutableStateOf$default3;
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public void onRemeasurementAvailable(@NotNull Remeasurement remeasurement) {
                Intrinsics.checkNotNullParameter(remeasurement, "remeasurement");
                LazyListState.this.setRemeasurement(remeasurement);
            }
        };
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.placementAnimator$delegate = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Constraints.m3993boximpl(ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null)), null, 2, null);
        this.premeasureConstraints$delegate = mutableStateOf$default5;
        this.prefetchState = new LazyLayoutPrefetchState();
    }

    public /* synthetic */ LazyListState(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}

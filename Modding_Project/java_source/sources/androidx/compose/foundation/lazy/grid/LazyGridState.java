package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
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
/* compiled from: LazyGridState.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class LazyGridState implements ScrollableState {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Saver<LazyGridState, ?> Saver = ListSaverKt.listSaver(new Function2<SaverScope, LazyGridState, List<? extends Integer>>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        @NotNull
        public final List<Integer> invoke(@NotNull SaverScope listSaver, @NotNull LazyGridState it) {
            Intrinsics.checkNotNullParameter(listSaver, "$this$listSaver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.q(Integer.valueOf(it.getFirstVisibleItemIndex()), Integer.valueOf(it.getFirstVisibleItemScrollOffset()));
        }
    }, new Function1<List<? extends Integer>, LazyGridState>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ LazyGridState invoke(List<? extends Integer> list) {
            return invoke2((List<Integer>) list);
        }

        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final LazyGridState invoke2(@NotNull List<Integer> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new LazyGridState(it.get(0).intValue(), it.get(1).intValue());
        }
    });
    @NotNull
    private final AwaitFirstLayoutModifier awaitLayoutModifier;
    private boolean canScrollBackward;
    private boolean canScrollForward;
    @NotNull
    private final MutableVector<LazyLayoutPrefetchState.PrefetchHandle> currentLinePrefetchHandles;
    @NotNull
    private final MutableState density$delegate;
    @NotNull
    private final MutableInteractionSource internalInteractionSource;
    @NotNull
    private final MutableState isVertical$delegate;
    @NotNull
    private final MutableState<LazyGridLayoutInfo> layoutInfoState;
    private int lineToPrefetch;
    private int numMeasurePasses;
    @NotNull
    private final MutableState placementAnimator$delegate;
    @NotNull
    private final MutableState prefetchInfoRetriever$delegate;
    @NotNull
    private final LazyLayoutPrefetchState prefetchState;
    private boolean prefetchingEnabled;
    @NotNull
    private final MutableState remeasurement$delegate;
    @NotNull
    private final RemeasurementModifier remeasurementModifier;
    @NotNull
    private final LazyGridScrollPosition scrollPosition;
    private float scrollToBeConsumed;
    @NotNull
    private final ScrollableState scrollableState;
    @NotNull
    private final MutableState slotsPerLine$delegate;
    private boolean wasScrollingForward;

    /* compiled from: LazyGridState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Saver<LazyGridState, ?> getSaver() {
            return LazyGridState.Saver;
        }

        private Companion() {
        }
    }

    public LazyGridState() {
        this(0, 0, 3, null);
    }

    public static /* synthetic */ Object animateScrollToItem$default(LazyGridState lazyGridState, int i10, int i11, c cVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyGridState.animateScrollToItem(i10, i11, cVar);
    }

    private final Remeasurement getRemeasurement() {
        return (Remeasurement) this.remeasurement$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf A[LOOP:1: B:35:0x00bd->B:36:0x00bf, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void notifyPrefetch(float r9) {
        /*
            r8 = this;
            androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState r0 = r8.prefetchState
            boolean r1 = r8.prefetchingEnabled
            if (r1 != 0) goto L7
            return
        L7:
            androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo r1 = r8.getLayoutInfo()
            java.util.List r2 = r1.getVisibleItemsInfo()
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto Le5
            r2 = 0
            int r9 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            r2 = 0
            r3 = 1
            if (r9 >= 0) goto L20
            r9 = r3
            goto L21
        L20:
            r9 = r2
        L21:
            if (r9 == 0) goto L4d
            java.util.List r4 = r1.getVisibleItemsInfo()
            java.lang.Object r4 = kotlin.collections.CollectionsKt.C0(r4)
            androidx.compose.foundation.lazy.grid.LazyGridItemInfo r4 = (androidx.compose.foundation.lazy.grid.LazyGridItemInfo) r4
            boolean r5 = r8.isVertical$foundation_release()
            if (r5 == 0) goto L38
            int r4 = r4.getRow()
            goto L3c
        L38:
            int r4 = r4.getColumn()
        L3c:
            int r4 = r4 + r3
            java.util.List r5 = r1.getVisibleItemsInfo()
            java.lang.Object r5 = kotlin.collections.CollectionsKt.C0(r5)
            androidx.compose.foundation.lazy.grid.LazyGridItemInfo r5 = (androidx.compose.foundation.lazy.grid.LazyGridItemInfo) r5
            int r5 = r5.getIndex()
            int r5 = r5 + r3
            goto L77
        L4d:
            java.util.List r4 = r1.getVisibleItemsInfo()
            java.lang.Object r4 = kotlin.collections.CollectionsKt.r0(r4)
            androidx.compose.foundation.lazy.grid.LazyGridItemInfo r4 = (androidx.compose.foundation.lazy.grid.LazyGridItemInfo) r4
            boolean r5 = r8.isVertical$foundation_release()
            if (r5 == 0) goto L62
            int r4 = r4.getRow()
            goto L66
        L62:
            int r4 = r4.getColumn()
        L66:
            int r4 = r4 + (-1)
            java.util.List r5 = r1.getVisibleItemsInfo()
            java.lang.Object r5 = kotlin.collections.CollectionsKt.r0(r5)
            androidx.compose.foundation.lazy.grid.LazyGridItemInfo r5 = (androidx.compose.foundation.lazy.grid.LazyGridItemInfo) r5
            int r5 = r5.getIndex()
            int r5 = r5 - r3
        L77:
            int r6 = r8.lineToPrefetch
            if (r4 == r6) goto Le5
            if (r5 < 0) goto Le5
            int r1 = r1.getTotalItemsCount()
            if (r5 >= r1) goto Le5
            boolean r1 = r8.wasScrollingForward
            if (r1 == r9) goto L9e
            androidx.compose.runtime.collection.MutableVector<androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState$PrefetchHandle> r1 = r8.currentLinePrefetchHandles
            int r5 = r1.getSize()
            if (r5 <= 0) goto L9e
            java.lang.Object[] r1 = r1.getContent()
            r6 = r2
        L94:
            r7 = r1[r6]
            androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState$PrefetchHandle r7 = (androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle) r7
            r7.cancel()
            int r6 = r6 + r3
            if (r6 < r5) goto L94
        L9e:
            r8.wasScrollingForward = r9
            r8.lineToPrefetch = r4
            androidx.compose.runtime.collection.MutableVector<androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState$PrefetchHandle> r9 = r8.currentLinePrefetchHandles
            r9.clear()
            kotlin.jvm.functions.Function1 r9 = r8.getPrefetchInfoRetriever$foundation_release()
            int r1 = androidx.compose.foundation.lazy.grid.LineIndex.m644constructorimpl(r4)
            androidx.compose.foundation.lazy.grid.LineIndex r1 = androidx.compose.foundation.lazy.grid.LineIndex.m642boximpl(r1)
            java.lang.Object r9 = r9.invoke(r1)
            java.util.List r9 = (java.util.List) r9
            int r1 = r9.size()
        Lbd:
            if (r2 >= r1) goto Le5
            java.lang.Object r3 = r9.get(r2)
            kotlin.Pair r3 = (kotlin.Pair) r3
            androidx.compose.runtime.collection.MutableVector<androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState$PrefetchHandle> r4 = r8.currentLinePrefetchHandles
            java.lang.Object r5 = r3.e()
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            java.lang.Object r3 = r3.f()
            androidx.compose.ui.unit.Constraints r3 = (androidx.compose.ui.unit.Constraints) r3
            long r6 = r3.m4011unboximpl()
            androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState$PrefetchHandle r3 = r0.m660schedulePrefetch0kLqBqw(r5, r6)
            r4.add(r3)
            int r2 = r2 + 1
            goto Lbd
        Le5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridState.notifyPrefetch(float):void");
    }

    public static /* synthetic */ Object scrollToItem$default(LazyGridState lazyGridState, int i10, int i11, c cVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return lazyGridState.scrollToItem(i10, i11, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setRemeasurement(Remeasurement remeasurement) {
        this.remeasurement$delegate.setValue(remeasurement);
    }

    @Nullable
    public final Object animateScrollToItem(int i10, int i11, @NotNull c<? super Unit> cVar) {
        Object doSmoothScrollToItem = LazyGridScrollingKt.doSmoothScrollToItem(this, i10, i11, getSlotsPerLine$foundation_release(), cVar);
        if (doSmoothScrollToItem == a.f()) {
            return doSmoothScrollToItem;
        }
        return Unit.f60915a;
    }

    public final void applyMeasureResult$foundation_release(@NotNull LazyGridMeasureResult result) {
        int i10;
        Intrinsics.checkNotNullParameter(result, "result");
        this.scrollPosition.updateFromMeasureResult(result);
        this.scrollToBeConsumed -= result.getConsumedScroll();
        this.layoutInfoState.setValue(result);
        this.canScrollForward = result.getCanScrollForward();
        LazyMeasuredLine firstVisibleLine = result.getFirstVisibleLine();
        boolean z10 = false;
        if (firstVisibleLine != null) {
            i10 = firstVisibleLine.m639getIndexhA7yfN8();
        } else {
            i10 = 0;
        }
        if (i10 != 0 || result.getFirstVisibleLineScrollOffset() != 0) {
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
        return this.scrollPosition.m630getIndexVZbfaAc();
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
    public final LazyGridLayoutInfo getLayoutInfo() {
        return this.layoutInfoState.getValue();
    }

    public final int getNumMeasurePasses$foundation_release() {
        return this.numMeasurePasses;
    }

    @Nullable
    public final LazyGridItemPlacementAnimator getPlacementAnimator$foundation_release() {
        return (LazyGridItemPlacementAnimator) this.placementAnimator$delegate.getValue();
    }

    @NotNull
    public final Function1<LineIndex, List<Pair<Integer, Constraints>>> getPrefetchInfoRetriever$foundation_release() {
        return (Function1) this.prefetchInfoRetriever$delegate.getValue();
    }

    @NotNull
    public final LazyLayoutPrefetchState getPrefetchState$foundation_release() {
        return this.prefetchState;
    }

    public final boolean getPrefetchingEnabled$foundation_release() {
        return this.prefetchingEnabled;
    }

    @NotNull
    public final RemeasurementModifier getRemeasurementModifier$foundation_release() {
        return this.remeasurementModifier;
    }

    public final float getScrollToBeConsumed$foundation_release() {
        return this.scrollToBeConsumed;
    }

    public final int getSlotsPerLine$foundation_release() {
        return ((Number) this.slotsPerLine$delegate.getValue()).intValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    public final boolean isVertical$foundation_release() {
        return ((Boolean) this.isVertical$delegate.getValue()).booleanValue();
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
                Remeasurement remeasurement = getRemeasurement();
                if (remeasurement != null) {
                    remeasurement.forceRemeasure();
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
            boolean r0 = r8 instanceof androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1 r0 = (androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1 r0 = new androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1
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
            androidx.compose.foundation.lazy.grid.LazyGridState r2 = (androidx.compose.foundation.lazy.grid.LazyGridState) r2
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridState.scroll(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object scrollToItem(int i10, int i11, @NotNull c<? super Unit> cVar) {
        Object scroll$default = ScrollableState.scroll$default(this, null, new LazyGridState$scrollToItem$2(this, i10, i11, null), cVar, 1, null);
        if (scroll$default == a.f()) {
            return scroll$default;
        }
        return Unit.f60915a;
    }

    public final void setDensity$foundation_release(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.density$delegate.setValue(density);
    }

    public final void setPlacementAnimator$foundation_release(@Nullable LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator) {
        this.placementAnimator$delegate.setValue(lazyGridItemPlacementAnimator);
    }

    public final void setPrefetchInfoRetriever$foundation_release(@NotNull Function1<? super LineIndex, ? extends List<Pair<Integer, Constraints>>> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.prefetchInfoRetriever$delegate.setValue(function1);
    }

    public final void setPrefetchingEnabled$foundation_release(boolean z10) {
        this.prefetchingEnabled = z10;
    }

    public final void setSlotsPerLine$foundation_release(int i10) {
        this.slotsPerLine$delegate.setValue(Integer.valueOf(i10));
    }

    public final void setVertical$foundation_release(boolean z10) {
        this.isVertical$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void snapToItemIndexInternal$foundation_release(int i10, int i11) {
        this.scrollPosition.m631requestPositionyO3Fmg4(ItemIndex.m592constructorimpl(i10), i11);
        LazyGridItemPlacementAnimator placementAnimator$foundation_release = getPlacementAnimator$foundation_release();
        if (placementAnimator$foundation_release != null) {
            placementAnimator$foundation_release.reset();
        }
        Remeasurement remeasurement = getRemeasurement();
        if (remeasurement != null) {
            remeasurement.forceRemeasure();
        }
    }

    public final void updateScrollPositionIfTheFirstItemWasMoved$foundation_release(@NotNull LazyGridItemProvider itemProvider) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        this.scrollPosition.updateScrollPositionIfTheFirstItemWasMoved(itemProvider);
    }

    public LazyGridState(int i10, int i11) {
        MutableState<LazyGridLayoutInfo> mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        MutableState mutableStateOf$default6;
        MutableState mutableStateOf$default7;
        this.scrollPosition = new LazyGridScrollPosition(i10, i11);
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(EmptyLazyGridLayoutInfo.INSTANCE, null, 2, null);
        this.layoutInfoState = mutableStateOf$default;
        this.internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(0, null, 2, null);
        this.slotsPerLine$delegate = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DensityKt.Density(1.0f, 1.0f), null, 2, null);
        this.density$delegate = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.isVertical$delegate = mutableStateOf$default4;
        this.scrollableState = ScrollableStateKt.ScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$scrollableState$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @NotNull
            public final Float invoke(float f10) {
                return Float.valueOf(-LazyGridState.this.onScroll$foundation_release(-f10));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Float invoke(Float f10) {
                return invoke(f10.floatValue());
            }
        });
        this.prefetchingEnabled = true;
        this.lineToPrefetch = -1;
        this.currentLinePrefetchHandles = new MutableVector<>(new LazyLayoutPrefetchState.PrefetchHandle[16], 0);
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.remeasurement$delegate = mutableStateOf$default5;
        this.remeasurementModifier = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public void onRemeasurementAvailable(@NotNull Remeasurement remeasurement) {
                Intrinsics.checkNotNullParameter(remeasurement, "remeasurement");
                LazyGridState.this.setRemeasurement(remeasurement);
            }
        };
        this.awaitLayoutModifier = new AwaitFirstLayoutModifier();
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new Function1<LineIndex, List<? extends Pair<? extends Integer, ? extends Constraints>>>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$prefetchInfoRetriever$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ List<? extends Pair<? extends Integer, ? extends Constraints>> invoke(LineIndex lineIndex) {
                return m635invokebKFJvoY(lineIndex.m654unboximpl());
            }

            @NotNull
            /* renamed from: invoke-bKFJvoY  reason: not valid java name */
            public final List<Pair<Integer, Constraints>> m635invokebKFJvoY(int i12) {
                return CollectionsKt.n();
            }
        }, null, 2, null);
        this.prefetchInfoRetriever$delegate = mutableStateOf$default6;
        mutableStateOf$default7 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.placementAnimator$delegate = mutableStateOf$default7;
        this.prefetchState = new LazyLayoutPrefetchState();
    }

    public /* synthetic */ LazyGridState(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}

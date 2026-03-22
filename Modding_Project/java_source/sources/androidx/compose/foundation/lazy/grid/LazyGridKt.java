package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGrid.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridKt {
    /* JADX WARN: Removed duplicated region for block: B:107:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0304 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:171:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0131  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyGrid(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r32, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.lazy.grid.LazyGridState r33, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.ui.unit.Density, ? super androidx.compose.ui.unit.Constraints, ? extends java.util.List<java.lang.Integer>> r34, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.PaddingValues r35, boolean r36, final boolean r37, @org.jetbrains.annotations.Nullable androidx.compose.foundation.gestures.FlingBehavior r38, final boolean r39, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.layout.Arrangement.Vertical r40, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.layout.Arrangement.Horizontal r41, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.grid.LazyGridScope, kotlin.Unit> r42, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r43, final int r44, final int r45, final int r46) {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridKt.LazyGrid(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.grid.LazyGridState, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, boolean, boolean, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final void ScrollPositionUpdater(final LazyGridItemProvider lazyGridItemProvider, final LazyGridState lazyGridState, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(950944068);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(lazyGridItemProvider)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(lazyGridState)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else if (lazyGridItemProvider.getItemCount() > 0) {
            lazyGridState.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(lazyGridItemProvider);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$ScrollPositionUpdater$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i14) {
                    LazyGridKt.ScrollPositionUpdater(LazyGridItemProvider.this, lazyGridState, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshOverscrollInfo(OverscrollEffect overscrollEffect, LazyGridMeasureResult lazyGridMeasureResult) {
        Object obj;
        boolean z10;
        LazyMeasuredItem[] items;
        boolean canScrollForward = lazyGridMeasureResult.getCanScrollForward();
        LazyMeasuredLine firstVisibleLine = lazyGridMeasureResult.getFirstVisibleLine();
        boolean z11 = false;
        if (firstVisibleLine == null || (items = firstVisibleLine.getItems()) == null || (obj = (LazyMeasuredItem) n.l0(items)) == null) {
            obj = 0;
        }
        if (Intrinsics.areEqual(obj, (Object) 0) && lazyGridMeasureResult.getFirstVisibleLineScrollOffset() == 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (canScrollForward || z10) {
            z11 = true;
        }
        overscrollEffect.setEnabled(z11);
    }

    @Composable
    private static final Function2<LazyLayoutMeasureScope, Constraints, MeasureResult> rememberLazyGridMeasurePolicy(final LazyGridItemProvider lazyGridItemProvider, final LazyGridState lazyGridState, final OverscrollEffect overscrollEffect, final Function2<? super Density, ? super Constraints, ? extends List<Integer>> function2, final PaddingValues paddingValues, final boolean z10, final boolean z11, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, final LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, Composer composer, int i10, int i11) {
        Arrangement.Horizontal horizontal2;
        composer.startReplaceableGroup(1958911962);
        Arrangement.Vertical vertical2 = null;
        if ((i11 & 128) != 0) {
            horizontal2 = null;
        } else {
            horizontal2 = horizontal;
        }
        if ((i11 & 256) == 0) {
            vertical2 = vertical;
        }
        Object[] objArr = {lazyGridState, overscrollEffect, function2, paddingValues, Boolean.valueOf(z10), Boolean.valueOf(z11), horizontal2, vertical2, lazyGridItemPlacementAnimator};
        composer.startReplaceableGroup(-568225417);
        boolean z12 = false;
        for (int i12 = 0; i12 < 9; i12++) {
            z12 |= composer.changed(objArr[i12]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z12 || rememberedValue == Composer.Companion.getEmpty()) {
            final Arrangement.Vertical vertical3 = vertical2;
            final Arrangement.Horizontal horizontal3 = horizontal2;
            rememberedValue = new Function2<LazyLayoutMeasureScope, Constraints, LazyGridMeasureResult>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ LazyGridMeasureResult invoke(LazyLayoutMeasureScope lazyLayoutMeasureScope, Constraints constraints) {
                    return m618invoke0kLqBqw(lazyLayoutMeasureScope, constraints.m4011unboximpl());
                }

                @NotNull
                /* renamed from: invoke-0kLqBqw  reason: not valid java name */
                public final LazyGridMeasureResult m618invoke0kLqBqw(@NotNull final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j10) {
                    Orientation orientation;
                    int mo336roundToPx0680j_4;
                    int mo336roundToPx0680j_42;
                    int i13;
                    int i14;
                    float mo398getSpacingD9Ej5fM;
                    float m4049constructorimpl;
                    int m4005getMaxWidthimpl;
                    long IntOffset;
                    int firstVisibleItemScrollOffset;
                    int i15;
                    Intrinsics.checkNotNullParameter(lazyLayoutMeasureScope, "$this$null");
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    CheckScrollableContainerConstraintsKt.m215checkScrollableContainerConstraintsK40F9xA(j10, orientation);
                    if (z11) {
                        mo336roundToPx0680j_4 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(paddingValues.mo428calculateLeftPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection()));
                    } else {
                        mo336roundToPx0680j_4 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(PaddingKt.calculateStartPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()));
                    }
                    if (z11) {
                        mo336roundToPx0680j_42 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(paddingValues.mo429calculateRightPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection()));
                    } else {
                        mo336roundToPx0680j_42 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(PaddingKt.calculateEndPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()));
                    }
                    int mo336roundToPx0680j_43 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(paddingValues.mo430calculateTopPaddingD9Ej5fM());
                    int mo336roundToPx0680j_44 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(paddingValues.mo427calculateBottomPaddingD9Ej5fM());
                    final int i16 = mo336roundToPx0680j_43 + mo336roundToPx0680j_44;
                    final int i17 = mo336roundToPx0680j_4 + mo336roundToPx0680j_42;
                    boolean z13 = z11;
                    if (z13) {
                        i13 = i16;
                    } else {
                        i13 = i17;
                    }
                    if (z13 && !z10) {
                        i14 = mo336roundToPx0680j_43;
                    } else if (z13 && z10) {
                        i14 = mo336roundToPx0680j_44;
                    } else if (!z13 && !z10) {
                        i14 = mo336roundToPx0680j_4;
                    } else {
                        i14 = mo336roundToPx0680j_42;
                    }
                    final int i18 = i13 - i14;
                    long m4021offsetNN6EwU = ConstraintsKt.m4021offsetNN6EwU(j10, -i17, -i16);
                    lazyGridState.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(lazyGridItemProvider);
                    final LazyGridSpanLayoutProvider spanLayoutProvider = lazyGridItemProvider.getSpanLayoutProvider();
                    final List<Integer> invoke = function2.invoke(lazyLayoutMeasureScope, Constraints.m3993boximpl(j10));
                    spanLayoutProvider.setSlotsPerLine(invoke.size());
                    lazyGridState.setDensity$foundation_release(lazyLayoutMeasureScope);
                    lazyGridState.setSlotsPerLine$foundation_release(invoke.size());
                    if (z11) {
                        Arrangement.Vertical vertical4 = vertical3;
                        if (vertical4 != null) {
                            mo398getSpacingD9Ej5fM = vertical4.mo398getSpacingD9Ej5fM();
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    } else {
                        Arrangement.Horizontal horizontal4 = horizontal3;
                        if (horizontal4 != null) {
                            mo398getSpacingD9Ej5fM = horizontal4.mo398getSpacingD9Ej5fM();
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    }
                    int mo336roundToPx0680j_45 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(mo398getSpacingD9Ej5fM);
                    if (z11) {
                        Arrangement.Horizontal horizontal5 = horizontal3;
                        if (horizontal5 != null) {
                            m4049constructorimpl = horizontal5.mo398getSpacingD9Ej5fM();
                        } else {
                            m4049constructorimpl = Dp.m4049constructorimpl(0);
                        }
                    } else {
                        Arrangement.Vertical vertical5 = vertical3;
                        if (vertical5 != null) {
                            m4049constructorimpl = vertical5.mo398getSpacingD9Ej5fM();
                        } else {
                            m4049constructorimpl = Dp.m4049constructorimpl(0);
                        }
                    }
                    final int mo336roundToPx0680j_46 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(m4049constructorimpl);
                    int itemCount = lazyGridItemProvider.getItemCount();
                    if (z11) {
                        m4005getMaxWidthimpl = Constraints.m4004getMaxHeightimpl(j10) - i16;
                    } else {
                        m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10) - i17;
                    }
                    int i19 = m4005getMaxWidthimpl;
                    if (z10 && i19 <= 0) {
                        boolean z14 = z11;
                        if (!z14) {
                            mo336roundToPx0680j_4 += i19;
                        }
                        if (z14) {
                            mo336roundToPx0680j_43 += i19;
                        }
                        IntOffset = IntOffsetKt.IntOffset(mo336roundToPx0680j_4, mo336roundToPx0680j_43);
                    } else {
                        IntOffset = IntOffsetKt.IntOffset(mo336roundToPx0680j_4, mo336roundToPx0680j_43);
                    }
                    final long j11 = IntOffset;
                    LazyGridItemProvider lazyGridItemProvider2 = lazyGridItemProvider;
                    final boolean z15 = z11;
                    final boolean z16 = z10;
                    final LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator2 = lazyGridItemPlacementAnimator;
                    final int i20 = i14;
                    LazyMeasuredItemProvider lazyMeasuredItemProvider = new LazyMeasuredItemProvider(lazyGridItemProvider2, lazyLayoutMeasureScope, mo336roundToPx0680j_45, new MeasuredItemFactory() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1
                        @Override // androidx.compose.foundation.lazy.grid.MeasuredItemFactory
                        @NotNull
                        /* renamed from: createItem-PU_OBEw  reason: not valid java name */
                        public final LazyMeasuredItem mo620createItemPU_OBEw(int i21, @NotNull Object key, int i22, int i23, @NotNull Placeable[] placeables) {
                            Intrinsics.checkNotNullParameter(key, "key");
                            Intrinsics.checkNotNullParameter(placeables, "placeables");
                            return new LazyMeasuredItem(i21, key, z15, i22, i23, z16, LazyLayoutMeasureScope.this.getLayoutDirection(), i20, i18, placeables, lazyGridItemPlacementAnimator2, j11, null);
                        }
                    });
                    final boolean z17 = z11;
                    final LazyMeasuredLineProvider lazyMeasuredLineProvider = new LazyMeasuredLineProvider(z17, invoke, mo336roundToPx0680j_46, itemCount, mo336roundToPx0680j_45, lazyMeasuredItemProvider, spanLayoutProvider, new MeasuredLineFactory() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
                        @Override // androidx.compose.foundation.lazy.grid.MeasuredLineFactory
                        @NotNull
                        /* renamed from: createLine-H9FfpSk  reason: not valid java name */
                        public final LazyMeasuredLine mo621createLineH9FfpSk(int i21, @NotNull LazyMeasuredItem[] items, @NotNull List<GridItemSpan> spans, int i22) {
                            Intrinsics.checkNotNullParameter(items, "items");
                            Intrinsics.checkNotNullParameter(spans, "spans");
                            return new LazyMeasuredLine(i21, items, spans, z17, invoke.size(), lazyLayoutMeasureScope.getLayoutDirection(), i22, mo336roundToPx0680j_46, null);
                        }
                    });
                    lazyGridState.setPrefetchInfoRetriever$foundation_release(new Function1<LineIndex, ArrayList<Pair<? extends Integer, ? extends Constraints>>>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ ArrayList<Pair<? extends Integer, ? extends Constraints>> invoke(LineIndex lineIndex) {
                            return m619invokebKFJvoY(lineIndex.m654unboximpl());
                        }

                        @NotNull
                        /* renamed from: invoke-bKFJvoY  reason: not valid java name */
                        public final ArrayList<Pair<Integer, Constraints>> m619invokebKFJvoY(int i21) {
                            LazyGridSpanLayoutProvider.LineConfiguration lineConfiguration = LazyGridSpanLayoutProvider.this.getLineConfiguration(i21);
                            int m592constructorimpl = ItemIndex.m592constructorimpl(lineConfiguration.getFirstItemIndex());
                            ArrayList<Pair<Integer, Constraints>> arrayList = new ArrayList<>(lineConfiguration.getSpans().size());
                            List<GridItemSpan> spans = lineConfiguration.getSpans();
                            LazyMeasuredLineProvider lazyMeasuredLineProvider2 = lazyMeasuredLineProvider;
                            int size = spans.size();
                            int i22 = 0;
                            for (int i23 = 0; i23 < size; i23++) {
                                int m586getCurrentLineSpanimpl = GridItemSpan.m586getCurrentLineSpanimpl(spans.get(i23).m589unboximpl());
                                arrayList.add(k.a(Integer.valueOf(m592constructorimpl), lazyMeasuredLineProvider2.getChildConstraints$foundation_release().invoke(Integer.valueOf(i22), Integer.valueOf(m586getCurrentLineSpanimpl))));
                                m592constructorimpl = ItemIndex.m592constructorimpl(m592constructorimpl + 1);
                                i22 += m586getCurrentLineSpanimpl;
                            }
                            return arrayList;
                        }
                    });
                    Snapshot.Companion companion = Snapshot.Companion;
                    LazyGridState lazyGridState2 = lazyGridState;
                    Snapshot createNonObservableSnapshot = companion.createNonObservableSnapshot();
                    try {
                        Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                        if (lazyGridState2.getFirstVisibleItemIndex() >= itemCount && itemCount > 0) {
                            i15 = spanLayoutProvider.m634getLineIndexOfItem_Ze7BM(itemCount - 1);
                            firstVisibleItemScrollOffset = 0;
                            Unit unit = Unit.f60915a;
                            createNonObservableSnapshot.restoreCurrent(makeCurrent);
                            createNonObservableSnapshot.dispose();
                            LazyGridMeasureResult m622measureLazyGridzIfe3eg = LazyGridMeasureKt.m622measureLazyGridzIfe3eg(itemCount, lazyMeasuredLineProvider, lazyMeasuredItemProvider, i19, invoke.size(), i14, i18, i15, firstVisibleItemScrollOffset, lazyGridState.getScrollToBeConsumed$foundation_release(), m4021offsetNN6EwU, z11, vertical3, horizontal3, z10, lazyLayoutMeasureScope, lazyGridItemPlacementAnimator, new at.n<Integer, Integer, Function1<? super Placeable.PlacementScope, ? extends Unit>, MeasureResult>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1.3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // at.n
                                public /* bridge */ /* synthetic */ MeasureResult invoke(Integer num, Integer num2, Function1<? super Placeable.PlacementScope, ? extends Unit> function1) {
                                    return invoke(num.intValue(), num2.intValue(), (Function1<? super Placeable.PlacementScope, Unit>) function1);
                                }

                                @NotNull
                                public final MeasureResult invoke(int i21, int i22, @NotNull Function1<? super Placeable.PlacementScope, Unit> placement) {
                                    Intrinsics.checkNotNullParameter(placement, "placement");
                                    return LazyLayoutMeasureScope.this.layout(ConstraintsKt.m4019constrainWidthK40F9xA(j10, i21 + i17), ConstraintsKt.m4018constrainHeightK40F9xA(j10, i22 + i16), p0.i(), placement);
                                }
                            });
                            LazyGridState lazyGridState3 = lazyGridState;
                            OverscrollEffect overscrollEffect2 = overscrollEffect;
                            lazyGridState3.applyMeasureResult$foundation_release(m622measureLazyGridzIfe3eg);
                            LazyGridKt.refreshOverscrollInfo(overscrollEffect2, m622measureLazyGridzIfe3eg);
                            return m622measureLazyGridzIfe3eg;
                        }
                        int m634getLineIndexOfItem_Ze7BM = spanLayoutProvider.m634getLineIndexOfItem_Ze7BM(lazyGridState2.getFirstVisibleItemIndex());
                        firstVisibleItemScrollOffset = lazyGridState2.getFirstVisibleItemScrollOffset();
                        i15 = m634getLineIndexOfItem_Ze7BM;
                        Unit unit2 = Unit.f60915a;
                        createNonObservableSnapshot.restoreCurrent(makeCurrent);
                        createNonObservableSnapshot.dispose();
                        LazyGridMeasureResult m622measureLazyGridzIfe3eg2 = LazyGridMeasureKt.m622measureLazyGridzIfe3eg(itemCount, lazyMeasuredLineProvider, lazyMeasuredItemProvider, i19, invoke.size(), i14, i18, i15, firstVisibleItemScrollOffset, lazyGridState.getScrollToBeConsumed$foundation_release(), m4021offsetNN6EwU, z11, vertical3, horizontal3, z10, lazyLayoutMeasureScope, lazyGridItemPlacementAnimator, new at.n<Integer, Integer, Function1<? super Placeable.PlacementScope, ? extends Unit>, MeasureResult>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1.3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // at.n
                            public /* bridge */ /* synthetic */ MeasureResult invoke(Integer num, Integer num2, Function1<? super Placeable.PlacementScope, ? extends Unit> function1) {
                                return invoke(num.intValue(), num2.intValue(), (Function1<? super Placeable.PlacementScope, Unit>) function1);
                            }

                            @NotNull
                            public final MeasureResult invoke(int i21, int i22, @NotNull Function1<? super Placeable.PlacementScope, Unit> placement) {
                                Intrinsics.checkNotNullParameter(placement, "placement");
                                return LazyLayoutMeasureScope.this.layout(ConstraintsKt.m4019constrainWidthK40F9xA(j10, i21 + i17), ConstraintsKt.m4018constrainHeightK40F9xA(j10, i22 + i16), p0.i(), placement);
                            }
                        });
                        LazyGridState lazyGridState32 = lazyGridState;
                        OverscrollEffect overscrollEffect22 = overscrollEffect;
                        lazyGridState32.applyMeasureResult$foundation_release(m622measureLazyGridzIfe3eg2);
                        LazyGridKt.refreshOverscrollInfo(overscrollEffect22, m622measureLazyGridzIfe3eg2);
                        return m622measureLazyGridzIfe3eg2;
                    } catch (Throwable th2) {
                        createNonObservableSnapshot.dispose();
                        throw th2;
                    }
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Function2<LazyLayoutMeasureScope, Constraints, MeasureResult> function22 = (Function2) rememberedValue;
        composer.endReplaceableGroup();
        return function22;
    }
}

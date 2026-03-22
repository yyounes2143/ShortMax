package androidx.compose.foundation.lazy;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffsetKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyList.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListKt {
    /* JADX WARN: Removed duplicated region for block: B:106:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x032a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:173:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x012e  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyList(@org.jetbrains.annotations.NotNull final androidx.compose.ui.Modifier r35, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.lazy.LazyListState r36, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.layout.PaddingValues r37, final boolean r38, final boolean r39, @org.jetbrains.annotations.NotNull final androidx.compose.foundation.gestures.FlingBehavior r40, final boolean r41, @org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment.Horizontal r42, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.Arrangement.Vertical r43, @org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment.Vertical r44, @org.jetbrains.annotations.Nullable androidx.compose.foundation.layout.Arrangement.Horizontal r45, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.compose.foundation.lazy.LazyListScope, kotlin.Unit> r46, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r47, final int r48, final int r49, final int r50) {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListKt.LazyList(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, boolean, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.Alignment$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ExperimentalFoundationApi
    public static final void ScrollPositionUpdater(final LazyListItemProvider lazyListItemProvider, final LazyListState lazyListState, Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Composer startRestartGroup = composer.startRestartGroup(3173830);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(lazyListItemProvider)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(lazyListState)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else if (lazyListItemProvider.getItemCount() > 0) {
            lazyListState.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(lazyListItemProvider);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$ScrollPositionUpdater$1
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
                    LazyListKt.ScrollPositionUpdater(LazyListItemProvider.this, lazyListState, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshOverscrollInfo(OverscrollEffect overscrollEffect, LazyListMeasureResult lazyListMeasureResult) {
        int i10;
        boolean z10;
        boolean canScrollForward = lazyListMeasureResult.getCanScrollForward();
        LazyMeasuredItem firstVisibleItem = lazyListMeasureResult.getFirstVisibleItem();
        boolean z11 = false;
        if (firstVisibleItem != null) {
            i10 = firstVisibleItem.getIndex();
        } else {
            i10 = 0;
        }
        if (i10 == 0 && lazyListMeasureResult.getFirstVisibleItemScrollOffset() == 0) {
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
    @ExperimentalFoundationApi
    private static final Function2<LazyLayoutMeasureScope, Constraints, MeasureResult> rememberLazyListMeasurePolicy(final LazyListItemProvider lazyListItemProvider, final LazyListState lazyListState, final LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, final OverscrollEffect overscrollEffect, final PaddingValues paddingValues, final boolean z10, final boolean z11, Alignment.Horizontal horizontal, Alignment.Vertical vertical, Arrangement.Horizontal horizontal2, Arrangement.Vertical vertical2, final LazyListItemPlacementAnimator lazyListItemPlacementAnimator, Composer composer, int i10, int i11, int i12) {
        Alignment.Horizontal horizontal3;
        final Alignment.Vertical vertical3;
        Arrangement.Horizontal horizontal4;
        composer.startReplaceableGroup(-1404987696);
        Arrangement.Vertical vertical4 = null;
        if ((i12 & 128) != 0) {
            horizontal3 = null;
        } else {
            horizontal3 = horizontal;
        }
        if ((i12 & 256) != 0) {
            vertical3 = null;
        } else {
            vertical3 = vertical;
        }
        if ((i12 & 512) != 0) {
            horizontal4 = null;
        } else {
            horizontal4 = horizontal2;
        }
        if ((i12 & 1024) == 0) {
            vertical4 = vertical2;
        }
        Object[] objArr = {lazyListState, lazyListBeyondBoundsInfo, overscrollEffect, paddingValues, Boolean.valueOf(z10), Boolean.valueOf(z11), horizontal3, vertical3, horizontal4, vertical4, lazyListItemPlacementAnimator};
        composer.startReplaceableGroup(-568225417);
        boolean z12 = false;
        for (int i13 = 0; i13 < 11; i13++) {
            z12 |= composer.changed(objArr[i13]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z12 || rememberedValue == Composer.Companion.getEmpty()) {
            final Arrangement.Vertical vertical5 = vertical4;
            final Arrangement.Horizontal horizontal5 = horizontal4;
            final Alignment.Horizontal horizontal6 = horizontal3;
            rememberedValue = new Function2<LazyLayoutMeasureScope, Constraints, LazyListMeasureResult>() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ LazyListMeasureResult invoke(LazyLayoutMeasureScope lazyLayoutMeasureScope, Constraints constraints) {
                    return m562invoke0kLqBqw(lazyLayoutMeasureScope, constraints.m4011unboximpl());
                }

                @NotNull
                /* renamed from: invoke-0kLqBqw  reason: not valid java name */
                public final LazyListMeasureResult m562invoke0kLqBqw(@NotNull final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j10) {
                    Orientation orientation;
                    int mo336roundToPx0680j_4;
                    int mo336roundToPx0680j_42;
                    int i14;
                    int i15;
                    float mo398getSpacingD9Ej5fM;
                    int m4005getMaxWidthimpl;
                    long IntOffset;
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
                        i14 = i16;
                    } else {
                        i14 = i17;
                    }
                    if (z13 && !z10) {
                        i15 = mo336roundToPx0680j_43;
                    } else if (z13 && z10) {
                        i15 = mo336roundToPx0680j_44;
                    } else if (!z13 && !z10) {
                        i15 = mo336roundToPx0680j_4;
                    } else {
                        i15 = mo336roundToPx0680j_42;
                    }
                    final int i18 = i14 - i15;
                    long m4021offsetNN6EwU = ConstraintsKt.m4021offsetNN6EwU(j10, -i17, -i16);
                    lazyListState.updateScrollPositionIfTheFirstItemWasMoved$foundation_release(lazyListItemProvider);
                    lazyListState.setDensity$foundation_release(lazyLayoutMeasureScope);
                    lazyListItemProvider.getItemScope().m553setMaxWidth0680j_4(lazyLayoutMeasureScope.mo339toDpu2uoSUM(Constraints.m4005getMaxWidthimpl(m4021offsetNN6EwU)));
                    lazyListItemProvider.getItemScope().m552setMaxHeight0680j_4(lazyLayoutMeasureScope.mo339toDpu2uoSUM(Constraints.m4004getMaxHeightimpl(m4021offsetNN6EwU)));
                    if (z11) {
                        Arrangement.Vertical vertical6 = vertical5;
                        if (vertical6 != null) {
                            mo398getSpacingD9Ej5fM = vertical6.mo398getSpacingD9Ej5fM();
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    } else {
                        Arrangement.Horizontal horizontal7 = horizontal5;
                        if (horizontal7 != null) {
                            mo398getSpacingD9Ej5fM = horizontal7.mo398getSpacingD9Ej5fM();
                        } else {
                            throw new IllegalArgumentException("Required value was null.");
                        }
                    }
                    final int mo336roundToPx0680j_45 = lazyLayoutMeasureScope.mo336roundToPx0680j_4(mo398getSpacingD9Ej5fM);
                    final int itemCount = lazyListItemProvider.getItemCount();
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
                    final boolean z15 = z11;
                    LazyListItemProvider lazyListItemProvider2 = lazyListItemProvider;
                    final Alignment.Horizontal horizontal8 = horizontal6;
                    final Alignment.Vertical vertical7 = vertical3;
                    final boolean z16 = z10;
                    final LazyListItemPlacementAnimator lazyListItemPlacementAnimator2 = lazyListItemPlacementAnimator;
                    final int i20 = i15;
                    LazyMeasuredItemProvider lazyMeasuredItemProvider = new LazyMeasuredItemProvider(m4021offsetNN6EwU, z15, lazyListItemProvider2, lazyLayoutMeasureScope, new MeasuredItemFactory() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1
                        @Override // androidx.compose.foundation.lazy.MeasuredItemFactory
                        @NotNull
                        /* renamed from: createItem-HK0c1C0  reason: not valid java name */
                        public final LazyMeasuredItem mo563createItemHK0c1C0(int i21, @NotNull Object key, @NotNull Placeable[] placeables) {
                            int i22;
                            Intrinsics.checkNotNullParameter(key, "key");
                            Intrinsics.checkNotNullParameter(placeables, "placeables");
                            if (i21 == itemCount - 1) {
                                i22 = 0;
                            } else {
                                i22 = mo336roundToPx0680j_45;
                            }
                            int i23 = i22;
                            return new LazyMeasuredItem(i21, placeables, z15, horizontal8, vertical7, lazyLayoutMeasureScope.getLayoutDirection(), z16, i20, i18, lazyListItemPlacementAnimator2, i23, j11, key, null);
                        }
                    }, null);
                    lazyListState.m576setPremeasureConstraintsBRTryo0$foundation_release(lazyMeasuredItemProvider.m578getChildConstraintsmsEJaDk());
                    Snapshot.Companion companion = Snapshot.Companion;
                    LazyListState lazyListState2 = lazyListState;
                    Snapshot createNonObservableSnapshot = companion.createNonObservableSnapshot();
                    try {
                        Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                        int m536constructorimpl = DataIndex.m536constructorimpl(lazyListState2.getFirstVisibleItemIndex());
                        int firstVisibleItemScrollOffset = lazyListState2.getFirstVisibleItemScrollOffset();
                        Unit unit = Unit.f60915a;
                        createNonObservableSnapshot.restoreCurrent(makeCurrent);
                        createNonObservableSnapshot.dispose();
                        LazyListMeasureResult m566measureLazyList7Xnphek = LazyListMeasureKt.m566measureLazyList7Xnphek(itemCount, lazyMeasuredItemProvider, i19, i15, i18, m536constructorimpl, firstVisibleItemScrollOffset, lazyListState.getScrollToBeConsumed$foundation_release(), m4021offsetNN6EwU, z11, lazyListItemProvider.getHeaderIndexes(), vertical5, horizontal5, z10, lazyLayoutMeasureScope, lazyListItemPlacementAnimator, lazyListBeyondBoundsInfo, new n<Integer, Integer, Function1<? super Placeable.PlacementScope, ? extends Unit>, MeasureResult>() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1.2
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
                        LazyListState lazyListState3 = lazyListState;
                        OverscrollEffect overscrollEffect2 = overscrollEffect;
                        lazyListState3.applyMeasureResult$foundation_release(m566measureLazyList7Xnphek);
                        LazyListKt.refreshOverscrollInfo(overscrollEffect2, m566measureLazyList7Xnphek);
                        return m566measureLazyList7Xnphek;
                    } catch (Throwable th2) {
                        createNonObservableSnapshot.dispose();
                        throw th2;
                    }
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Function2<LazyLayoutMeasureScope, Constraints, MeasureResult> function2 = (Function2) rememberedValue;
        composer.endReplaceableGroup();
        return function2;
    }
}

package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import bt.a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.d;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyGridMeasure.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyGridMeasureKt {
    private static final List<LazyGridPositionedItem> calculateItemsOffsets(List<LazyMeasuredLine> list, int i10, int i11, int i12, int i13, int i14, boolean z10, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z11, Density density) {
        int i15;
        boolean z12;
        if (z10) {
            i15 = i11;
        } else {
            i15 = i10;
        }
        if (i12 < Math.min(i15, i13)) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12 && i14 != 0) {
            throw new IllegalStateException("Check failed.");
        }
        int size = list.size();
        int i16 = 0;
        for (int i17 = 0; i17 < size; i17++) {
            i16 += list.get(i17).getItems().length;
        }
        ArrayList arrayList = new ArrayList(i16);
        if (z12) {
            int size2 = list.size();
            int[] iArr = new int[size2];
            for (int i18 = 0; i18 < size2; i18++) {
                iArr[i18] = list.get(calculateItemsOffsets$reverseAware(i18, z11, size2)).getMainAxisSize();
            }
            int[] iArr2 = new int[size2];
            for (int i19 = 0; i19 < size2; i19++) {
                iArr2[i19] = 0;
            }
            if (z10) {
                if (vertical != null) {
                    vertical.arrange(density, i15, iArr, iArr2);
                } else {
                    throw new IllegalArgumentException("Required value was null.");
                }
            } else if (horizontal != null) {
                horizontal.arrange(density, i15, iArr, LayoutDirection.Ltr, iArr2);
            } else {
                throw new IllegalArgumentException("Required value was null.");
            }
            d n02 = n.n0(iArr2);
            if (z11) {
                n02 = e.t(n02);
            }
            int c10 = n02.c();
            int d10 = n02.d();
            int e10 = n02.e();
            if ((e10 > 0 && c10 <= d10) || (e10 < 0 && d10 <= c10)) {
                while (true) {
                    int i20 = iArr2[c10];
                    LazyMeasuredLine lazyMeasuredLine = list.get(calculateItemsOffsets$reverseAware(c10, z11, size2));
                    if (z11) {
                        i20 = (i15 - i20) - lazyMeasuredLine.getMainAxisSize();
                    }
                    arrayList.addAll(lazyMeasuredLine.position(i20, i10, i11));
                    if (c10 == d10) {
                        break;
                    }
                    c10 += e10;
                }
            }
        } else {
            int size3 = list.size();
            int i21 = i14;
            for (int i22 = 0; i22 < size3; i22++) {
                LazyMeasuredLine lazyMeasuredLine2 = list.get(i22);
                arrayList.addAll(lazyMeasuredLine2.position(i21, i10, i11));
                i21 += lazyMeasuredLine2.getMainAxisSizeWithSpacings();
            }
        }
        return arrayList;
    }

    private static final int calculateItemsOffsets$reverseAware(int i10, boolean z10, int i11) {
        if (z10) {
            return (i11 - i10) - 1;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /* renamed from: measureLazyGrid-zIfe3eg  reason: not valid java name */
    public static final LazyGridMeasureResult m622measureLazyGridzIfe3eg(int i10, @NotNull LazyMeasuredLineProvider lazyMeasuredLineProvider, @NotNull LazyMeasuredItemProvider measuredItemProvider, int i11, int i12, int i13, int i14, int i15, int i16, float f10, long j10, boolean z10, @Nullable Arrangement.Vertical vertical, @Nullable Arrangement.Horizontal horizontal, boolean z11, @NotNull Density density, @NotNull LazyGridItemPlacementAnimator placementAnimator, @NotNull at.n<? super Integer, ? super Integer, ? super Function1<? super Placeable.PlacementScope, Unit>, ? extends MeasureResult> layout) {
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        LazyMeasuredLine lazyMeasuredLine;
        int i22;
        int m4019constrainWidthK40F9xA;
        int m4004getMaxHeightimpl;
        LazyMeasuredLineProvider measuredLineProvider = lazyMeasuredLineProvider;
        Intrinsics.checkNotNullParameter(measuredLineProvider, "measuredLineProvider");
        Intrinsics.checkNotNullParameter(measuredItemProvider, "measuredItemProvider");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(placementAnimator, "placementAnimator");
        Intrinsics.checkNotNullParameter(layout, "layout");
        if (i13 >= 0) {
            if (i14 >= 0) {
                if (i10 <= 0) {
                    return new LazyGridMeasureResult(null, 0, false, 0.0f, layout.invoke(Integer.valueOf(Constraints.m4007getMinWidthimpl(j10)), Integer.valueOf(Constraints.m4006getMinHeightimpl(j10)), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$measureLazyGrid$1
                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Placeable.PlacementScope invoke) {
                            Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.f60915a;
                        }
                    }), CollectionsKt.n(), -i13, i11 + i14, 0, z11, z10 ? Orientation.Vertical : Orientation.Horizontal, i14);
                }
                int c10 = a.c(f10);
                int i23 = i16 - c10;
                int i24 = i15;
                if (LineIndex.m647equalsimpl0(i24, LineIndex.m644constructorimpl(0)) && i23 < 0) {
                    c10 += i23;
                    i23 = 0;
                }
                ArrayList arrayList = new ArrayList();
                int i25 = i23 - i13;
                int i26 = -i13;
                while (i25 < 0 && i24 - LineIndex.m644constructorimpl(0) > 0) {
                    i24 = LineIndex.m644constructorimpl(i24 - 1);
                    LazyMeasuredLine m640getAndMeasurebKFJvoY = measuredLineProvider.m640getAndMeasurebKFJvoY(i24);
                    arrayList.add(0, m640getAndMeasurebKFJvoY);
                    i25 += m640getAndMeasurebKFJvoY.getMainAxisSizeWithSpacings();
                }
                if (i25 < i26) {
                    i17 = c10 + i25;
                    i18 = i26;
                } else {
                    int i27 = i25;
                    i17 = c10;
                    i18 = i27;
                }
                int i28 = i18 + i13;
                int i29 = i11 + i14;
                int i30 = i24;
                int e10 = e.e(i29, 0);
                int i31 = -i28;
                int size = arrayList.size();
                int i32 = i30;
                int i33 = i29;
                for (int i34 = 0; i34 < size; i34++) {
                    i32 = LineIndex.m644constructorimpl(i32 + 1);
                    i31 += ((LazyMeasuredLine) arrayList.get(i34)).getMainAxisSizeWithSpacings();
                }
                int i35 = i28;
                int i36 = i32;
                while (true) {
                    if (i31 > e10 && !arrayList.isEmpty()) {
                        break;
                    }
                    int i37 = e10;
                    LazyMeasuredLine m640getAndMeasurebKFJvoY2 = measuredLineProvider.m640getAndMeasurebKFJvoY(i36);
                    if (m640getAndMeasurebKFJvoY2.isEmpty()) {
                        LineIndex.m644constructorimpl(i36 - 1);
                        break;
                    }
                    int i38 = i26;
                    int i39 = i33;
                    i31 += m640getAndMeasurebKFJvoY2.getMainAxisSizeWithSpacings();
                    if (i31 <= i38 && ((LazyMeasuredItem) n.X0(m640getAndMeasurebKFJvoY2.getItems())).m636getIndexVZbfaAc() != i10 - 1) {
                        i19 = LineIndex.m644constructorimpl(i36 + 1);
                        i35 -= m640getAndMeasurebKFJvoY2.getMainAxisSizeWithSpacings();
                    } else {
                        arrayList.add(m640getAndMeasurebKFJvoY2);
                        i19 = i30;
                    }
                    i36 = LineIndex.m644constructorimpl(i36 + 1);
                    i30 = i19;
                    i26 = i38;
                    e10 = i37;
                    i33 = i39;
                    measuredLineProvider = lazyMeasuredLineProvider;
                }
                if (i31 < i11) {
                    int i40 = i11 - i31;
                    i35 -= i40;
                    i31 += i40;
                    int i41 = i30;
                    while (true) {
                        if (i35 >= i13) {
                            i20 = i26;
                            i21 = 0;
                            break;
                        } else if (i41 - LineIndex.m644constructorimpl(0) <= 0) {
                            i21 = 0;
                            i20 = i26;
                            break;
                        } else {
                            i41 = LineIndex.m644constructorimpl(i41 - 1);
                            int i42 = i26;
                            LazyMeasuredLine m640getAndMeasurebKFJvoY3 = measuredLineProvider.m640getAndMeasurebKFJvoY(i41);
                            arrayList.add(0, m640getAndMeasurebKFJvoY3);
                            i35 += m640getAndMeasurebKFJvoY3.getMainAxisSizeWithSpacings();
                            i26 = i42;
                        }
                    }
                    i17 += i40;
                    if (i35 < 0) {
                        i17 += i35;
                        i31 += i35;
                        i35 = i21;
                    }
                } else {
                    i20 = i26;
                    i21 = 0;
                }
                float f11 = (a.a(a.c(f10)) != a.a(i17) || Math.abs(a.c(f10)) < Math.abs(i17)) ? f10 : i17;
                int i43 = -i35;
                LazyMeasuredLine lazyMeasuredLine2 = (LazyMeasuredLine) CollectionsKt.r0(arrayList);
                if (i13 > 0) {
                    int size2 = arrayList.size();
                    int i44 = i35;
                    LazyMeasuredLine lazyMeasuredLine3 = lazyMeasuredLine2;
                    int i45 = i21;
                    while (i45 < size2) {
                        int mainAxisSizeWithSpacings = ((LazyMeasuredLine) arrayList.get(i45)).getMainAxisSizeWithSpacings();
                        if (i44 == 0 || mainAxisSizeWithSpacings > i44 || i45 == CollectionsKt.p(arrayList)) {
                            break;
                        }
                        i44 -= mainAxisSizeWithSpacings;
                        i45++;
                        lazyMeasuredLine3 = (LazyMeasuredLine) arrayList.get(i45);
                    }
                    lazyMeasuredLine = lazyMeasuredLine3;
                    i22 = i44;
                } else {
                    lazyMeasuredLine = lazyMeasuredLine2;
                    i22 = i35;
                }
                if (z10) {
                    m4019constrainWidthK40F9xA = Constraints.m4005getMaxWidthimpl(j10);
                } else {
                    m4019constrainWidthK40F9xA = ConstraintsKt.m4019constrainWidthK40F9xA(j10, i31);
                }
                int i46 = m4019constrainWidthK40F9xA;
                if (z10) {
                    m4004getMaxHeightimpl = ConstraintsKt.m4018constrainHeightK40F9xA(j10, i31);
                } else {
                    m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
                }
                int i47 = m4004getMaxHeightimpl;
                int i48 = i33;
                int i49 = i20;
                float f12 = f11;
                final List<LazyGridPositionedItem> calculateItemsOffsets = calculateItemsOffsets(arrayList, i46, i47, i31, i11, i43, z10, vertical, horizontal, z11, density);
                int i50 = i31;
                int i51 = i21;
                placementAnimator.onMeasured((int) f12, i46, i47, i12, z11, calculateItemsOffsets, measuredItemProvider);
                return new LazyGridMeasureResult(lazyMeasuredLine, i22, i50 > i11 ? 1 : i51, f12, layout.invoke(Integer.valueOf(i46), Integer.valueOf(i47), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridMeasureKt$measureLazyGrid$3
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Placeable.PlacementScope invoke) {
                        Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
                        List<LazyGridPositionedItem> list = calculateItemsOffsets;
                        int size3 = list.size();
                        for (int i52 = 0; i52 < size3; i52++) {
                            list.get(i52).place(invoke);
                        }
                    }
                }), calculateItemsOffsets, i49, i48, i10, z11, z10 ? Orientation.Vertical : Orientation.Horizontal, i14);
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}

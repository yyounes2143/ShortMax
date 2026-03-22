package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import at.p;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: RowColumnImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class RowColumnImplKt {
    public static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MaxIntrinsicHeightMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMaxHeight();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMaxHeight();
    }

    public static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MaxIntrinsicWidthMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMaxWidth();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMaxWidth();
    }

    public static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MinIntrinsicHeightMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMinHeight();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMinHeight();
    }

    public static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> MinIntrinsicWidthMeasureBlock(LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return IntrinsicMeasureBlocks.INSTANCE.getHorizontalMinWidth();
        }
        return IntrinsicMeasureBlocks.INSTANCE.getVerticalMinWidth();
    }

    public static final /* synthetic */ int access$intrinsicSize(List list, Function2 function2, Function2 function22, int i10, int i11, LayoutOrientation layoutOrientation, LayoutOrientation layoutOrientation2) {
        return intrinsicSize(list, function2, function22, i10, i11, layoutOrientation, layoutOrientation2);
    }

    public static final CrossAxisAlignment getCrossAxisAlignment(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.getCrossAxisAlignment();
        }
        return null;
    }

    public static final RowColumnParentData getData(IntrinsicMeasurable intrinsicMeasurable) {
        Object parentData = intrinsicMeasurable.getParentData();
        if (parentData instanceof RowColumnParentData) {
            return (RowColumnParentData) parentData;
        }
        return null;
    }

    public static final boolean getFill(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.getFill();
        }
        return true;
    }

    public static final float getWeight(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.getWeight();
        }
        return 0.0f;
    }

    private static final int intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function22, int i10, int i11) {
        int c10;
        int i12;
        int min = Math.min((list.size() - 1) * i11, i10);
        int size = list.size();
        int i13 = 0;
        float f10 = 0.0f;
        for (int i14 = 0; i14 < size; i14++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i14);
            float weight = getWeight(getData(intrinsicMeasurable));
            if (weight == 0.0f) {
                int min2 = Math.min(function2.invoke(intrinsicMeasurable, Integer.MAX_VALUE).intValue(), i10 - min);
                min += min2;
                i13 = Math.max(i13, function22.invoke(intrinsicMeasurable, Integer.valueOf(min2)).intValue());
            } else if (weight > 0.0f) {
                f10 += weight;
            }
        }
        if (f10 == 0.0f) {
            c10 = 0;
        } else if (i10 == Integer.MAX_VALUE) {
            c10 = Integer.MAX_VALUE;
        } else {
            c10 = bt.a.c(Math.max(i10 - min, 0) / f10);
        }
        int size2 = list.size();
        for (int i15 = 0; i15 < size2; i15++) {
            IntrinsicMeasurable intrinsicMeasurable2 = list.get(i15);
            float weight2 = getWeight(getData(intrinsicMeasurable2));
            if (weight2 > 0.0f) {
                if (c10 != Integer.MAX_VALUE) {
                    i12 = bt.a.c(c10 * weight2);
                } else {
                    i12 = Integer.MAX_VALUE;
                }
                i13 = Math.max(i13, function22.invoke(intrinsicMeasurable2, Integer.valueOf(i12)).intValue());
            }
        }
        return i13;
    }

    private static final int intrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2, int i10, int i11) {
        int size = list.size();
        int i12 = 0;
        int i13 = 0;
        float f10 = 0.0f;
        for (int i14 = 0; i14 < size; i14++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i14);
            float weight = getWeight(getData(intrinsicMeasurable));
            int intValue = function2.invoke(intrinsicMeasurable, Integer.valueOf(i10)).intValue();
            if (weight == 0.0f) {
                i13 += intValue;
            } else if (weight > 0.0f) {
                f10 += weight;
                i12 = Math.max(i12, bt.a.c(intValue / weight));
            }
        }
        return bt.a.c(i12 * f10) + i13 + ((list.size() - 1) * i11);
    }

    public static final int intrinsicSize(List<? extends IntrinsicMeasurable> list, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function22, int i10, int i11, LayoutOrientation layoutOrientation, LayoutOrientation layoutOrientation2) {
        if (layoutOrientation == layoutOrientation2) {
            return intrinsicMainAxisSize(list, function2, i10, i11);
        }
        return intrinsicCrossAxisSize(list, function22, function2, i10, i11);
    }

    public static final boolean isRelative(RowColumnParentData rowColumnParentData) {
        CrossAxisAlignment crossAxisAlignment = getCrossAxisAlignment(rowColumnParentData);
        if (crossAxisAlignment != null) {
            return crossAxisAlignment.isRelative$foundation_layout_release();
        }
        return false;
    }

    @NotNull
    /* renamed from: rowColumnMeasurePolicy-TDGSqEk */
    public static final MeasurePolicy m468rowColumnMeasurePolicyTDGSqEk(@NotNull final LayoutOrientation orientation, @NotNull final p<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], Unit> arrangement, final float f10, @NotNull final SizeMode crossAxisSize, @NotNull final CrossAxisAlignment crossAxisAlignment) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(arrangement, "arrangement");
        Intrinsics.checkNotNullParameter(crossAxisSize, "crossAxisSize");
        Intrinsics.checkNotNullParameter(crossAxisAlignment, "crossAxisAlignment");
        return new MeasurePolicy() { // from class: androidx.compose.foundation.layout.RowColumnImplKt$rowColumnMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                n MaxIntrinsicHeightMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MaxIntrinsicHeightMeasureBlock = RowColumnImplKt.MaxIntrinsicHeightMeasureBlock(LayoutOrientation.this);
                return ((Number) MaxIntrinsicHeightMeasureBlock.invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.mo336roundToPx0680j_4(f10)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                n MaxIntrinsicWidthMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MaxIntrinsicWidthMeasureBlock = RowColumnImplKt.MaxIntrinsicWidthMeasureBlock(LayoutOrientation.this);
                return ((Number) MaxIntrinsicWidthMeasureBlock.invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.mo336roundToPx0680j_4(f10)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo42measure3p2s80s(@NotNull final MeasureScope measure, @NotNull final List<? extends Measurable> list, long j10) {
                int mainAxisMin;
                float f11;
                int i10;
                int j11;
                float f12;
                int i11;
                float weight;
                boolean fill;
                int i12;
                int rowColumnMeasurePolicy_TDGSqEk$mainAxisSize;
                int rowColumnMeasurePolicy_TDGSqEk$crossAxisSize;
                boolean z10;
                boolean isRelative;
                float weight2;
                int i13;
                int max;
                int i14;
                int i15;
                CrossAxisAlignment crossAxisAlignment2;
                Integer num;
                int rowColumnMeasurePolicy_TDGSqEk$crossAxisSize2;
                float weight3;
                int i16;
                int i17;
                RowColumnParentData[] rowColumnParentDataArr;
                int rowColumnMeasurePolicy_TDGSqEk$mainAxisSize2;
                int rowColumnMeasurePolicy_TDGSqEk$mainAxisSize3;
                int rowColumnMeasurePolicy_TDGSqEk$crossAxisSize3;
                boolean z11;
                boolean isRelative2;
                RowColumnParentData data;
                List<? extends Measurable> measurables = list;
                Intrinsics.checkNotNullParameter(measure, "$this$measure");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                OrientationIndependentConstraints orientationIndependentConstraints = new OrientationIndependentConstraints(j10, LayoutOrientation.this, null);
                int mo336roundToPx0680j_4 = measure.mo336roundToPx0680j_4(f10);
                int size = list.size();
                final Placeable[] placeableArr = new Placeable[size];
                int size2 = list.size();
                RowColumnParentData[] rowColumnParentDataArr2 = new RowColumnParentData[size2];
                for (int i18 = 0; i18 < size2; i18++) {
                    data = RowColumnImplKt.getData(measurables.get(i18));
                    rowColumnParentDataArr2[i18] = data;
                }
                int size3 = list.size();
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                int i22 = 0;
                int i23 = 0;
                boolean z12 = false;
                float f13 = 0.0f;
                while (true) {
                    int i24 = Integer.MAX_VALUE;
                    if (i21 >= size3) {
                        break;
                    }
                    Measurable measurable = measurables.get(i21);
                    RowColumnParentData rowColumnParentData = rowColumnParentDataArr2[i21];
                    weight3 = RowColumnImplKt.getWeight(rowColumnParentData);
                    if (weight3 > 0.0f) {
                        f13 += weight3;
                        i22++;
                        i16 = i21;
                        i17 = size3;
                        rowColumnParentDataArr = rowColumnParentDataArr2;
                    } else {
                        int mainAxisMax = orientationIndependentConstraints.getMainAxisMax();
                        if (mainAxisMax != Integer.MAX_VALUE) {
                            i24 = mainAxisMax - i23;
                        }
                        int i25 = i20;
                        i16 = i21;
                        i17 = size3;
                        rowColumnParentDataArr = rowColumnParentDataArr2;
                        Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(OrientationIndependentConstraints.copy$default(orientationIndependentConstraints, 0, i24, 0, 0, 8, null).m439toBoxConstraintsOenEA2s(LayoutOrientation.this));
                        rowColumnMeasurePolicy_TDGSqEk$mainAxisSize2 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(mo3335measureBRTryo0, LayoutOrientation.this);
                        int min = Math.min(mo336roundToPx0680j_4, (mainAxisMax - i23) - rowColumnMeasurePolicy_TDGSqEk$mainAxisSize2);
                        rowColumnMeasurePolicy_TDGSqEk$mainAxisSize3 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(mo3335measureBRTryo0, LayoutOrientation.this);
                        i23 += rowColumnMeasurePolicy_TDGSqEk$mainAxisSize3 + min;
                        rowColumnMeasurePolicy_TDGSqEk$crossAxisSize3 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(mo3335measureBRTryo0, LayoutOrientation.this);
                        i20 = Math.max(i25, rowColumnMeasurePolicy_TDGSqEk$crossAxisSize3);
                        if (!z12) {
                            isRelative2 = RowColumnImplKt.isRelative(rowColumnParentData);
                            if (!isRelative2) {
                                z11 = false;
                                placeableArr[i16] = mo3335measureBRTryo0;
                                i19 = min;
                                z12 = z11;
                            }
                        }
                        z11 = true;
                        placeableArr[i16] = mo3335measureBRTryo0;
                        i19 = min;
                        z12 = z11;
                    }
                    i21 = i16 + 1;
                    rowColumnParentDataArr2 = rowColumnParentDataArr;
                    size3 = i17;
                }
                int i26 = i20;
                final RowColumnParentData[] rowColumnParentDataArr3 = rowColumnParentDataArr2;
                if (i22 == 0) {
                    i23 -= i19;
                    i10 = i26;
                    j11 = 0;
                } else {
                    int i27 = (f13 > 0.0f ? 1 : (f13 == 0.0f ? 0 : -1));
                    if (i27 > 0 && orientationIndependentConstraints.getMainAxisMax() != Integer.MAX_VALUE) {
                        mainAxisMin = orientationIndependentConstraints.getMainAxisMax();
                    } else {
                        mainAxisMin = orientationIndependentConstraints.getMainAxisMin();
                    }
                    int i28 = mo336roundToPx0680j_4 * (i22 - 1);
                    int i29 = (mainAxisMin - i23) - i28;
                    if (i27 > 0) {
                        f11 = i29 / f13;
                    } else {
                        f11 = 0.0f;
                    }
                    int i30 = 0;
                    for (int i31 = 0; i31 < size2; i31++) {
                        weight2 = RowColumnImplKt.getWeight(rowColumnParentDataArr3[i31]);
                        i30 += bt.a.c(weight2 * f11);
                    }
                    int size4 = list.size();
                    int i32 = i29 - i30;
                    i10 = i26;
                    int i33 = 0;
                    int i34 = 0;
                    while (i33 < size4) {
                        if (placeableArr[i33] == null) {
                            Measurable measurable2 = measurables.get(i33);
                            RowColumnParentData rowColumnParentData2 = rowColumnParentDataArr3[i33];
                            weight = RowColumnImplKt.getWeight(rowColumnParentData2);
                            if (weight > 0.0f) {
                                int a10 = bt.a.a(i32);
                                int i35 = i32 - a10;
                                int max2 = Math.max(0, bt.a.c(weight * f11) + a10);
                                fill = RowColumnImplKt.getFill(rowColumnParentData2);
                                f12 = f11;
                                if (fill && max2 != Integer.MAX_VALUE) {
                                    i12 = max2;
                                    i11 = size4;
                                } else {
                                    i11 = size4;
                                    i12 = 0;
                                }
                                Placeable mo3335measureBRTryo02 = measurable2.mo3335measureBRTryo0(new OrientationIndependentConstraints(i12, max2, 0, orientationIndependentConstraints.getCrossAxisMax()).m439toBoxConstraintsOenEA2s(LayoutOrientation.this));
                                rowColumnMeasurePolicy_TDGSqEk$mainAxisSize = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(mo3335measureBRTryo02, LayoutOrientation.this);
                                i34 += rowColumnMeasurePolicy_TDGSqEk$mainAxisSize;
                                rowColumnMeasurePolicy_TDGSqEk$crossAxisSize = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(mo3335measureBRTryo02, LayoutOrientation.this);
                                int max3 = Math.max(i10, rowColumnMeasurePolicy_TDGSqEk$crossAxisSize);
                                if (!z12) {
                                    isRelative = RowColumnImplKt.isRelative(rowColumnParentData2);
                                    if (!isRelative) {
                                        z10 = false;
                                        placeableArr[i33] = mo3335measureBRTryo02;
                                        i10 = max3;
                                        z12 = z10;
                                        i32 = i35;
                                    }
                                }
                                z10 = true;
                                placeableArr[i33] = mo3335measureBRTryo02;
                                i10 = max3;
                                z12 = z10;
                                i32 = i35;
                            } else {
                                throw new IllegalStateException("All weights <= 0 should have placeables");
                            }
                        } else {
                            f12 = f11;
                            i11 = size4;
                        }
                        i33++;
                        measurables = list;
                        f11 = f12;
                        size4 = i11;
                    }
                    j11 = kotlin.ranges.e.j(i34 + i28, orientationIndependentConstraints.getMainAxisMax() - i23);
                }
                final Ref.IntRef intRef = new Ref.IntRef();
                if (z12) {
                    i13 = 0;
                    for (int i36 = 0; i36 < size; i36++) {
                        Placeable placeable = placeableArr[i36];
                        Intrinsics.checkNotNull(placeable);
                        crossAxisAlignment2 = RowColumnImplKt.getCrossAxisAlignment(rowColumnParentDataArr3[i36]);
                        if (crossAxisAlignment2 != null) {
                            num = crossAxisAlignment2.calculateAlignmentLinePosition$foundation_layout_release(placeable);
                        } else {
                            num = null;
                        }
                        if (num != null) {
                            int i37 = intRef.element;
                            int intValue = num.intValue();
                            if (intValue == Integer.MIN_VALUE) {
                                intValue = 0;
                            }
                            intRef.element = Math.max(i37, intValue);
                            rowColumnMeasurePolicy_TDGSqEk$crossAxisSize2 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(placeable, LayoutOrientation.this);
                            LayoutOrientation layoutOrientation = LayoutOrientation.this;
                            int intValue2 = num.intValue();
                            if (intValue2 == Integer.MIN_VALUE) {
                                intValue2 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(placeable, layoutOrientation);
                            }
                            i13 = Math.max(i13, rowColumnMeasurePolicy_TDGSqEk$crossAxisSize2 - intValue2);
                        }
                    }
                } else {
                    i13 = 0;
                }
                final int max4 = Math.max(i23 + j11, orientationIndependentConstraints.getMainAxisMin());
                if (orientationIndependentConstraints.getCrossAxisMax() != Integer.MAX_VALUE && crossAxisSize == SizeMode.Expand) {
                    max = orientationIndependentConstraints.getCrossAxisMax();
                } else {
                    max = Math.max(i10, Math.max(orientationIndependentConstraints.getCrossAxisMin(), intRef.element + i13));
                }
                final int i38 = max;
                LayoutOrientation layoutOrientation2 = LayoutOrientation.this;
                LayoutOrientation layoutOrientation3 = LayoutOrientation.Horizontal;
                if (layoutOrientation2 == layoutOrientation3) {
                    i14 = max4;
                } else {
                    i14 = i38;
                }
                if (layoutOrientation2 == layoutOrientation3) {
                    i15 = i38;
                } else {
                    i15 = max4;
                }
                int size5 = list.size();
                final int[] iArr = new int[size5];
                for (int i39 = 0; i39 < size5; i39++) {
                    iArr[i39] = 0;
                }
                final p<Integer, int[], LayoutDirection, Density, int[], Unit> pVar = arrangement;
                final LayoutOrientation layoutOrientation4 = LayoutOrientation.this;
                final CrossAxisAlignment crossAxisAlignment3 = crossAxisAlignment;
                return MeasureScope.layout$default(measure, i14, i15, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                        CrossAxisAlignment crossAxisAlignment4;
                        int rowColumnMeasurePolicy_TDGSqEk$crossAxisSize4;
                        LayoutDirection layoutDirection;
                        int[] iArr2;
                        int i40;
                        int rowColumnMeasurePolicy_TDGSqEk$mainAxisSize4;
                        Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        int size6 = list.size();
                        int[] iArr3 = new int[size6];
                        int i41 = 0;
                        for (int i42 = 0; i42 < size6; i42++) {
                            Placeable placeable2 = placeableArr[i42];
                            Intrinsics.checkNotNull(placeable2);
                            rowColumnMeasurePolicy_TDGSqEk$mainAxisSize4 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(placeable2, layoutOrientation4);
                            iArr3[i42] = rowColumnMeasurePolicy_TDGSqEk$mainAxisSize4;
                        }
                        pVar.invoke(Integer.valueOf(max4), iArr3, measure.getLayoutDirection(), measure, iArr);
                        Placeable[] placeableArr2 = placeableArr;
                        RowColumnParentData[] rowColumnParentDataArr4 = rowColumnParentDataArr3;
                        CrossAxisAlignment crossAxisAlignment5 = crossAxisAlignment3;
                        int i43 = i38;
                        LayoutOrientation layoutOrientation5 = layoutOrientation4;
                        MeasureScope measureScope = measure;
                        Ref.IntRef intRef2 = intRef;
                        int[] iArr4 = iArr;
                        int length = placeableArr2.length;
                        int i44 = 0;
                        while (i41 < length) {
                            Placeable placeable3 = placeableArr2[i41];
                            int i45 = i44 + 1;
                            Intrinsics.checkNotNull(placeable3);
                            crossAxisAlignment4 = RowColumnImplKt.getCrossAxisAlignment(rowColumnParentDataArr4[i44]);
                            if (crossAxisAlignment4 == null) {
                                crossAxisAlignment4 = crossAxisAlignment5;
                            }
                            rowColumnMeasurePolicy_TDGSqEk$crossAxisSize4 = RowColumnImplKt.rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(placeable3, layoutOrientation5);
                            int i46 = i43 - rowColumnMeasurePolicy_TDGSqEk$crossAxisSize4;
                            LayoutOrientation layoutOrientation6 = LayoutOrientation.Horizontal;
                            if (layoutOrientation5 == layoutOrientation6) {
                                layoutDirection = LayoutDirection.Ltr;
                            } else {
                                layoutDirection = measureScope.getLayoutDirection();
                            }
                            Placeable[] placeableArr3 = placeableArr2;
                            LayoutDirection layoutDirection2 = layoutDirection;
                            int i47 = length;
                            int align$foundation_layout_release = crossAxisAlignment4.align$foundation_layout_release(i46, layoutDirection2, placeable3, intRef2.element);
                            if (layoutOrientation5 == layoutOrientation6) {
                                iArr2 = iArr4;
                                i40 = i41;
                                Placeable.PlacementScope.place$default(layout, placeable3, iArr4[i44], align$foundation_layout_release, 0.0f, 4, null);
                            } else {
                                iArr2 = iArr4;
                                i40 = i41;
                                Placeable.PlacementScope.place$default(layout, placeable3, align$foundation_layout_release, iArr2[i44], 0.0f, 4, null);
                            }
                            i41 = i40 + 1;
                            i44 = i45;
                            length = i47;
                            placeableArr2 = placeableArr3;
                            iArr4 = iArr2;
                        }
                    }
                }, 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                n MinIntrinsicHeightMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MinIntrinsicHeightMeasureBlock = RowColumnImplKt.MinIntrinsicHeightMeasureBlock(LayoutOrientation.this);
                return ((Number) MinIntrinsicHeightMeasureBlock.invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.mo336roundToPx0680j_4(f10)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                n MinIntrinsicWidthMeasureBlock;
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                MinIntrinsicWidthMeasureBlock = RowColumnImplKt.MinIntrinsicWidthMeasureBlock(LayoutOrientation.this);
                return ((Number) MinIntrinsicWidthMeasureBlock.invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.mo336roundToPx0680j_4(f10)))).intValue();
            }
        };
    }

    public static final int rowColumnMeasurePolicy_TDGSqEk$crossAxisSize(Placeable placeable, LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return placeable.getHeight();
        }
        return placeable.getWidth();
    }

    public static final int rowColumnMeasurePolicy_TDGSqEk$mainAxisSize(Placeable placeable, LayoutOrientation layoutOrientation) {
        if (layoutOrientation == LayoutOrientation.Horizontal) {
            return placeable.getWidth();
        }
        return placeable.getHeight();
    }
}

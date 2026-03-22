package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OutlinedTextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;
    @NotNull
    private final Function1<Size, Unit> onLabelMeasured;
    @NotNull
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    /* JADX WARN: Multi-variable type inference failed */
    public OutlinedTextFieldMeasurePolicy(@NotNull Function1<? super Size, Unit> onLabelMeasured, boolean z10, float f10, @NotNull PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(onLabelMeasured, "onLabelMeasured");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        this.onLabelMeasured = onLabelMeasured;
        this.singleLine = z10;
        this.animationProgress = f10;
        this.paddingValues = paddingValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int intrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i10, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2) {
        Object obj;
        Object obj2;
        int i11;
        Object obj3;
        int i12;
        Object obj4;
        int i13;
        int i14;
        int m1136calculateHeightzUg2_y0;
        List<? extends IntrinsicMeasurable> list2 = list;
        for (Object obj5 : list2) {
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), TextFieldImplKt.TextFieldId)) {
                int intValue = function2.invoke(obj5, Integer.valueOf(i10)).intValue();
                Iterator<T> it = list2.iterator();
                while (true) {
                    obj = null;
                    if (it.hasNext()) {
                        obj2 = it.next();
                        if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj2), TextFieldImplKt.LabelId)) {
                            break;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                if (intrinsicMeasurable != null) {
                    i11 = function2.invoke(intrinsicMeasurable, Integer.valueOf(i10)).intValue();
                } else {
                    i11 = 0;
                }
                Iterator<T> it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj3 = it2.next();
                        if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj3), TextFieldImplKt.TrailingId)) {
                            break;
                        }
                    } else {
                        obj3 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                if (intrinsicMeasurable2 != null) {
                    i12 = function2.invoke(intrinsicMeasurable2, Integer.valueOf(i10)).intValue();
                } else {
                    i12 = 0;
                }
                Iterator<T> it3 = list2.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        obj4 = it3.next();
                        if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), TextFieldImplKt.LeadingId)) {
                            break;
                        }
                    } else {
                        obj4 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                if (intrinsicMeasurable3 != null) {
                    i13 = function2.invoke(intrinsicMeasurable3, Integer.valueOf(i10)).intValue();
                } else {
                    i13 = 0;
                }
                Iterator<T> it4 = list2.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    Object next = it4.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) next), TextFieldImplKt.PlaceholderId)) {
                        obj = next;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj;
                if (intrinsicMeasurable4 != null) {
                    i14 = function2.invoke(intrinsicMeasurable4, Integer.valueOf(i10)).intValue();
                } else {
                    i14 = 0;
                }
                m1136calculateHeightzUg2_y0 = OutlinedTextFieldKt.m1136calculateHeightzUg2_y0(i13, i12, intValue, i11, i14, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m1136calculateHeightzUg2_y0;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int intrinsicWidth(List<? extends IntrinsicMeasurable> list, int i10, Function2<? super IntrinsicMeasurable, ? super Integer, Integer> function2) {
        Object obj;
        Object obj2;
        int i11;
        Object obj3;
        int i12;
        Object obj4;
        int i13;
        int i14;
        int m1137calculateWidthVsPV1Ek;
        List<? extends IntrinsicMeasurable> list2 = list;
        for (Object obj5 : list2) {
            if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj5), TextFieldImplKt.TextFieldId)) {
                int intValue = function2.invoke(obj5, Integer.valueOf(i10)).intValue();
                Iterator<T> it = list2.iterator();
                while (true) {
                    obj = null;
                    if (it.hasNext()) {
                        obj2 = it.next();
                        if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj2), TextFieldImplKt.LabelId)) {
                            break;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                if (intrinsicMeasurable != null) {
                    i11 = function2.invoke(intrinsicMeasurable, Integer.valueOf(i10)).intValue();
                } else {
                    i11 = 0;
                }
                Iterator<T> it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj3 = it2.next();
                        if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj3), TextFieldImplKt.TrailingId)) {
                            break;
                        }
                    } else {
                        obj3 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                if (intrinsicMeasurable2 != null) {
                    i12 = function2.invoke(intrinsicMeasurable2, Integer.valueOf(i10)).intValue();
                } else {
                    i12 = 0;
                }
                Iterator<T> it3 = list2.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        obj4 = it3.next();
                        if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) obj4), TextFieldImplKt.LeadingId)) {
                            break;
                        }
                    } else {
                        obj4 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                if (intrinsicMeasurable3 != null) {
                    i13 = function2.invoke(intrinsicMeasurable3, Integer.valueOf(i10)).intValue();
                } else {
                    i13 = 0;
                }
                Iterator<T> it4 = list2.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    Object next = it4.next();
                    if (Intrinsics.areEqual(TextFieldImplKt.getLayoutId((IntrinsicMeasurable) next), TextFieldImplKt.PlaceholderId)) {
                        obj = next;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj;
                if (intrinsicMeasurable4 != null) {
                    i14 = function2.invoke(intrinsicMeasurable4, Integer.valueOf(i10)).intValue();
                } else {
                    i14 = 0;
                }
                m1137calculateWidthVsPV1Ek = OutlinedTextFieldKt.m1137calculateWidthVsPV1Ek(i13, i12, intValue, i11, i14, TextFieldImplKt.getZeroConstraints());
                return m1137calculateWidthVsPV1Ek;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicMeasurable, int i11) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.maxIntrinsicHeight(i11));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicWidth(measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicMeasurable, int i11) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.maxIntrinsicWidth(i11));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo42measure3p2s80s(@NotNull final MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
        Object obj;
        Placeable placeable;
        Object obj2;
        Placeable placeable2;
        Object obj3;
        Placeable placeable3;
        Object obj4;
        Placeable placeable4;
        final int m1137calculateWidthVsPV1Ek;
        final int m1136calculateHeightzUg2_y0;
        int i10;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int mo336roundToPx0680j_4 = measure.mo336roundToPx0680j_4(this.paddingValues.mo427calculateBottomPaddingD9Ej5fM());
        long m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 10, null);
        List<? extends Measurable> list = measurables;
        Iterator<T> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj), TextFieldImplKt.LeadingId)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Measurable measurable = (Measurable) obj;
        if (measurable != null) {
            placeable = measurable.mo3335measureBRTryo0(m3996copyZbe2FdA$default);
        } else {
            placeable = null;
        }
        int widthOrZero = TextFieldImplKt.widthOrZero(placeable);
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj2 = it2.next();
                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj2), TextFieldImplKt.TrailingId)) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        Measurable measurable2 = (Measurable) obj2;
        if (measurable2 != null) {
            placeable2 = measurable2.mo3335measureBRTryo0(ConstraintsKt.m4022offsetNN6EwU$default(m3996copyZbe2FdA$default, -widthOrZero, 0, 2, null));
        } else {
            placeable2 = null;
        }
        int i11 = -(widthOrZero + TextFieldImplKt.widthOrZero(placeable2));
        int i12 = -mo336roundToPx0680j_4;
        long m4021offsetNN6EwU = ConstraintsKt.m4021offsetNN6EwU(m3996copyZbe2FdA$default, (i11 - measure.mo336roundToPx0680j_4(this.paddingValues.mo428calculateLeftPaddingu2uoSUM(measure.getLayoutDirection()))) - measure.mo336roundToPx0680j_4(this.paddingValues.mo429calculateRightPaddingu2uoSUM(measure.getLayoutDirection())), i12);
        Iterator<T> it3 = list.iterator();
        while (true) {
            if (it3.hasNext()) {
                obj3 = it3.next();
                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj3), TextFieldImplKt.LabelId)) {
                    break;
                }
            } else {
                obj3 = null;
                break;
            }
        }
        Measurable measurable3 = (Measurable) obj3;
        if (measurable3 != null) {
            placeable3 = measurable3.mo3335measureBRTryo0(m4021offsetNN6EwU);
        } else {
            placeable3 = null;
        }
        if (placeable3 != null) {
            this.onLabelMeasured.invoke(Size.m1663boximpl(SizeKt.Size(placeable3.getWidth(), placeable3.getHeight())));
        }
        long m3996copyZbe2FdA$default2 = Constraints.m3996copyZbe2FdA$default(ConstraintsKt.m4021offsetNN6EwU(j10, i11, i12 - Math.max(TextFieldImplKt.heightOrZero(placeable3) / 2, measure.mo336roundToPx0680j_4(this.paddingValues.mo430calculateTopPaddingD9Ej5fM()))), 0, 0, 0, 0, 11, null);
        for (Measurable measurable4 : list) {
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable4), TextFieldImplKt.TextFieldId)) {
                final Placeable mo3335measureBRTryo0 = measurable4.mo3335measureBRTryo0(m3996copyZbe2FdA$default2);
                long m3996copyZbe2FdA$default3 = Constraints.m3996copyZbe2FdA$default(m3996copyZbe2FdA$default2, 0, 0, 0, 0, 14, null);
                Iterator<T> it4 = list.iterator();
                while (true) {
                    if (it4.hasNext()) {
                        obj4 = it4.next();
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj4), TextFieldImplKt.PlaceholderId)) {
                            break;
                        }
                    } else {
                        obj4 = null;
                        break;
                    }
                }
                Measurable measurable5 = (Measurable) obj4;
                if (measurable5 != null) {
                    placeable4 = measurable5.mo3335measureBRTryo0(m3996copyZbe2FdA$default3);
                } else {
                    placeable4 = null;
                }
                m1137calculateWidthVsPV1Ek = OutlinedTextFieldKt.m1137calculateWidthVsPV1Ek(TextFieldImplKt.widthOrZero(placeable), TextFieldImplKt.widthOrZero(placeable2), mo3335measureBRTryo0.getWidth(), TextFieldImplKt.widthOrZero(placeable3), TextFieldImplKt.widthOrZero(placeable4), j10);
                m1136calculateHeightzUg2_y0 = OutlinedTextFieldKt.m1136calculateHeightzUg2_y0(TextFieldImplKt.heightOrZero(placeable), TextFieldImplKt.heightOrZero(placeable2), mo3335measureBRTryo0.getHeight(), TextFieldImplKt.heightOrZero(placeable3), TextFieldImplKt.heightOrZero(placeable4), j10, measure.getDensity(), this.paddingValues);
                for (Measurable measurable6 : list) {
                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable6), OutlinedTextFieldKt.BorderId)) {
                        int i13 = 0;
                        if (m1137calculateWidthVsPV1Ek != Integer.MAX_VALUE) {
                            i10 = m1137calculateWidthVsPV1Ek;
                        } else {
                            i10 = 0;
                        }
                        if (m1136calculateHeightzUg2_y0 != Integer.MAX_VALUE) {
                            i13 = m1136calculateHeightzUg2_y0;
                        }
                        final Placeable mo3335measureBRTryo02 = measurable6.mo3335measureBRTryo0(ConstraintsKt.Constraints(i10, m1137calculateWidthVsPV1Ek, i13, m1136calculateHeightzUg2_y0));
                        final Placeable placeable5 = placeable;
                        final Placeable placeable6 = placeable2;
                        final Placeable placeable7 = placeable3;
                        final Placeable placeable8 = placeable4;
                        return MeasureScope.layout$default(measure, m1137calculateWidthVsPV1Ek, m1136calculateHeightzUg2_y0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.OutlinedTextFieldMeasurePolicy$measure$2
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
                            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                                float f10;
                                boolean z10;
                                PaddingValues paddingValues;
                                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                int i14 = m1136calculateHeightzUg2_y0;
                                int i15 = m1137calculateWidthVsPV1Ek;
                                Placeable placeable9 = placeable5;
                                Placeable placeable10 = placeable6;
                                Placeable placeable11 = mo3335measureBRTryo0;
                                Placeable placeable12 = placeable7;
                                Placeable placeable13 = placeable8;
                                Placeable placeable14 = mo3335measureBRTryo02;
                                f10 = this.animationProgress;
                                z10 = this.singleLine;
                                float density = measure.getDensity();
                                LayoutDirection layoutDirection = measure.getLayoutDirection();
                                paddingValues = this.paddingValues;
                                OutlinedTextFieldKt.place(layout, i14, i15, placeable9, placeable10, placeable11, placeable12, placeable13, placeable14, f10, z10, density, layoutDirection, paddingValues);
                            }
                        }, 4, null);
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicMeasurable, int i11) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.minIntrinsicHeight(i11));
            }
        });
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicWidth(measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                return invoke(intrinsicMeasurable, num.intValue());
            }

            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicMeasurable, int i11) {
                Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
                return Integer.valueOf(intrinsicMeasurable.minIntrinsicWidth(i11));
            }
        });
    }
}

package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.layout.AlignmentLineKt;
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
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;
    @NotNull
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    public TextFieldMeasurePolicy(boolean z10, float f10, @NotNull PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
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
        boolean z10;
        int m1262calculateHeightO3s9Psw;
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
                if (i11 > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                m1262calculateHeightO3s9Psw = TextFieldKt.m1262calculateHeightO3s9Psw(intValue, z10, i11, i13, i12, i14, TextFieldImplKt.getZeroConstraints(), intrinsicMeasureScope.getDensity(), this.paddingValues);
                return m1262calculateHeightO3s9Psw;
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
        int m1263calculateWidthVsPV1Ek;
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
                m1263calculateWidthVsPV1Ek = TextFieldKt.m1263calculateWidthVsPV1Ek(i13, i12, intValue, i11, i14, TextFieldImplKt.getZeroConstraints());
                return m1263calculateWidthVsPV1Ek;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.TextFieldMeasurePolicy$maxIntrinsicHeight$1
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
        return intrinsicWidth(measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.TextFieldMeasurePolicy$maxIntrinsicWidth$1
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
        final Placeable placeable;
        Object obj2;
        final Placeable placeable2;
        Object obj3;
        Placeable placeable3;
        int i10;
        int i11;
        Object obj4;
        Placeable placeable4;
        final int m1263calculateWidthVsPV1Ek;
        final int m1262calculateHeightO3s9Psw;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        final int mo336roundToPx0680j_4 = measure.mo336roundToPx0680j_4(this.paddingValues.mo430calculateTopPaddingD9Ej5fM());
        int mo336roundToPx0680j_42 = measure.mo336roundToPx0680j_4(this.paddingValues.mo427calculateBottomPaddingD9Ej5fM());
        final int mo336roundToPx0680j_43 = measure.mo336roundToPx0680j_4(TextFieldKt.getTextFieldTopPadding());
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
        int i12 = -mo336roundToPx0680j_42;
        int i13 = -(widthOrZero + TextFieldImplKt.widthOrZero(placeable2));
        long m4021offsetNN6EwU = ConstraintsKt.m4021offsetNN6EwU(m3996copyZbe2FdA$default, i13, i12);
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
        boolean z10 = false;
        if (placeable3 != null) {
            i10 = placeable3.get(AlignmentLineKt.getLastBaseline());
            if (i10 == Integer.MIN_VALUE) {
                i10 = placeable3.getHeight();
            }
        } else {
            i10 = 0;
        }
        final int max = Math.max(i10, mo336roundToPx0680j_4);
        if (placeable3 != null) {
            i11 = (i12 - mo336roundToPx0680j_43) - max;
        } else {
            i11 = (-mo336roundToPx0680j_4) - mo336roundToPx0680j_42;
        }
        long m4021offsetNN6EwU2 = ConstraintsKt.m4021offsetNN6EwU(Constraints.m3996copyZbe2FdA$default(j10, 0, 0, 0, 0, 11, null), i13, i11);
        for (Measurable measurable4 : list) {
            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable4), TextFieldImplKt.TextFieldId)) {
                final Placeable mo3335measureBRTryo0 = measurable4.mo3335measureBRTryo0(m4021offsetNN6EwU2);
                long m3996copyZbe2FdA$default2 = Constraints.m3996copyZbe2FdA$default(m4021offsetNN6EwU2, 0, 0, 0, 0, 14, null);
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
                    placeable4 = measurable5.mo3335measureBRTryo0(m3996copyZbe2FdA$default2);
                } else {
                    placeable4 = null;
                }
                m1263calculateWidthVsPV1Ek = TextFieldKt.m1263calculateWidthVsPV1Ek(TextFieldImplKt.widthOrZero(placeable), TextFieldImplKt.widthOrZero(placeable2), mo3335measureBRTryo0.getWidth(), TextFieldImplKt.widthOrZero(placeable3), TextFieldImplKt.widthOrZero(placeable4), j10);
                int height = mo3335measureBRTryo0.getHeight();
                if (placeable3 != null) {
                    z10 = true;
                }
                m1262calculateHeightO3s9Psw = TextFieldKt.m1262calculateHeightO3s9Psw(height, z10, max, TextFieldImplKt.heightOrZero(placeable), TextFieldImplKt.heightOrZero(placeable2), TextFieldImplKt.heightOrZero(placeable4), j10, measure.getDensity(), this.paddingValues);
                final Placeable placeable5 = placeable3;
                final int i14 = i10;
                final Placeable placeable6 = placeable4;
                return MeasureScope.layout$default(measure, m1263calculateWidthVsPV1Ek, m1262calculateHeightO3s9Psw, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.TextFieldMeasurePolicy$measure$1
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
                        boolean z11;
                        PaddingValues paddingValues;
                        boolean z12;
                        float f10;
                        Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        if (Placeable.this != null) {
                            int e10 = e.e(mo336roundToPx0680j_4 - i14, 0);
                            int i15 = m1263calculateWidthVsPV1Ek;
                            int i16 = m1262calculateHeightO3s9Psw;
                            Placeable placeable7 = mo3335measureBRTryo0;
                            Placeable placeable8 = Placeable.this;
                            Placeable placeable9 = placeable6;
                            Placeable placeable10 = placeable;
                            Placeable placeable11 = placeable2;
                            z12 = this.singleLine;
                            int i17 = mo336roundToPx0680j_43 + max;
                            f10 = this.animationProgress;
                            TextFieldKt.placeWithLabel(layout, i15, i16, placeable7, placeable8, placeable9, placeable10, placeable11, z12, e10, i17, f10, measure.getDensity());
                            return;
                        }
                        int i18 = m1263calculateWidthVsPV1Ek;
                        int i19 = m1262calculateHeightO3s9Psw;
                        Placeable placeable12 = mo3335measureBRTryo0;
                        Placeable placeable13 = placeable6;
                        Placeable placeable14 = placeable;
                        Placeable placeable15 = placeable2;
                        z11 = this.singleLine;
                        float density = measure.getDensity();
                        paddingValues = this.paddingValues;
                        TextFieldKt.placeWithoutLabel(layout, i18, i19, placeable12, placeable13, placeable14, placeable15, z11, density, paddingValues);
                    }
                }, 4, null);
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        return intrinsicHeight(intrinsicMeasureScope, measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.TextFieldMeasurePolicy$minIntrinsicHeight$1
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
        return intrinsicWidth(measurables, i10, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.material.TextFieldMeasurePolicy$minIntrinsicWidth$1
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

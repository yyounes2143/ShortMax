package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Size.kt */
@Metadata
/* loaded from: classes.dex */
public final class UnspecifiedConstraintsModifier extends InspectorValueInfo implements LayoutModifier {
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ UnspecifiedConstraintsModifier(float f10, float f11, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, function1);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof UnspecifiedConstraintsModifier)) {
            return false;
        }
        UnspecifiedConstraintsModifier unspecifiedConstraintsModifier = (UnspecifiedConstraintsModifier) obj;
        if (!Dp.m4054equalsimpl0(this.minWidth, unspecifiedConstraintsModifier.minWidth) || !Dp.m4054equalsimpl0(this.minHeight, unspecifiedConstraintsModifier.minHeight)) {
            return false;
        }
        return true;
    }

    /* renamed from: getMinHeight-D9Ej5fM  reason: not valid java name */
    public final float m500getMinHeightD9Ej5fM() {
        return this.minHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM  reason: not valid java name */
    public final float m501getMinWidthD9Ej5fM() {
        return this.minWidth;
    }

    public int hashCode() {
        return (Dp.m4055hashCodeimpl(this.minWidth) * 31) + Dp.m4055hashCodeimpl(this.minHeight);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        int maxIntrinsicHeight = measurable.maxIntrinsicHeight(i10);
        if (!Dp.m4054equalsimpl0(this.minHeight, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) {
            i11 = intrinsicMeasureScope.mo336roundToPx0680j_4(this.minHeight);
        } else {
            i11 = 0;
        }
        return kotlin.ranges.e.e(maxIntrinsicHeight, i11);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        int maxIntrinsicWidth = measurable.maxIntrinsicWidth(i10);
        if (!Dp.m4054equalsimpl0(this.minWidth, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) {
            i11 = intrinsicMeasureScope.mo336roundToPx0680j_4(this.minWidth);
        } else {
            i11 = 0;
        }
        return kotlin.ranges.e.e(maxIntrinsicWidth, i11);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        int m4007getMinWidthimpl;
        int m4006getMinHeightimpl;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        float f10 = this.minWidth;
        Dp.Companion companion = Dp.Companion;
        if (!Dp.m4054equalsimpl0(f10, companion.m4069getUnspecifiedD9Ej5fM()) && Constraints.m4007getMinWidthimpl(j10) == 0) {
            m4007getMinWidthimpl = kotlin.ranges.e.e(kotlin.ranges.e.j(measure.mo336roundToPx0680j_4(this.minWidth), Constraints.m4005getMaxWidthimpl(j10)), 0);
        } else {
            m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
        }
        int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
        if (!Dp.m4054equalsimpl0(this.minHeight, companion.m4069getUnspecifiedD9Ej5fM()) && Constraints.m4006getMinHeightimpl(j10) == 0) {
            m4006getMinHeightimpl = kotlin.ranges.e.e(kotlin.ranges.e.j(measure.mo336roundToPx0680j_4(this.minHeight), Constraints.m4004getMaxHeightimpl(j10)), 0);
        } else {
            m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(ConstraintsKt.Constraints(m4007getMinWidthimpl, m4005getMaxWidthimpl, m4006getMinHeightimpl, Constraints.m4004getMaxHeightimpl(j10)));
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.UnspecifiedConstraintsModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        int minIntrinsicHeight = measurable.minIntrinsicHeight(i10);
        if (!Dp.m4054equalsimpl0(this.minHeight, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) {
            i11 = intrinsicMeasureScope.mo336roundToPx0680j_4(this.minHeight);
        } else {
            i11 = 0;
        }
        return kotlin.ranges.e.e(minIntrinsicHeight, i11);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        int minIntrinsicWidth = measurable.minIntrinsicWidth(i10);
        if (!Dp.m4054equalsimpl0(this.minWidth, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) {
            i11 = intrinsicMeasureScope.mo336roundToPx0680j_4(this.minWidth);
        } else {
            i11 = 0;
        }
        return kotlin.ranges.e.e(minIntrinsicWidth, i11);
    }

    public /* synthetic */ UnspecifiedConstraintsModifier(float f10, float f11, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f10, (i10 & 2) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f11, function1, null);
    }

    private UnspecifiedConstraintsModifier(float f10, float f11, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.minWidth = f10;
        this.minHeight = f11;
    }
}

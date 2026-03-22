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
import androidx.compose.ui.unit.Density;
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
public final class SizeModifier extends InspectorValueInfo implements LayoutModifier {
    private final boolean enforceIncoming;
    private final float maxHeight;
    private final float maxWidth;
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ SizeModifier(float f10, float f11, float f12, float f13, boolean z10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, z10, function1);
    }

    /* renamed from: getTargetConstraints-OenEA2s  reason: not valid java name */
    private final long m499getTargetConstraintsOenEA2s(Density density) {
        int i10;
        int i11;
        int i12;
        int e10;
        float f10 = this.maxWidth;
        Dp.Companion companion = Dp.Companion;
        int i13 = 0;
        if (!Dp.m4054equalsimpl0(f10, companion.m4069getUnspecifiedD9Ej5fM())) {
            i10 = density.mo336roundToPx0680j_4(((Dp) kotlin.ranges.e.g(Dp.m4047boximpl(this.maxWidth), Dp.m4047boximpl(Dp.m4049constructorimpl(0)))).m4063unboximpl());
        } else {
            i10 = Integer.MAX_VALUE;
        }
        if (!Dp.m4054equalsimpl0(this.maxHeight, companion.m4069getUnspecifiedD9Ej5fM())) {
            i11 = density.mo336roundToPx0680j_4(((Dp) kotlin.ranges.e.g(Dp.m4047boximpl(this.maxHeight), Dp.m4047boximpl(Dp.m4049constructorimpl(0)))).m4063unboximpl());
        } else {
            i11 = Integer.MAX_VALUE;
        }
        if (Dp.m4054equalsimpl0(this.minWidth, companion.m4069getUnspecifiedD9Ej5fM()) || (i12 = kotlin.ranges.e.e(kotlin.ranges.e.j(density.mo336roundToPx0680j_4(this.minWidth), i10), 0)) == Integer.MAX_VALUE) {
            i12 = 0;
        }
        if (!Dp.m4054equalsimpl0(this.minHeight, companion.m4069getUnspecifiedD9Ej5fM()) && (e10 = kotlin.ranges.e.e(kotlin.ranges.e.j(density.mo336roundToPx0680j_4(this.minHeight), i11), 0)) != Integer.MAX_VALUE) {
            i13 = e10;
        }
        return ConstraintsKt.Constraints(i12, i10, i13, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SizeModifier)) {
            return false;
        }
        SizeModifier sizeModifier = (SizeModifier) obj;
        if (!Dp.m4054equalsimpl0(this.minWidth, sizeModifier.minWidth) || !Dp.m4054equalsimpl0(this.minHeight, sizeModifier.minHeight) || !Dp.m4054equalsimpl0(this.maxWidth, sizeModifier.maxWidth) || !Dp.m4054equalsimpl0(this.maxHeight, sizeModifier.maxHeight) || this.enforceIncoming != sizeModifier.enforceIncoming) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((((((Dp.m4055hashCodeimpl(this.minWidth) * 31) + Dp.m4055hashCodeimpl(this.minHeight)) * 31) + Dp.m4055hashCodeimpl(this.maxWidth)) * 31) + Dp.m4055hashCodeimpl(this.maxHeight)) * 31;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m499getTargetConstraintsOenEA2s = m499getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4002getHasFixedHeightimpl(m499getTargetConstraintsOenEA2s)) {
            return Constraints.m4004getMaxHeightimpl(m499getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4018constrainHeightK40F9xA(m499getTargetConstraintsOenEA2s, measurable.maxIntrinsicHeight(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m499getTargetConstraintsOenEA2s = m499getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4003getHasFixedWidthimpl(m499getTargetConstraintsOenEA2s)) {
            return Constraints.m4005getMaxWidthimpl(m499getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4019constrainWidthK40F9xA(m499getTargetConstraintsOenEA2s, measurable.maxIntrinsicWidth(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        int j11;
        int e10;
        int j12;
        int e11;
        long Constraints;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m499getTargetConstraintsOenEA2s = m499getTargetConstraintsOenEA2s(measure);
        if (this.enforceIncoming) {
            Constraints = ConstraintsKt.m4017constrainN9IONVI(j10, m499getTargetConstraintsOenEA2s);
        } else {
            float f10 = this.minWidth;
            Dp.Companion companion = Dp.Companion;
            if (!Dp.m4054equalsimpl0(f10, companion.m4069getUnspecifiedD9Ej5fM())) {
                j11 = Constraints.m4007getMinWidthimpl(m499getTargetConstraintsOenEA2s);
            } else {
                j11 = kotlin.ranges.e.j(Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(m499getTargetConstraintsOenEA2s));
            }
            if (!Dp.m4054equalsimpl0(this.maxWidth, companion.m4069getUnspecifiedD9Ej5fM())) {
                e10 = Constraints.m4005getMaxWidthimpl(m499getTargetConstraintsOenEA2s);
            } else {
                e10 = kotlin.ranges.e.e(Constraints.m4005getMaxWidthimpl(j10), Constraints.m4007getMinWidthimpl(m499getTargetConstraintsOenEA2s));
            }
            if (!Dp.m4054equalsimpl0(this.minHeight, companion.m4069getUnspecifiedD9Ej5fM())) {
                j12 = Constraints.m4006getMinHeightimpl(m499getTargetConstraintsOenEA2s);
            } else {
                j12 = kotlin.ranges.e.j(Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(m499getTargetConstraintsOenEA2s));
            }
            if (!Dp.m4054equalsimpl0(this.maxHeight, companion.m4069getUnspecifiedD9Ej5fM())) {
                e11 = Constraints.m4004getMaxHeightimpl(m499getTargetConstraintsOenEA2s);
            } else {
                e11 = kotlin.ranges.e.e(Constraints.m4004getMaxHeightimpl(j10), Constraints.m4006getMinHeightimpl(m499getTargetConstraintsOenEA2s));
            }
            Constraints = ConstraintsKt.Constraints(j11, e10, j12, e11);
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(Constraints);
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.SizeModifier$measure$1
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
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m499getTargetConstraintsOenEA2s = m499getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4002getHasFixedHeightimpl(m499getTargetConstraintsOenEA2s)) {
            return Constraints.m4004getMaxHeightimpl(m499getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4018constrainHeightK40F9xA(m499getTargetConstraintsOenEA2s, measurable.minIntrinsicHeight(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        long m499getTargetConstraintsOenEA2s = m499getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m4003getHasFixedWidthimpl(m499getTargetConstraintsOenEA2s)) {
            return Constraints.m4005getMaxWidthimpl(m499getTargetConstraintsOenEA2s);
        }
        return ConstraintsKt.m4019constrainWidthK40F9xA(m499getTargetConstraintsOenEA2s, measurable.minIntrinsicWidth(i10));
    }

    public /* synthetic */ SizeModifier(float f10, float f11, float f12, float f13, boolean z10, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f10, (i10 & 2) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f11, (i10 & 4) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f12, (i10 & 8) != 0 ? Dp.Companion.m4069getUnspecifiedD9Ej5fM() : f13, z10, function1, null);
    }

    private SizeModifier(float f10, float f11, float f12, float f13, boolean z10, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.minWidth = f10;
        this.minHeight = f11;
        this.maxWidth = f12;
        this.maxHeight = f13;
        this.enforceIncoming = z10;
    }
}

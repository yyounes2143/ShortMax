package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Size.kt */
@Metadata
/* loaded from: classes.dex */
public final class FillModifier extends InspectorValueInfo implements LayoutModifier {
    @NotNull
    private final Direction direction;
    private final float fraction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FillModifier(@NotNull Direction direction, float f10, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.direction = direction;
        this.fraction = f10;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof FillModifier) {
            FillModifier fillModifier = (FillModifier) obj;
            if (this.direction == fillModifier.direction && this.fraction == fillModifier.fraction) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.direction.hashCode() * 31) + Float.hashCode(this.fraction);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        int m4007getMinWidthimpl;
        int m4005getMaxWidthimpl;
        int m4004getMaxHeightimpl;
        int i10;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (Constraints.m4001getHasBoundedWidthimpl(j10) && this.direction != Direction.Vertical) {
            m4007getMinWidthimpl = kotlin.ranges.e.n(bt.a.c(Constraints.m4005getMaxWidthimpl(j10) * this.fraction), Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10));
            m4005getMaxWidthimpl = m4007getMinWidthimpl;
        } else {
            m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
            m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
        }
        if (Constraints.m4000getHasBoundedHeightimpl(j10) && this.direction != Direction.Horizontal) {
            i10 = kotlin.ranges.e.n(bt.a.c(Constraints.m4004getMaxHeightimpl(j10) * this.fraction), Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10));
            m4004getMaxHeightimpl = i10;
        } else {
            int m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
            m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
            i10 = m4006getMinHeightimpl;
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(ConstraintsKt.Constraints(m4007getMinWidthimpl, m4005getMaxWidthimpl, i10, m4004getMaxHeightimpl));
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.FillModifier$measure$1
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
}

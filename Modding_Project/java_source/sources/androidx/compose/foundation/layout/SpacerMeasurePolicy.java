package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Spacer.kt */
@Metadata
/* loaded from: classes.dex */
final class SpacerMeasurePolicy implements MeasurePolicy {
    @NotNull
    public static final SpacerMeasurePolicy INSTANCE = new SpacerMeasurePolicy();

    private SpacerMeasurePolicy() {
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
        int i10;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int i11 = 0;
        if (Constraints.m4003getHasFixedWidthimpl(j10)) {
            i10 = Constraints.m4005getMaxWidthimpl(j10);
        } else {
            i10 = 0;
        }
        if (Constraints.m4002getHasFixedHeightimpl(j10)) {
            i11 = Constraints.m4004getMaxHeightimpl(j10);
        }
        return MeasureScope.layout$default(measure, i10, i11, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.SpacerMeasurePolicy$measure$1$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }
        }, 4, null);
    }
}

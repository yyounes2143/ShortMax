package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Padding.kt */
@Metadata
/* loaded from: classes.dex */
public final class PaddingValuesModifier extends InspectorValueInfo implements LayoutModifier {
    @NotNull
    private final PaddingValues paddingValues;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaddingValuesModifier(@NotNull PaddingValues paddingValues, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.paddingValues = paddingValues;
    }

    public boolean equals(@Nullable Object obj) {
        PaddingValuesModifier paddingValuesModifier;
        if (obj instanceof PaddingValuesModifier) {
            paddingValuesModifier = (PaddingValuesModifier) obj;
        } else {
            paddingValuesModifier = null;
        }
        if (paddingValuesModifier == null) {
            return false;
        }
        return Intrinsics.areEqual(this.paddingValues, paddingValuesModifier.paddingValues);
    }

    @NotNull
    public final PaddingValues getPaddingValues() {
        return this.paddingValues;
    }

    public int hashCode() {
        return this.paddingValues.hashCode();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull final MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        float f10 = 0;
        if (Dp.m4048compareTo0680j_4(this.paddingValues.mo428calculateLeftPaddingu2uoSUM(measure.getLayoutDirection()), Dp.m4049constructorimpl(f10)) >= 0 && Dp.m4048compareTo0680j_4(this.paddingValues.mo430calculateTopPaddingD9Ej5fM(), Dp.m4049constructorimpl(f10)) >= 0 && Dp.m4048compareTo0680j_4(this.paddingValues.mo429calculateRightPaddingu2uoSUM(measure.getLayoutDirection()), Dp.m4049constructorimpl(f10)) >= 0 && Dp.m4048compareTo0680j_4(this.paddingValues.mo427calculateBottomPaddingD9Ej5fM(), Dp.m4049constructorimpl(f10)) >= 0) {
            int mo336roundToPx0680j_4 = measure.mo336roundToPx0680j_4(this.paddingValues.mo428calculateLeftPaddingu2uoSUM(measure.getLayoutDirection())) + measure.mo336roundToPx0680j_4(this.paddingValues.mo429calculateRightPaddingu2uoSUM(measure.getLayoutDirection()));
            int mo336roundToPx0680j_42 = measure.mo336roundToPx0680j_4(this.paddingValues.mo430calculateTopPaddingD9Ej5fM()) + measure.mo336roundToPx0680j_4(this.paddingValues.mo427calculateBottomPaddingD9Ej5fM());
            final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(ConstraintsKt.m4021offsetNN6EwU(j10, -mo336roundToPx0680j_4, -mo336roundToPx0680j_42));
            return MeasureScope.layout$default(measure, ConstraintsKt.m4019constrainWidthK40F9xA(j10, mo3335measureBRTryo0.getWidth() + mo336roundToPx0680j_4), ConstraintsKt.m4018constrainHeightK40F9xA(j10, mo3335measureBRTryo0.getHeight() + mo336roundToPx0680j_42), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.PaddingValuesModifier$measure$2
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
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                    Placeable.PlacementScope.place$default(layout, Placeable.this, measure.mo336roundToPx0680j_4(this.getPaddingValues().mo428calculateLeftPaddingu2uoSUM(measure.getLayoutDirection())), measure.mo336roundToPx0680j_4(this.getPaddingValues().mo430calculateTopPaddingD9Ej5fM()), 0.0f, 4, null);
                }
            }, 4, null);
        }
        throw new IllegalArgumentException("Padding must be non-negative");
    }
}

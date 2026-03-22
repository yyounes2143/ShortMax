package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Intrinsic.kt */
@Metadata
/* loaded from: classes.dex */
final class MinIntrinsicWidthModifier implements IntrinsicSizeModifier {
    @NotNull
    public static final MinIntrinsicWidthModifier INSTANCE = new MinIntrinsicWidthModifier();

    private MinIntrinsicWidthModifier() {
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier
    /* renamed from: calculateContentConstraints-l58MMJ0 */
    public long mo431calculateContentConstraintsl58MMJ0(@NotNull MeasureScope calculateContentConstraints, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(calculateContentConstraints, "$this$calculateContentConstraints");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return Constraints.Companion.m4015fixedWidthOenEA2s(measurable.minIntrinsicWidth(Constraints.m4004getMaxHeightimpl(j10)));
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.minIntrinsicWidth(i10);
    }
}

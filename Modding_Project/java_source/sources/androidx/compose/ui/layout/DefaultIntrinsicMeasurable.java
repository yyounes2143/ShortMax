package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Layout.kt */
@Metadata
/* loaded from: classes.dex */
public final class DefaultIntrinsicMeasurable implements Measurable {
    @NotNull
    private final IntrinsicMeasurable measurable;
    @NotNull
    private final IntrinsicMinMax minMax;
    @NotNull
    private final IntrinsicWidthHeight widthHeight;

    public DefaultIntrinsicMeasurable(@NotNull IntrinsicMeasurable measurable, @NotNull IntrinsicMinMax minMax, @NotNull IntrinsicWidthHeight widthHeight) {
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Intrinsics.checkNotNullParameter(minMax, "minMax");
        Intrinsics.checkNotNullParameter(widthHeight, "widthHeight");
        this.measurable = measurable;
        this.minMax = minMax;
        this.widthHeight = widthHeight;
    }

    @NotNull
    public final IntrinsicMeasurable getMeasurable() {
        return this.measurable;
    }

    @NotNull
    public final IntrinsicMinMax getMinMax() {
        return this.minMax;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object getParentData() {
        return this.measurable.getParentData();
    }

    @NotNull
    public final IntrinsicWidthHeight getWidthHeight() {
        return this.widthHeight;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i10) {
        return this.measurable.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i10) {
        return this.measurable.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    /* renamed from: measure-BRTryo0  reason: not valid java name */
    public Placeable mo3335measureBRTryo0(long j10) {
        int minIntrinsicHeight;
        int minIntrinsicWidth;
        if (this.widthHeight == IntrinsicWidthHeight.Width) {
            if (this.minMax == IntrinsicMinMax.Max) {
                minIntrinsicWidth = this.measurable.maxIntrinsicWidth(Constraints.m4004getMaxHeightimpl(j10));
            } else {
                minIntrinsicWidth = this.measurable.minIntrinsicWidth(Constraints.m4004getMaxHeightimpl(j10));
            }
            return new FixedSizeIntrinsicsPlaceable(minIntrinsicWidth, Constraints.m4004getMaxHeightimpl(j10));
        }
        if (this.minMax == IntrinsicMinMax.Max) {
            minIntrinsicHeight = this.measurable.maxIntrinsicHeight(Constraints.m4005getMaxWidthimpl(j10));
        } else {
            minIntrinsicHeight = this.measurable.minIntrinsicHeight(Constraints.m4005getMaxWidthimpl(j10));
        }
        return new FixedSizeIntrinsicsPlaceable(Constraints.m4005getMaxWidthimpl(j10), minIntrinsicHeight);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i10) {
        return this.measurable.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i10) {
        return this.measurable.minIntrinsicWidth(i10);
    }
}

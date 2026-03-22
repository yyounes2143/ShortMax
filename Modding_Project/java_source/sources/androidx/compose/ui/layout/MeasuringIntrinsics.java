package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutModifier.kt */
@Metadata
/* loaded from: classes.dex */
final class MeasuringIntrinsics {
    @NotNull
    public static final MeasuringIntrinsics INSTANCE = new MeasuringIntrinsics();

    /* compiled from: LayoutModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class DefaultIntrinsicMeasurable implements Measurable {
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
        /* renamed from: measure-BRTryo0 */
        public Placeable mo3335measureBRTryo0(long j10) {
            int minIntrinsicHeight;
            int minIntrinsicWidth;
            if (this.widthHeight == IntrinsicWidthHeight.Width) {
                if (this.minMax == IntrinsicMinMax.Max) {
                    minIntrinsicWidth = this.measurable.maxIntrinsicWidth(Constraints.m4004getMaxHeightimpl(j10));
                } else {
                    minIntrinsicWidth = this.measurable.minIntrinsicWidth(Constraints.m4004getMaxHeightimpl(j10));
                }
                return new EmptyPlaceable(minIntrinsicWidth, Constraints.m4004getMaxHeightimpl(j10));
            }
            if (this.minMax == IntrinsicMinMax.Max) {
                minIntrinsicHeight = this.measurable.maxIntrinsicHeight(Constraints.m4005getMaxWidthimpl(j10));
            } else {
                minIntrinsicHeight = this.measurable.minIntrinsicHeight(Constraints.m4005getMaxWidthimpl(j10));
            }
            return new EmptyPlaceable(Constraints.m4005getMaxWidthimpl(j10), minIntrinsicHeight);
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

    /* compiled from: LayoutModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    private enum IntrinsicMinMax {
        Min,
        Max
    }

    /* compiled from: LayoutModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    private enum IntrinsicWidthHeight {
        Width,
        Height
    }

    private MeasuringIntrinsics() {
    }

    public final int maxHeight$ui_release(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(instrinsicMeasureScope, "instrinsicMeasureScope");
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.mo57measure3p2s80s(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Max, IntrinsicWidthHeight.Height), ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null)).getHeight();
    }

    public final int maxWidth$ui_release(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(instrinsicMeasureScope, "instrinsicMeasureScope");
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.mo57measure3p2s80s(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Max, IntrinsicWidthHeight.Width), ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null)).getWidth();
    }

    public final int minHeight$ui_release(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(instrinsicMeasureScope, "instrinsicMeasureScope");
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.mo57measure3p2s80s(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Min, IntrinsicWidthHeight.Height), ConstraintsKt.Constraints$default(0, i10, 0, 0, 13, null)).getHeight();
    }

    public final int minWidth$ui_release(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(instrinsicMeasureScope, "instrinsicMeasureScope");
        Intrinsics.checkNotNullParameter(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.mo57measure3p2s80s(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Min, IntrinsicWidthHeight.Width), ConstraintsKt.Constraints$default(0, 0, 0, i10, 7, null)).getWidth();
    }

    /* compiled from: LayoutModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class EmptyPlaceable extends Placeable {
        public EmptyPlaceable(int i10, int i11) {
            m3375setMeasuredSizeozmzZPI(IntSizeKt.IntSize(i10, i11));
        }

        @Override // androidx.compose.ui.layout.Measured
        public int get(@NotNull AlignmentLine alignmentLine) {
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            return Integer.MIN_VALUE;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.Placeable
        /* renamed from: placeAt-f8xVGno */
        public void mo3336placeAtf8xVGno(long j10, float f10, @Nullable Function1<? super GraphicsLayerScope, Unit> function1) {
        }
    }
}

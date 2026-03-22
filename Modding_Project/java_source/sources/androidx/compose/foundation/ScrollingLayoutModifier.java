package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Scroll.kt */
@Metadata
/* loaded from: classes.dex */
final class ScrollingLayoutModifier implements LayoutModifier {
    private final boolean isReversed;
    private final boolean isVertical;
    @NotNull
    private final OverscrollEffect overscrollEffect;
    @NotNull
    private final ScrollState scrollerState;

    public ScrollingLayoutModifier(@NotNull ScrollState scrollerState, boolean z10, boolean z11, @NotNull OverscrollEffect overscrollEffect) {
        Intrinsics.checkNotNullParameter(scrollerState, "scrollerState");
        Intrinsics.checkNotNullParameter(overscrollEffect, "overscrollEffect");
        this.scrollerState = scrollerState;
        this.isReversed = z10;
        this.isVertical = z11;
        this.overscrollEffect = overscrollEffect;
    }

    public static /* synthetic */ ScrollingLayoutModifier copy$default(ScrollingLayoutModifier scrollingLayoutModifier, ScrollState scrollState, boolean z10, boolean z11, OverscrollEffect overscrollEffect, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            scrollState = scrollingLayoutModifier.scrollerState;
        }
        if ((i10 & 2) != 0) {
            z10 = scrollingLayoutModifier.isReversed;
        }
        if ((i10 & 4) != 0) {
            z11 = scrollingLayoutModifier.isVertical;
        }
        if ((i10 & 8) != 0) {
            overscrollEffect = scrollingLayoutModifier.overscrollEffect;
        }
        return scrollingLayoutModifier.copy(scrollState, z10, z11, overscrollEffect);
    }

    @NotNull
    public final ScrollState component1() {
        return this.scrollerState;
    }

    public final boolean component2() {
        return this.isReversed;
    }

    public final boolean component3() {
        return this.isVertical;
    }

    @NotNull
    public final OverscrollEffect component4() {
        return this.overscrollEffect;
    }

    @NotNull
    public final ScrollingLayoutModifier copy(@NotNull ScrollState scrollerState, boolean z10, boolean z11, @NotNull OverscrollEffect overscrollEffect) {
        Intrinsics.checkNotNullParameter(scrollerState, "scrollerState");
        Intrinsics.checkNotNullParameter(overscrollEffect, "overscrollEffect");
        return new ScrollingLayoutModifier(scrollerState, z10, z11, overscrollEffect);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScrollingLayoutModifier)) {
            return false;
        }
        ScrollingLayoutModifier scrollingLayoutModifier = (ScrollingLayoutModifier) obj;
        if (Intrinsics.areEqual(this.scrollerState, scrollingLayoutModifier.scrollerState) && this.isReversed == scrollingLayoutModifier.isReversed && this.isVertical == scrollingLayoutModifier.isVertical && Intrinsics.areEqual(this.overscrollEffect, scrollingLayoutModifier.overscrollEffect)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final OverscrollEffect getOverscrollEffect() {
        return this.overscrollEffect;
    }

    @NotNull
    public final ScrollState getScrollerState() {
        return this.scrollerState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.scrollerState.hashCode() * 31;
        boolean z10 = this.isReversed;
        int i10 = 1;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (hashCode + i11) * 31;
        boolean z11 = this.isVertical;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return ((i12 + i10) * 31) + this.overscrollEffect.hashCode();
    }

    public final boolean isReversed() {
        return this.isReversed;
    }

    public final boolean isVertical() {
        return this.isVertical;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Orientation orientation;
        int m4004getMaxHeightimpl;
        boolean z10;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (this.isVertical) {
            orientation = Orientation.Vertical;
        } else {
            orientation = Orientation.Horizontal;
        }
        CheckScrollableContainerConstraintsKt.m215checkScrollableContainerConstraintsK40F9xA(j10, orientation);
        int i10 = Integer.MAX_VALUE;
        if (this.isVertical) {
            m4004getMaxHeightimpl = Integer.MAX_VALUE;
        } else {
            m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
        }
        if (this.isVertical) {
            i10 = Constraints.m4005getMaxWidthimpl(j10);
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(Constraints.m3996copyZbe2FdA$default(j10, 0, i10, 0, m4004getMaxHeightimpl, 5, null));
        int j11 = e.j(mo3335measureBRTryo0.getWidth(), Constraints.m4005getMaxWidthimpl(j10));
        int j12 = e.j(mo3335measureBRTryo0.getHeight(), Constraints.m4004getMaxHeightimpl(j10));
        final int height = mo3335measureBRTryo0.getHeight() - j12;
        int width = mo3335measureBRTryo0.getWidth() - j11;
        if (!this.isVertical) {
            height = width;
        }
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        if (height != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        overscrollEffect.setEnabled(z10);
        return MeasureScope.layout$default(measure, j11, j12, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.ScrollingLayoutModifier$measure$1
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
                ScrollingLayoutModifier.this.getScrollerState().setMaxValue$foundation_release(height);
                int n10 = e.n(ScrollingLayoutModifier.this.getScrollerState().getValue(), 0, height);
                int i11 = ScrollingLayoutModifier.this.isReversed() ? n10 - height : -n10;
                Placeable.PlacementScope.placeRelativeWithLayer$default(layout, mo3335measureBRTryo0, ScrollingLayoutModifier.this.isVertical() ? 0 : i11, ScrollingLayoutModifier.this.isVertical() ? i11 : 0, 0.0f, null, 12, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        return measurable.minIntrinsicWidth(i10);
    }

    @NotNull
    public String toString() {
        return "ScrollingLayoutModifier(scrollerState=" + this.scrollerState + ", isReversed=" + this.isReversed + ", isVertical=" + this.isVertical + ", overscrollEffect=" + this.overscrollEffect + ')';
    }
}

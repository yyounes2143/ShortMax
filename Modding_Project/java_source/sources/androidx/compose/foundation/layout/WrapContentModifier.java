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
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Size.kt */
@Metadata
/* loaded from: classes.dex */
public final class WrapContentModifier extends InspectorValueInfo implements LayoutModifier {
    @NotNull
    private final Object align;
    @NotNull
    private final Function2<IntSize, LayoutDirection, IntOffset> alignmentCallback;
    @NotNull
    private final Direction direction;
    private final boolean unbounded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WrapContentModifier(@NotNull Direction direction, boolean z10, @NotNull Function2<? super IntSize, ? super LayoutDirection, IntOffset> alignmentCallback, @NotNull Object align, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(alignmentCallback, "alignmentCallback");
        Intrinsics.checkNotNullParameter(align, "align");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.direction = direction;
        this.unbounded = z10;
        this.alignmentCallback = alignmentCallback;
        this.align = align;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof WrapContentModifier)) {
            return false;
        }
        WrapContentModifier wrapContentModifier = (WrapContentModifier) obj;
        if (this.direction != wrapContentModifier.direction || this.unbounded != wrapContentModifier.unbounded || !Intrinsics.areEqual(this.align, wrapContentModifier.align)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (((this.direction.hashCode() * 31) + Boolean.hashCode(this.unbounded)) * 31) + this.align.hashCode();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull final MeasureScope measure, @NotNull Measurable measurable, long j10) {
        int m4007getMinWidthimpl;
        int m4005getMaxWidthimpl;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Direction direction = this.direction;
        Direction direction2 = Direction.Vertical;
        int i10 = 0;
        if (direction != direction2) {
            m4007getMinWidthimpl = 0;
        } else {
            m4007getMinWidthimpl = Constraints.m4007getMinWidthimpl(j10);
        }
        Direction direction3 = this.direction;
        Direction direction4 = Direction.Horizontal;
        if (direction3 == direction4) {
            i10 = Constraints.m4006getMinHeightimpl(j10);
        }
        int i11 = Integer.MAX_VALUE;
        if (this.direction != direction2 && this.unbounded) {
            m4005getMaxWidthimpl = Integer.MAX_VALUE;
        } else {
            m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
        }
        if (this.direction == direction4 || !this.unbounded) {
            i11 = Constraints.m4004getMaxHeightimpl(j10);
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(ConstraintsKt.Constraints(m4007getMinWidthimpl, m4005getMaxWidthimpl, i10, i11));
        final int n10 = kotlin.ranges.e.n(mo3335measureBRTryo0.getWidth(), Constraints.m4007getMinWidthimpl(j10), Constraints.m4005getMaxWidthimpl(j10));
        final int n11 = kotlin.ranges.e.n(mo3335measureBRTryo0.getHeight(), Constraints.m4006getMinHeightimpl(j10), Constraints.m4004getMaxHeightimpl(j10));
        return MeasureScope.layout$default(measure, n10, n11, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.WrapContentModifier$measure$1
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
                Function2 function2;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                function2 = WrapContentModifier.this.alignmentCallback;
                Placeable.PlacementScope.m3377place70tqf50$default(layout, mo3335measureBRTryo0, ((IntOffset) function2.invoke(IntSize.m4201boximpl(IntSizeKt.IntSize(n10 - mo3335measureBRTryo0.getWidth(), n11 - mo3335measureBRTryo0.getHeight())), measure.getLayoutDirection())).m4176unboximpl(), 0.0f, 2, null);
            }
        }, 4, null);
    }
}

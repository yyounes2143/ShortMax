package androidx.compose.material;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.DpSize;
import bt.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TouchTarget.kt */
@Metadata
/* loaded from: classes.dex */
final class MinimumTouchTargetModifier implements LayoutModifier {
    private final long size;

    public /* synthetic */ MinimumTouchTargetModifier(long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10);
    }

    public boolean equals(@Nullable Object obj) {
        MinimumTouchTargetModifier minimumTouchTargetModifier;
        if (obj instanceof MinimumTouchTargetModifier) {
            minimumTouchTargetModifier = (MinimumTouchTargetModifier) obj;
        } else {
            minimumTouchTargetModifier = null;
        }
        if (minimumTouchTargetModifier == null) {
            return false;
        }
        return DpSize.m4144equalsimpl0(this.size, minimumTouchTargetModifier.size);
    }

    /* renamed from: getSize-MYxV2XQ  reason: not valid java name */
    public final long m1114getSizeMYxV2XQ() {
        return this.size;
    }

    public int hashCode() {
        return DpSize.m4149hashCodeimpl(this.size);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        final int max = Math.max(mo3335measureBRTryo0.getWidth(), measure.mo336roundToPx0680j_4(DpSize.m4147getWidthD9Ej5fM(this.size)));
        final int max2 = Math.max(mo3335measureBRTryo0.getHeight(), measure.mo336roundToPx0680j_4(DpSize.m4145getHeightD9Ej5fM(this.size)));
        return MeasureScope.layout$default(measure, max, max2, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.MinimumTouchTargetModifier$measure$1
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
                Placeable.PlacementScope.place$default(layout, mo3335measureBRTryo0, a.c((max - mo3335measureBRTryo0.getWidth()) / 2.0f), a.c((max2 - mo3335measureBRTryo0.getHeight()) / 2.0f), 0.0f, 4, null);
            }
        }, 4, null);
    }

    private MinimumTouchTargetModifier(long j10) {
        this.size = j10;
    }
}

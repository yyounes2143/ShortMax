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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Padding.kt */
@Metadata
/* loaded from: classes.dex */
public final class PaddingModifier extends InspectorValueInfo implements LayoutModifier {
    private final float bottom;
    private final float end;
    private final boolean rtlAware;
    private final float start;
    private final float top;

    public /* synthetic */ PaddingModifier(float f10, float f11, float f12, float f13, boolean z10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, z10, function1);
    }

    public boolean equals(@Nullable Object obj) {
        PaddingModifier paddingModifier;
        if (obj instanceof PaddingModifier) {
            paddingModifier = (PaddingModifier) obj;
        } else {
            paddingModifier = null;
        }
        if (paddingModifier == null || !Dp.m4054equalsimpl0(this.start, paddingModifier.start) || !Dp.m4054equalsimpl0(this.top, paddingModifier.top) || !Dp.m4054equalsimpl0(this.end, paddingModifier.end) || !Dp.m4054equalsimpl0(this.bottom, paddingModifier.bottom) || this.rtlAware != paddingModifier.rtlAware) {
            return false;
        }
        return true;
    }

    /* renamed from: getBottom-D9Ej5fM  reason: not valid java name */
    public final float m452getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* renamed from: getEnd-D9Ej5fM  reason: not valid java name */
    public final float m453getEndD9Ej5fM() {
        return this.end;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    /* renamed from: getStart-D9Ej5fM  reason: not valid java name */
    public final float m454getStartD9Ej5fM() {
        return this.start;
    }

    /* renamed from: getTop-D9Ej5fM  reason: not valid java name */
    public final float m455getTopD9Ej5fM() {
        return this.top;
    }

    public int hashCode() {
        return (((((((Dp.m4055hashCodeimpl(this.start) * 31) + Dp.m4055hashCodeimpl(this.top)) * 31) + Dp.m4055hashCodeimpl(this.end)) * 31) + Dp.m4055hashCodeimpl(this.bottom)) * 31) + Boolean.hashCode(this.rtlAware);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull final MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        int mo336roundToPx0680j_4 = measure.mo336roundToPx0680j_4(this.start) + measure.mo336roundToPx0680j_4(this.end);
        int mo336roundToPx0680j_42 = measure.mo336roundToPx0680j_4(this.top) + measure.mo336roundToPx0680j_4(this.bottom);
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(ConstraintsKt.m4021offsetNN6EwU(j10, -mo336roundToPx0680j_4, -mo336roundToPx0680j_42));
        return MeasureScope.layout$default(measure, ConstraintsKt.m4019constrainWidthK40F9xA(j10, mo3335measureBRTryo0.getWidth() + mo336roundToPx0680j_4), ConstraintsKt.m4018constrainHeightK40F9xA(j10, mo3335measureBRTryo0.getHeight() + mo336roundToPx0680j_42), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.PaddingModifier$measure$1
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
                if (PaddingModifier.this.getRtlAware()) {
                    Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, measure.mo336roundToPx0680j_4(PaddingModifier.this.m454getStartD9Ej5fM()), measure.mo336roundToPx0680j_4(PaddingModifier.this.m455getTopD9Ej5fM()), 0.0f, 4, null);
                } else {
                    Placeable.PlacementScope.place$default(layout, mo3335measureBRTryo0, measure.mo336roundToPx0680j_4(PaddingModifier.this.m454getStartD9Ej5fM()), measure.mo336roundToPx0680j_4(PaddingModifier.this.m455getTopD9Ej5fM()), 0.0f, 4, null);
                }
            }
        }, 4, null);
    }

    private PaddingModifier(float f10, float f11, float f12, float f13, boolean z10, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.start = f10;
        this.top = f11;
        this.end = f12;
        this.bottom = f13;
        this.rtlAware = z10;
        if ((f10 < 0.0f && !Dp.m4054equalsimpl0(f10, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) || ((f11 < 0.0f && !Dp.m4054equalsimpl0(f11, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) || ((f12 < 0.0f && !Dp.m4054equalsimpl0(f12, Dp.Companion.m4069getUnspecifiedD9Ej5fM())) || (f13 < 0.0f && !Dp.m4054equalsimpl0(f13, Dp.Companion.m4069getUnspecifiedD9Ej5fM()))))) {
            throw new IllegalArgumentException("Padding must be non-negative");
        }
    }

    public /* synthetic */ PaddingModifier(float f10, float f11, float f12, float f13, boolean z10, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Dp.m4049constructorimpl(0) : f10, (i10 & 2) != 0 ? Dp.m4049constructorimpl(0) : f11, (i10 & 4) != 0 ? Dp.m4049constructorimpl(0) : f12, (i10 & 8) != 0 ? Dp.m4049constructorimpl(0) : f13, z10, function1, null);
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Offset.kt */
@Metadata
/* loaded from: classes.dex */
final class OffsetModifier extends InspectorValueInfo implements LayoutModifier {
    private final boolean rtlAware;

    /* renamed from: x  reason: collision with root package name */
    private final float f902x;

    /* renamed from: y  reason: collision with root package name */
    private final float f903y;

    public /* synthetic */ OffsetModifier(float f10, float f11, boolean z10, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, z10, function1);
    }

    public boolean equals(@Nullable Object obj) {
        OffsetModifier offsetModifier;
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetModifier) {
            offsetModifier = (OffsetModifier) obj;
        } else {
            offsetModifier = null;
        }
        if (offsetModifier == null) {
            return false;
        }
        if (Dp.m4054equalsimpl0(this.f902x, offsetModifier.f902x) && Dp.m4054equalsimpl0(this.f903y, offsetModifier.f903y) && this.rtlAware == offsetModifier.rtlAware) {
            return true;
        }
        return false;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    /* renamed from: getX-D9Ej5fM  reason: not valid java name */
    public final float m437getXD9Ej5fM() {
        return this.f902x;
    }

    /* renamed from: getY-D9Ej5fM  reason: not valid java name */
    public final float m438getYD9Ej5fM() {
        return this.f903y;
    }

    public int hashCode() {
        return (((Dp.m4055hashCodeimpl(this.f902x) * 31) + Dp.m4055hashCodeimpl(this.f903y)) * 31) + Boolean.hashCode(this.rtlAware);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull final MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.OffsetModifier$measure$1
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
                if (OffsetModifier.this.getRtlAware()) {
                    Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, measure.mo336roundToPx0680j_4(OffsetModifier.this.m437getXD9Ej5fM()), measure.mo336roundToPx0680j_4(OffsetModifier.this.m438getYD9Ej5fM()), 0.0f, 4, null);
                } else {
                    Placeable.PlacementScope.place$default(layout, mo3335measureBRTryo0, measure.mo336roundToPx0680j_4(OffsetModifier.this.m437getXD9Ej5fM()), measure.mo336roundToPx0680j_4(OffsetModifier.this.m438getYD9Ej5fM()), 0.0f, 4, null);
                }
            }
        }, 4, null);
    }

    @NotNull
    public String toString() {
        return "OffsetModifier(x=" + ((Object) Dp.m4060toStringimpl(this.f902x)) + ", y=" + ((Object) Dp.m4060toStringimpl(this.f903y)) + ", rtlAware=" + this.rtlAware + ')';
    }

    private OffsetModifier(float f10, float f11, boolean z10, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.f902x = f10;
        this.f903y = f11;
        this.rtlAware = z10;
    }
}

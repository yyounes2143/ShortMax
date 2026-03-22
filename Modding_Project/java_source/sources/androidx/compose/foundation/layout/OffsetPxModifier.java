package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Offset.kt */
@Metadata
/* loaded from: classes.dex */
final class OffsetPxModifier extends InspectorValueInfo implements LayoutModifier {
    @NotNull
    private final Function1<Density, IntOffset> offset;
    private final boolean rtlAware;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OffsetPxModifier(@NotNull Function1<? super Density, IntOffset> offset, boolean z10, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(offset, "offset");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.offset = offset;
        this.rtlAware = z10;
    }

    public boolean equals(@Nullable Object obj) {
        OffsetPxModifier offsetPxModifier;
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetPxModifier) {
            offsetPxModifier = (OffsetPxModifier) obj;
        } else {
            offsetPxModifier = null;
        }
        if (offsetPxModifier == null) {
            return false;
        }
        if (Intrinsics.areEqual(this.offset, offsetPxModifier.offset) && this.rtlAware == offsetPxModifier.rtlAware) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Function1<Density, IntOffset> getOffset() {
        return this.offset;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    public int hashCode() {
        return (this.offset.hashCode() * 31) + Boolean.hashCode(this.rtlAware);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull final MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.layout.OffsetPxModifier$measure$1
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
                long m4176unboximpl = OffsetPxModifier.this.getOffset().invoke(measure).m4176unboximpl();
                if (OffsetPxModifier.this.getRtlAware()) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(layout, mo3335measureBRTryo0, IntOffset.m4167getXimpl(m4176unboximpl), IntOffset.m4168getYimpl(m4176unboximpl), 0.0f, null, 12, null);
                } else {
                    Placeable.PlacementScope.placeWithLayer$default(layout, mo3335measureBRTryo0, IntOffset.m4167getXimpl(m4176unboximpl), IntOffset.m4168getYimpl(m4176unboximpl), 0.0f, null, 12, null);
                }
            }
        }, 4, null);
    }

    @NotNull
    public String toString() {
        return "OffsetPxModifier(offset=" + this.offset + ", rtlAware=" + this.rtlAware + ')';
    }
}

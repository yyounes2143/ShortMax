package androidx.compose.ui;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ZIndexModifier.kt */
@Metadata
/* loaded from: classes.dex */
final class ZIndexModifier extends InspectorValueInfo implements LayoutModifier {
    private final float zIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZIndexModifier(float f10, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.zIndex = f10;
    }

    public boolean equals(@Nullable Object obj) {
        ZIndexModifier zIndexModifier;
        if (obj instanceof ZIndexModifier) {
            zIndexModifier = (ZIndexModifier) obj;
        } else {
            zIndexModifier = null;
        }
        if (zIndexModifier == null || this.zIndex != zIndexModifier.zIndex) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Float.hashCode(this.zIndex);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.ZIndexModifier$measure$1
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
                float f10;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable placeable = Placeable.this;
                f10 = this.zIndex;
                layout.place(placeable, 0, 0, f10);
            }
        }, 4, null);
    }

    @NotNull
    public String toString() {
        return "ZIndexModifier(zIndex=" + this.zIndex + ')';
    }
}

package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Placeable.kt */
@Metadata
/* loaded from: classes.dex */
public final class PlaceableKt {
    @NotNull
    private static final Function1<GraphicsLayerScope, Unit> DefaultLayerBlock = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.layout.PlaceableKt$DefaultLayerBlock$1
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull GraphicsLayerScope graphicsLayerScope) {
            Intrinsics.checkNotNullParameter(graphicsLayerScope, "$this$null");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
            invoke2(graphicsLayerScope);
            return Unit.f60915a;
        }
    };
    private static final long DefaultConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
}

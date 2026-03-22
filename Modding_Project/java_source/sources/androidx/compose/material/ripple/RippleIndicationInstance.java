package androidx.compose.material.ripple;

import androidx.compose.foundation.IndicationInstance;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Ripple.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class RippleIndicationInstance implements IndicationInstance {
    @NotNull
    private final StateLayer stateLayer;

    public RippleIndicationInstance(boolean z10, @NotNull State<RippleAlpha> rippleAlpha) {
        Intrinsics.checkNotNullParameter(rippleAlpha, "rippleAlpha");
        this.stateLayer = new StateLayer(z10, rippleAlpha);
    }

    public abstract void addRipple(@NotNull PressInteraction.Press press, @NotNull g0 g0Var);

    /* renamed from: drawStateLayer-H2RKhps  reason: not valid java name */
    public final void m1288drawStateLayerH2RKhps(@NotNull DrawScope drawStateLayer, float f10, long j10) {
        Intrinsics.checkNotNullParameter(drawStateLayer, "$this$drawStateLayer");
        this.stateLayer.m1292drawStateLayerH2RKhps(drawStateLayer, f10, j10);
    }

    public abstract void removeRipple(@NotNull PressInteraction.Press press);

    public final void updateStateLayer$material_ripple_release(@NotNull Interaction interaction, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.stateLayer.handleInteraction(interaction, scope);
    }
}

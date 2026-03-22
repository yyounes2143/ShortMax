package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import gt.g;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ripple.kt */
@Metadata
/* loaded from: classes.dex */
final class StateLayer {
    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedAlpha;
    private final boolean bounded;
    @Nullable
    private Interaction currentInteraction;
    @NotNull
    private final List<Interaction> interactions;
    @NotNull
    private final State<RippleAlpha> rippleAlpha;

    public StateLayer(boolean z10, @NotNull State<RippleAlpha> rippleAlpha) {
        Intrinsics.checkNotNullParameter(rippleAlpha, "rippleAlpha");
        this.bounded = z10;
        this.rippleAlpha = rippleAlpha;
        this.animatedAlpha = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
        this.interactions = new ArrayList();
    }

    /* renamed from: drawStateLayer-H2RKhps  reason: not valid java name */
    public final void m1292drawStateLayerH2RKhps(@NotNull DrawScope drawStateLayer, float f10, long j10) {
        float mo342toPx0680j_4;
        Intrinsics.checkNotNullParameter(drawStateLayer, "$this$drawStateLayer");
        if (Float.isNaN(f10)) {
            mo342toPx0680j_4 = RippleAnimationKt.m1283getRippleEndRadiuscSwnlzA(drawStateLayer, this.bounded, drawStateLayer.mo2336getSizeNHjbRc());
        } else {
            mo342toPx0680j_4 = drawStateLayer.mo342toPx0680j_4(f10);
        }
        float f11 = mo342toPx0680j_4;
        float floatValue = this.animatedAlpha.getValue().floatValue();
        if (floatValue > 0.0f) {
            long m1841copywmQWz5c$default = Color.m1841copywmQWz5c$default(j10, floatValue, 0.0f, 0.0f, 0.0f, 14, null);
            if (!this.bounded) {
                DrawScope.m2318drawCircleVaOC9Bg$default(drawStateLayer, m1841copywmQWz5c$default, f11, 0L, 0.0f, null, null, 0, 124, null);
                return;
            }
            float m1675getWidthimpl = Size.m1675getWidthimpl(drawStateLayer.mo2336getSizeNHjbRc());
            float m1672getHeightimpl = Size.m1672getHeightimpl(drawStateLayer.mo2336getSizeNHjbRc());
            int m1831getIntersectrtfAjoo = ClipOp.Companion.m1831getIntersectrtfAjoo();
            DrawContext drawContext = drawStateLayer.getDrawContext();
            long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
            drawContext.getCanvas().save();
            drawContext.getTransform().mo2264clipRectN_I0leg(0.0f, 0.0f, m1675getWidthimpl, m1672getHeightimpl, m1831getIntersectrtfAjoo);
            DrawScope.m2318drawCircleVaOC9Bg$default(drawStateLayer, m1841copywmQWz5c$default, f11, 0L, 0.0f, null, null, 0, 124, null);
            drawContext.getCanvas().restore();
            drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
        }
    }

    public final void handleInteraction(@NotNull Interaction interaction, @NotNull g0 scope) {
        float f10;
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        boolean z10 = interaction instanceof HoverInteraction.Enter;
        if (z10) {
            this.interactions.add(interaction);
        } else if (interaction instanceof HoverInteraction.Exit) {
            this.interactions.remove(((HoverInteraction.Exit) interaction).getEnter());
        } else if (interaction instanceof FocusInteraction.Focus) {
            this.interactions.add(interaction);
        } else if (interaction instanceof FocusInteraction.Unfocus) {
            this.interactions.remove(((FocusInteraction.Unfocus) interaction).getFocus());
        } else if (interaction instanceof DragInteraction.Start) {
            this.interactions.add(interaction);
        } else if (interaction instanceof DragInteraction.Stop) {
            this.interactions.remove(((DragInteraction.Stop) interaction).getStart());
        } else if (interaction instanceof DragInteraction.Cancel) {
            this.interactions.remove(((DragInteraction.Cancel) interaction).getStart());
        } else {
            return;
        }
        Interaction interaction2 = (Interaction) CollectionsKt.D0(this.interactions);
        if (!Intrinsics.areEqual(this.currentInteraction, interaction2)) {
            if (interaction2 == null) {
                g.d(scope, null, null, new StateLayer$handleInteraction$2(this, RippleKt.access$outgoingStateLayerAnimationSpecFor(this.currentInteraction), null), 3, null);
            } else {
                if (z10) {
                    f10 = this.rippleAlpha.getValue().getHoveredAlpha();
                } else if (interaction instanceof FocusInteraction.Focus) {
                    f10 = this.rippleAlpha.getValue().getFocusedAlpha();
                } else if (interaction instanceof DragInteraction.Start) {
                    f10 = this.rippleAlpha.getValue().getDraggedAlpha();
                } else {
                    f10 = 0.0f;
                }
                g.d(scope, null, null, new StateLayer$handleInteraction$1(this, f10, RippleKt.access$incomingStateLayerAnimationSpecFor(interaction2), null), 3, null);
            }
            this.currentInteraction = interaction2;
        }
    }
}

package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import gt.g;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonRipple.kt */
@Metadata
/* loaded from: classes.dex */
public final class CommonRippleIndicationInstance extends RippleIndicationInstance implements RememberObserver {
    private final boolean bounded;
    @NotNull
    private final State<Color> color;
    private final float radius;
    @NotNull
    private final State<RippleAlpha> rippleAlpha;
    @NotNull
    private final SnapshotStateMap<PressInteraction.Press, RippleAnimation> ripples;

    public /* synthetic */ CommonRippleIndicationInstance(boolean z10, float f10, State state, State state2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, state, state2);
    }

    /* renamed from: drawRipples-4WTKRHQ  reason: not valid java name */
    private final void m1281drawRipples4WTKRHQ(DrawScope drawScope, long j10) {
        for (Map.Entry<PressInteraction.Press, RippleAnimation> entry : this.ripples.entrySet()) {
            RippleAnimation value = entry.getValue();
            float pressedAlpha = this.rippleAlpha.getValue().getPressedAlpha();
            if (pressedAlpha != 0.0f) {
                value.m1282draw4WTKRHQ(drawScope, Color.m1841copywmQWz5c$default(j10, pressedAlpha, 0.0f, 0.0f, 0.0f, 14, null));
            }
        }
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void addRipple(@NotNull PressInteraction.Press interaction, @NotNull g0 scope) {
        Offset offset;
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        for (Map.Entry<PressInteraction.Press, RippleAnimation> entry : this.ripples.entrySet()) {
            entry.getValue().finish();
        }
        if (this.bounded) {
            offset = Offset.m1595boximpl(interaction.m367getPressPositionF1C5BW0());
        } else {
            offset = null;
        }
        RippleAnimation rippleAnimation = new RippleAnimation(offset, this.radius, this.bounded, null);
        this.ripples.put(interaction, rippleAnimation);
        g.d(scope, null, null, new CommonRippleIndicationInstance$addRipple$2(rippleAnimation, this, interaction, null), 3, null);
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void drawIndication(@NotNull ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        long m1852unboximpl = this.color.getValue().m1852unboximpl();
        contentDrawScope.drawContent();
        m1288drawStateLayerH2RKhps(contentDrawScope, this.radius, m1852unboximpl);
        m1281drawRipples4WTKRHQ(contentDrawScope, m1852unboximpl);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        this.ripples.clear();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        this.ripples.clear();
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void removeRipple(@NotNull PressInteraction.Press interaction) {
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        RippleAnimation rippleAnimation = this.ripples.get(interaction);
        if (rippleAnimation != null) {
            rippleAnimation.finish();
        }
    }

    private CommonRippleIndicationInstance(boolean z10, float f10, State<Color> state, State<RippleAlpha> state2) {
        super(z10, state2);
        this.bounded = z10;
        this.radius = f10;
        this.color = state;
        this.rippleAlpha = state2;
        this.ripples = SnapshotStateKt.mutableStateMapOf();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }
}

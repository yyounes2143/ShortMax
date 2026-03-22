package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Elevation.kt */
@Metadata
/* loaded from: classes.dex */
public final class ElevationDefaults {
    @NotNull
    public static final ElevationDefaults INSTANCE = new ElevationDefaults();

    private ElevationDefaults() {
    }

    @Nullable
    public final AnimationSpec<Dp> incomingAnimationSpecForInteraction(@NotNull Interaction interaction) {
        TweenSpec tweenSpec;
        TweenSpec tweenSpec2;
        TweenSpec tweenSpec3;
        TweenSpec tweenSpec4;
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        if (interaction instanceof PressInteraction.Press) {
            tweenSpec4 = ElevationKt.DefaultIncomingSpec;
            return tweenSpec4;
        } else if (interaction instanceof DragInteraction.Start) {
            tweenSpec3 = ElevationKt.DefaultIncomingSpec;
            return tweenSpec3;
        } else if (interaction instanceof HoverInteraction.Enter) {
            tweenSpec2 = ElevationKt.DefaultIncomingSpec;
            return tweenSpec2;
        } else if (interaction instanceof FocusInteraction.Focus) {
            tweenSpec = ElevationKt.DefaultIncomingSpec;
            return tweenSpec;
        } else {
            return null;
        }
    }

    @Nullable
    public final AnimationSpec<Dp> outgoingAnimationSpecForInteraction(@NotNull Interaction interaction) {
        TweenSpec tweenSpec;
        TweenSpec tweenSpec2;
        TweenSpec tweenSpec3;
        TweenSpec tweenSpec4;
        Intrinsics.checkNotNullParameter(interaction, "interaction");
        if (interaction instanceof PressInteraction.Press) {
            tweenSpec4 = ElevationKt.DefaultOutgoingSpec;
            return tweenSpec4;
        } else if (interaction instanceof DragInteraction.Start) {
            tweenSpec3 = ElevationKt.DefaultOutgoingSpec;
            return tweenSpec3;
        } else if (interaction instanceof HoverInteraction.Enter) {
            tweenSpec2 = ElevationKt.HoveredOutgoingSpec;
            return tweenSpec2;
        } else if (interaction instanceof FocusInteraction.Focus) {
            tweenSpec = ElevationKt.DefaultOutgoingSpec;
            return tweenSpec;
        } else {
            return null;
        }
    }
}

package androidx.compose.material.ripple;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ripple.kt */
@Metadata
/* loaded from: classes.dex */
public final class RippleKt {
    @NotNull
    private static final TweenSpec<Float> DefaultTweenSpec = new TweenSpec<>(15, 0, EasingKt.getLinearEasing(), 2, null);

    public static final AnimationSpec<Float> incomingStateLayerAnimationSpecFor(Interaction interaction) {
        if (interaction instanceof HoverInteraction.Enter) {
            return DefaultTweenSpec;
        }
        if (interaction instanceof FocusInteraction.Focus) {
            return new TweenSpec(45, 0, EasingKt.getLinearEasing(), 2, null);
        }
        if (interaction instanceof DragInteraction.Start) {
            return new TweenSpec(45, 0, EasingKt.getLinearEasing(), 2, null);
        }
        return DefaultTweenSpec;
    }

    public static final AnimationSpec<Float> outgoingStateLayerAnimationSpecFor(Interaction interaction) {
        if (interaction instanceof HoverInteraction.Enter) {
            return DefaultTweenSpec;
        }
        if (interaction instanceof FocusInteraction.Focus) {
            return DefaultTweenSpec;
        }
        if (interaction instanceof DragInteraction.Start) {
            return new TweenSpec(150, 0, EasingKt.getLinearEasing(), 2, null);
        }
        return DefaultTweenSpec;
    }

    @Composable
    @NotNull
    /* renamed from: rememberRipple-9IZ8Weo */
    public static final Indication m1289rememberRipple9IZ8Weo(boolean z10, float f10, long j10, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(1635163520);
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            f10 = Dp.Companion.m4069getUnspecifiedD9Ej5fM();
        }
        if ((i11 & 4) != 0) {
            j10 = Color.Companion.m1878getUnspecified0d7_KjU();
        }
        State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(j10), composer, (i10 >> 6) & 14);
        Boolean valueOf = Boolean.valueOf(z10);
        Dp m4047boximpl = Dp.m4047boximpl(f10);
        composer.startReplaceableGroup(-3686552);
        boolean changed = composer.changed(valueOf) | composer.changed(m4047boximpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new PlatformRipple(z10, f10, rememberUpdatedState, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        PlatformRipple platformRipple = (PlatformRipple) rememberedValue;
        composer.endReplaceableGroup();
        return platformRipple;
    }
}

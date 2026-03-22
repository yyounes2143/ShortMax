package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonRipple.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class CommonRipple extends Ripple {
    public /* synthetic */ CommonRipple(boolean z10, float f10, State state, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, state);
    }

    @Override // androidx.compose.material.ripple.Ripple
    @Composable
    @NotNull
    /* renamed from: rememberUpdatedRippleInstance-942rkJo  reason: not valid java name */
    public RippleIndicationInstance mo1280rememberUpdatedRippleInstance942rkJo(@NotNull InteractionSource interactionSource, boolean z10, float f10, @NotNull State<Color> color, @NotNull State<RippleAlpha> rippleAlpha, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(rippleAlpha, "rippleAlpha");
        composer.startReplaceableGroup(-1768051227);
        composer.startReplaceableGroup(-3686552);
        boolean changed = composer.changed(interactionSource) | composer.changed(this);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new CommonRippleIndicationInstance(z10, f10, color, rippleAlpha, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        CommonRippleIndicationInstance commonRippleIndicationInstance = (CommonRippleIndicationInstance) rememberedValue;
        composer.endReplaceableGroup();
        return commonRippleIndicationInstance;
    }

    private CommonRipple(boolean z10, float f10, State<Color> state) {
        super(z10, f10, state, null);
    }
}

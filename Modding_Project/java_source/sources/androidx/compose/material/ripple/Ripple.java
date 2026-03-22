package androidx.compose.material.ripple;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationInstance;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ripple.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public abstract class Ripple implements Indication {
    private final boolean bounded;
    @NotNull
    private final State<Color> color;
    private final float radius;

    public /* synthetic */ Ripple(boolean z10, float f10, State state, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, state);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ripple)) {
            return false;
        }
        Ripple ripple = (Ripple) obj;
        if (this.bounded == ripple.bounded && Dp.m4054equalsimpl0(this.radius, ripple.radius) && Intrinsics.areEqual(this.color, ripple.color)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.bounded) * 31) + Dp.m4055hashCodeimpl(this.radius)) * 31) + this.color.hashCode();
    }

    @Override // androidx.compose.foundation.Indication
    @Composable
    @NotNull
    public final IndicationInstance rememberUpdatedInstance(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        long mo1105defaultColorWaAFU9c;
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        composer.startReplaceableGroup(988743187);
        RippleTheme rippleTheme = (RippleTheme) composer.consume(RippleThemeKt.getLocalRippleTheme());
        composer.startReplaceableGroup(-1524341038);
        if (this.color.getValue().m1852unboximpl() != Color.Companion.m1878getUnspecified0d7_KjU()) {
            mo1105defaultColorWaAFU9c = this.color.getValue().m1852unboximpl();
        } else {
            mo1105defaultColorWaAFU9c = rippleTheme.mo1105defaultColorWaAFU9c(composer, 0);
        }
        composer.endReplaceableGroup();
        RippleIndicationInstance mo1280rememberUpdatedRippleInstance942rkJo = mo1280rememberUpdatedRippleInstance942rkJo(interactionSource, this.bounded, this.radius, SnapshotStateKt.rememberUpdatedState(Color.m1832boximpl(mo1105defaultColorWaAFU9c), composer, 0), SnapshotStateKt.rememberUpdatedState(rippleTheme.rippleAlpha(composer, 0), composer, 0), composer, (i10 & 14) | ((i10 << 12) & 458752));
        EffectsKt.LaunchedEffect(mo1280rememberUpdatedRippleInstance942rkJo, interactionSource, new Ripple$rememberUpdatedInstance$1(interactionSource, mo1280rememberUpdatedRippleInstance942rkJo, null), composer, ((i10 << 3) & 112) | 8);
        composer.endReplaceableGroup();
        return mo1280rememberUpdatedRippleInstance942rkJo;
    }

    @Composable
    @NotNull
    /* renamed from: rememberUpdatedRippleInstance-942rkJo */
    public abstract RippleIndicationInstance mo1280rememberUpdatedRippleInstance942rkJo(@NotNull InteractionSource interactionSource, boolean z10, float f10, @NotNull State<Color> state, @NotNull State<RippleAlpha> state2, @Nullable Composer composer, int i10);

    private Ripple(boolean z10, float f10, State<Color> state) {
        this.bounded = z10;
        this.radius = f10;
        this.color = state;
    }
}

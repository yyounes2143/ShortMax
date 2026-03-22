package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Elevation.kt */
@Metadata
/* loaded from: classes.dex */
public final class ElevationKt {
    @NotNull
    private static final TweenSpec<Dp> DefaultIncomingSpec = new TweenSpec<>(120, 0, EasingKt.getFastOutSlowInEasing(), 2, null);
    @NotNull
    private static final TweenSpec<Dp> DefaultOutgoingSpec = new TweenSpec<>(150, 0, new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f), 2, null);
    @NotNull
    private static final TweenSpec<Dp> HoveredOutgoingSpec = new TweenSpec<>(120, 0, new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f), 2, null);

    @Nullable
    /* renamed from: animateElevation-rAjV9yQ  reason: not valid java name */
    public static final Object m1068animateElevationrAjV9yQ(@NotNull Animatable<Dp, ?> animatable, float f10, @Nullable Interaction interaction, @Nullable Interaction interaction2, @NotNull c<? super Unit> cVar) {
        AnimationSpec<Dp> animationSpec;
        if (interaction2 != null) {
            animationSpec = ElevationDefaults.INSTANCE.incomingAnimationSpecForInteraction(interaction2);
        } else if (interaction != null) {
            animationSpec = ElevationDefaults.INSTANCE.outgoingAnimationSpecForInteraction(interaction);
        } else {
            animationSpec = null;
        }
        AnimationSpec<Dp> animationSpec2 = animationSpec;
        if (animationSpec2 != null) {
            Object animateTo$default = Animatable.animateTo$default(animatable, Dp.m4047boximpl(f10), animationSpec2, null, null, cVar, 12, null);
            if (animateTo$default == a.f()) {
                return animateTo$default;
            }
            return Unit.f60915a;
        }
        Object snapTo = animatable.snapTo(Dp.m4047boximpl(f10), cVar);
        if (snapTo == a.f()) {
            return snapTo;
        }
        return Unit.f60915a;
    }

    /* renamed from: animateElevation-rAjV9yQ$default  reason: not valid java name */
    public static /* synthetic */ Object m1069animateElevationrAjV9yQ$default(Animatable animatable, float f10, Interaction interaction, Interaction interaction2, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            interaction = null;
        }
        if ((i10 & 4) != 0) {
            interaction2 = null;
        }
        return m1068animateElevationrAjV9yQ(animatable, f10, interaction, interaction2, cVar);
    }
}

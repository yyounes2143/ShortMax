package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SplineBasedFloatDecayAnimationSpec.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SplineBasedFloatDecayAnimationSpec_androidKt {
    private static final float platformFlingScrollFriction = ViewConfiguration.getScrollFriction();

    public static final float getPlatformFlingScrollFriction() {
        return platformFlingScrollFriction;
    }

    @Composable
    @NotNull
    public static final <T> DecayAnimationSpec<T> rememberSplineBasedDecay(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(904445851);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Float valueOf = Float.valueOf(density.getDensity());
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(valueOf);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = DecayAnimationSpecKt.generateDecayAnimationSpec(new SplineBasedFloatDecayAnimationSpec(density));
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DecayAnimationSpec<T> decayAnimationSpec = (DecayAnimationSpec) rememberedValue;
        composer.endReplaceableGroup();
        return decayAnimationSpec;
    }

    @c
    public static final /* synthetic */ DecayAnimationSpec splineBasedDecay(Density density) {
        Intrinsics.checkNotNullParameter(density, "density");
        return SplineBasedDecayKt.splineBasedDecay(density);
    }
}

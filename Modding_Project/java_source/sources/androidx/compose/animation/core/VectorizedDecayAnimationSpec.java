package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedDecayAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface VectorizedDecayAnimationSpec<V extends AnimationVector> {
    float getAbsVelocityThreshold();

    long getDurationNanos(@NotNull V v10, @NotNull V v11);

    @NotNull
    V getTargetValue(@NotNull V v10, @NotNull V v11);

    @NotNull
    V getValueFromNanos(long j10, @NotNull V v10, @NotNull V v11);

    @NotNull
    V getVelocityFromNanos(long j10, @NotNull V v10, @NotNull V v11);
}

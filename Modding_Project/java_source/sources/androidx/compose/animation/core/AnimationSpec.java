package androidx.compose.animation.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface AnimationSpec<T> {
    @NotNull
    <V extends AnimationVector> VectorizedAnimationSpec<V> vectorize(@NotNull TwoWayConverter<T, V> twoWayConverter);
}

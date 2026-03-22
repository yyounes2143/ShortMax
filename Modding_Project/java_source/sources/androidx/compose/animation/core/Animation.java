package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Animation.kt */
@Metadata
/* loaded from: classes.dex */
public interface Animation<T, V extends AnimationVector> {

    /* compiled from: Animation.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static <T, V extends AnimationVector> boolean isFinishedFromNanos(@NotNull Animation<T, V> animation, long j10) {
            return Animation.super.isFinishedFromNanos(j10);
        }
    }

    long getDurationNanos();

    T getTargetValue();

    @NotNull
    TwoWayConverter<T, V> getTypeConverter();

    T getValueFromNanos(long j10);

    @NotNull
    V getVelocityVectorFromNanos(long j10);

    default boolean isFinishedFromNanos(long j10) {
        if (j10 >= getDurationNanos()) {
            return true;
        }
        return false;
    }

    boolean isInfinite();
}

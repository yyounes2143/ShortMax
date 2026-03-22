package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimationState.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AnimationScope<T, V extends AnimationVector> {
    public static final int $stable = 8;
    private long finishedTimeNanos;
    @NotNull
    private final MutableState isRunning$delegate;
    private long lastFrameTimeNanos;
    @NotNull
    private final Function0<Unit> onCancel;
    private final long startTimeNanos;
    private final T targetValue;
    @NotNull
    private final TwoWayConverter<T, V> typeConverter;
    @NotNull
    private final MutableState value$delegate;
    @NotNull
    private V velocityVector;

    public AnimationScope(T t10, @NotNull TwoWayConverter<T, V> typeConverter, @NotNull V initialVelocityVector, long j10, T t11, long j11, boolean z10, @NotNull Function0<Unit> onCancel) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(typeConverter, "typeConverter");
        Intrinsics.checkNotNullParameter(initialVelocityVector, "initialVelocityVector");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        this.typeConverter = typeConverter;
        this.targetValue = t11;
        this.startTimeNanos = j11;
        this.onCancel = onCancel;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(t10, null, 2, null);
        this.value$delegate = mutableStateOf$default;
        this.velocityVector = (V) AnimationVectorsKt.copy(initialVelocityVector);
        this.lastFrameTimeNanos = j10;
        this.finishedTimeNanos = Long.MIN_VALUE;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z10), null, 2, null);
        this.isRunning$delegate = mutableStateOf$default2;
    }

    public final void cancelAnimation() {
        setRunning$animation_core_release(false);
        this.onCancel.invoke();
    }

    public final long getFinishedTimeNanos() {
        return this.finishedTimeNanos;
    }

    public final long getLastFrameTimeNanos() {
        return this.lastFrameTimeNanos;
    }

    public final long getStartTimeNanos() {
        return this.startTimeNanos;
    }

    public final T getTargetValue() {
        return this.targetValue;
    }

    @NotNull
    public final TwoWayConverter<T, V> getTypeConverter() {
        return this.typeConverter;
    }

    public final T getValue() {
        return this.value$delegate.getValue();
    }

    public final T getVelocity() {
        return this.typeConverter.getConvertFromVector().invoke(this.velocityVector);
    }

    @NotNull
    public final V getVelocityVector() {
        return this.velocityVector;
    }

    public final boolean isRunning() {
        return ((Boolean) this.isRunning$delegate.getValue()).booleanValue();
    }

    public final void setFinishedTimeNanos$animation_core_release(long j10) {
        this.finishedTimeNanos = j10;
    }

    public final void setLastFrameTimeNanos$animation_core_release(long j10) {
        this.lastFrameTimeNanos = j10;
    }

    public final void setRunning$animation_core_release(boolean z10) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setValue$animation_core_release(T t10) {
        this.value$delegate.setValue(t10);
    }

    public final void setVelocityVector$animation_core_release(@NotNull V v10) {
        Intrinsics.checkNotNullParameter(v10, "<set-?>");
        this.velocityVector = v10;
    }

    @NotNull
    public final AnimationState<T, V> toAnimationState() {
        return new AnimationState<>(this.typeConverter, getValue(), this.velocityVector, this.lastFrameTimeNanos, this.finishedTimeNanos, isRunning());
    }
}

package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationSpec.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class SpringSpec<T> implements FiniteAnimationSpec<T> {
    private final float dampingRatio;
    private final float stiffness;
    @Nullable
    private final T visibilityThreshold;

    public SpringSpec() {
        this(0.0f, 0.0f, null, 7, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof SpringSpec)) {
            return false;
        }
        SpringSpec springSpec = (SpringSpec) obj;
        if (springSpec.dampingRatio != this.dampingRatio || springSpec.stiffness != this.stiffness || !Intrinsics.areEqual(springSpec.visibilityThreshold, this.visibilityThreshold)) {
            return false;
        }
        return true;
    }

    public final float getDampingRatio() {
        return this.dampingRatio;
    }

    public final float getStiffness() {
        return this.stiffness;
    }

    @Nullable
    public final T getVisibilityThreshold() {
        return this.visibilityThreshold;
    }

    public int hashCode() {
        int i10;
        T t10 = this.visibilityThreshold;
        if (t10 != null) {
            i10 = t10.hashCode();
        } else {
            i10 = 0;
        }
        return (((i10 * 31) + Float.hashCode(this.dampingRatio)) * 31) + Float.hashCode(this.stiffness);
    }

    public SpringSpec(float f10, float f11, @Nullable T t10) {
        this.dampingRatio = f10;
        this.stiffness = f11;
        this.visibilityThreshold = t10;
    }

    @Override // androidx.compose.animation.core.FiniteAnimationSpec, androidx.compose.animation.core.AnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedSpringSpec<V> vectorize(@NotNull TwoWayConverter<T, V> converter) {
        AnimationVector convert;
        Intrinsics.checkNotNullParameter(converter, "converter");
        float f10 = this.dampingRatio;
        float f11 = this.stiffness;
        convert = AnimationSpecKt.convert(converter, this.visibilityThreshold);
        return new VectorizedSpringSpec<>(f10, f11, convert);
    }

    public /* synthetic */ SpringSpec(float f10, float f11, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 1500.0f : f11, (i10 & 4) != 0 ? null : obj);
    }
}

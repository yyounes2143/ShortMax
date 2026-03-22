package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class FloatSpringSpec implements FloatAnimationSpec {
    public static final int $stable = 8;
    private final float dampingRatio;
    @NotNull
    private final SpringSimulation spring;
    private final float stiffness;
    private final float visibilityThreshold;

    public FloatSpringSpec() {
        this(0.0f, 0.0f, 0.0f, 7, null);
    }

    public final float getDampingRatio() {
        return this.dampingRatio;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public long getDurationNanos(float f10, float f11, float f12) {
        float stiffness = this.spring.getStiffness();
        float dampingRatio = this.spring.getDampingRatio();
        float f13 = f10 - f11;
        float f14 = this.visibilityThreshold;
        return SpringEstimationKt.estimateAnimationDurationMillis(stiffness, dampingRatio, f12 / f14, f13 / f14, 1.0f) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float getEndVelocity(float f10, float f11, float f12) {
        return 0.0f;
    }

    public final float getStiffness() {
        return this.stiffness;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float getValueFromNanos(long j10, float f10, float f11, float f12) {
        this.spring.setFinalPosition(f11);
        return Motion.m147getValueimpl(this.spring.m154updateValuesIJZedt4$animation_core_release(f10, f12, j10 / 1000000));
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float getVelocityFromNanos(long j10, float f10, float f11, float f12) {
        this.spring.setFinalPosition(f11);
        return Motion.m148getVelocityimpl(this.spring.m154updateValuesIJZedt4$animation_core_release(f10, f12, j10 / 1000000));
    }

    public FloatSpringSpec(float f10, float f11, float f12) {
        this.dampingRatio = f10;
        this.stiffness = f11;
        this.visibilityThreshold = f12;
        SpringSimulation springSimulation = new SpringSimulation(1.0f);
        springSimulation.setDampingRatio(f10);
        springSimulation.setStiffness(f11);
        this.spring = springSimulation;
    }

    public /* synthetic */ FloatSpringSpec(float f10, float f11, float f12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 1500.0f : f11, (i10 & 4) != 0 ? 0.01f : f12);
    }
}

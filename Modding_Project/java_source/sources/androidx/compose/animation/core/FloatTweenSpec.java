package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatAnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class FloatTweenSpec implements FloatAnimationSpec {
    public static final int $stable = 0;
    private final int delay;
    private final int duration;
    @NotNull
    private final Easing easing;

    public FloatTweenSpec() {
        this(0, 0, null, 7, null);
    }

    private final long clampPlayTime(long j10) {
        return e.p(j10 - this.delay, 0L, this.duration);
    }

    public final int getDelay() {
        return this.delay;
    }

    public final int getDuration() {
        return this.duration;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public long getDurationNanos(float f10, float f11, float f12) {
        return (this.delay + this.duration) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float getValueFromNanos(long j10, float f10, float f11, float f12) {
        float f13;
        long clampPlayTime = clampPlayTime(j10 / 1000000);
        int i10 = this.duration;
        if (i10 == 0) {
            f13 = 1.0f;
        } else {
            f13 = ((float) clampPlayTime) / i10;
        }
        return VectorConvertersKt.lerp(f10, f11, this.easing.transform(e.m(f13, 0.0f, 1.0f)));
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float getVelocityFromNanos(long j10, float f10, float f11, float f12) {
        long clampPlayTime = clampPlayTime(j10 / 1000000);
        int i10 = (clampPlayTime > 0L ? 1 : (clampPlayTime == 0L ? 0 : -1));
        if (i10 < 0) {
            return 0.0f;
        }
        if (i10 == 0) {
            return f12;
        }
        return (getValueFromNanos(clampPlayTime * 1000000, f10, f11, f12) - getValueFromNanos((clampPlayTime - 1) * 1000000, f10, f11, f12)) * 1000.0f;
    }

    public FloatTweenSpec(int i10, int i11, @NotNull Easing easing) {
        Intrinsics.checkNotNullParameter(easing, "easing");
        this.duration = i10;
        this.delay = i11;
        this.easing = easing;
    }

    public /* synthetic */ FloatTweenSpec(int i10, int i11, Easing easing, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? EasingKt.getFastOutSlowInEasing() : easing);
    }
}

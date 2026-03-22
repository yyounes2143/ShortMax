package androidx.compose.animation.core;

import kotlin.Metadata;
/* compiled from: FloatDecayAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public interface FloatDecayAnimationSpec {
    float getAbsVelocityThreshold();

    long getDurationNanos(float f10, float f11);

    float getTargetValue(float f10, float f11);

    float getValueFromNanos(long j10, float f10, float f11);

    float getVelocityFromNanos(long j10, float f10, float f11);
}

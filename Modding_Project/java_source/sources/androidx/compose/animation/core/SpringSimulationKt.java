package androidx.compose.animation.core;

import kotlin.Metadata;
/* compiled from: SpringSimulation.kt */
@Metadata
/* loaded from: classes.dex */
public final class SpringSimulationKt {
    private static final float UNSET = Float.MAX_VALUE;
    private static final double VelocityThresholdMultiplier = 62.5d;

    public static final long Motion(float f10, float f11) {
        return Motion.m142constructorimpl((Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32));
    }

    public static final float getUNSET() {
        return UNSET;
    }
}

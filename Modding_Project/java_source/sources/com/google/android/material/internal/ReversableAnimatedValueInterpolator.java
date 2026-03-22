package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class ReversableAnimatedValueInterpolator implements TimeInterpolator {
    private final TimeInterpolator sourceInterpolator;

    public ReversableAnimatedValueInterpolator(@NonNull TimeInterpolator timeInterpolator) {
        this.sourceInterpolator = timeInterpolator;
    }

    @NonNull
    public static TimeInterpolator of(boolean z10, @NonNull TimeInterpolator timeInterpolator) {
        if (z10) {
            return timeInterpolator;
        }
        return new ReversableAnimatedValueInterpolator(timeInterpolator);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        return 1.0f - this.sourceInterpolator.getInterpolation(f10);
    }
}

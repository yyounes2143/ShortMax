package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import com.facebook.fresco.animation.drawable.AnimatedDrawable2;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedDrawableValueAnimatorHelper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimatedDrawableValueAnimatorHelper {
    @NotNull
    public static final AnimatedDrawableValueAnimatorHelper INSTANCE = new AnimatedDrawableValueAnimatorHelper();

    private AnimatedDrawableValueAnimatorHelper() {
    }

    @Nullable
    public static final ValueAnimator.AnimatorUpdateListener createAnimatorUpdateListener(@Nullable Drawable drawable) {
        if (drawable instanceof AnimatedDrawable2) {
            return AnimatedDrawable2ValueAnimatorHelper.createAnimatorUpdateListener((AnimatedDrawable2) drawable);
        }
        return null;
    }

    @Nullable
    public static final ValueAnimator createValueAnimator(@Nullable Drawable drawable, int i10) {
        if (drawable instanceof AnimatedDrawable2) {
            return AnimatedDrawable2ValueAnimatorHelper.createValueAnimator((AnimatedDrawable2) drawable, i10);
        }
        return null;
    }

    @Nullable
    public static final ValueAnimator createValueAnimator(@Nullable Drawable drawable) {
        if (drawable instanceof AnimatedDrawable2) {
            AnimatedDrawable2 animatedDrawable2 = (AnimatedDrawable2) drawable;
            return AnimatedDrawable2ValueAnimatorHelper.createValueAnimator(drawable, animatedDrawable2.getLoopCount(), animatedDrawable2.getLoopDurationMs());
        }
        return null;
    }
}

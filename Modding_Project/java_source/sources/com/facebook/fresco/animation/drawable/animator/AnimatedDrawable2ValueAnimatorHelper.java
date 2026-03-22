package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import com.facebook.fresco.animation.drawable.AnimatedDrawable2;
import com.facebook.fresco.animation.drawable.animator.AnimatedDrawable2ValueAnimatorHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedDrawable2ValueAnimatorHelper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AnimatedDrawable2ValueAnimatorHelper {
    @NotNull
    public static final AnimatedDrawable2ValueAnimatorHelper INSTANCE = new AnimatedDrawable2ValueAnimatorHelper();

    private AnimatedDrawable2ValueAnimatorHelper() {
    }

    @NotNull
    public static final ValueAnimator.AnimatorUpdateListener createAnimatorUpdateListener(@NotNull final Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        return new ValueAnimator.AnimatorUpdateListener() { // from class: j3.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimatedDrawable2ValueAnimatorHelper.createAnimatorUpdateListener$lambda$0(drawable, valueAnimator);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createAnimatorUpdateListener$lambda$0(Drawable drawable, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(drawable, "$drawable");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        drawable.setLevel(((Integer) animatedValue).intValue());
    }

    @Nullable
    public static final ValueAnimator createValueAnimator(@NotNull AnimatedDrawable2 animatedDrawable, int i10) {
        Intrinsics.checkNotNullParameter(animatedDrawable, "animatedDrawable");
        ValueAnimator createValueAnimator = createValueAnimator(animatedDrawable, animatedDrawable.getLoopCount(), animatedDrawable.getLoopDurationMs());
        if (createValueAnimator == null) {
            return null;
        }
        createValueAnimator.setRepeatCount((int) Math.max(i10 / animatedDrawable.getLoopDurationMs(), 1L));
        return createValueAnimator;
    }

    @NotNull
    public static final ValueAnimator createValueAnimator(@NotNull Drawable animatedDrawable, int i10, long j10) {
        Intrinsics.checkNotNullParameter(animatedDrawable, "animatedDrawable");
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, (int) j10);
        valueAnimator.setDuration(j10);
        if (i10 == 0) {
            i10 = -1;
        }
        valueAnimator.setRepeatCount(i10);
        valueAnimator.setRepeatMode(1);
        valueAnimator.setInterpolator(null);
        valueAnimator.addUpdateListener(createAnimatorUpdateListener(animatedDrawable));
        return valueAnimator;
    }
}

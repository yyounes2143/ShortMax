package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ViewUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class MaterialMainContainerBackHelper extends MaterialBackAnimationHelper<View> {
    private static final float MIN_SCALE = 0.9f;
    @Nullable
    private Integer expandedCornerSize;
    @Nullable
    private Rect initialHideFromClipBounds;
    @Nullable
    private Rect initialHideToClipBounds;
    private float initialTouchY;
    private final float maxTranslationY;
    private final float minEdgeGap;

    public MaterialMainContainerBackHelper(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.minEdgeGap = resources.getDimension(R.dimen.m3_back_progress_main_container_min_edge_gap);
        this.maxTranslationY = resources.getDimension(R.dimen.m3_back_progress_main_container_max_translation_y);
    }

    @NonNull
    private ValueAnimator createCornerAnimator(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getCornerRadius(), getExpandedCornerSize());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.motion.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MaterialMainContainerBackHelper.lambda$createCornerAnimator$0(ClippableRoundedCornerLayout.this, valueAnimator);
            }
        });
        return ofFloat;
    }

    @NonNull
    private AnimatorSet createResetScaleAndTranslationAnimator(@Nullable final View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.view, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.view, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.view, View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.view, View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialMainContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                View view2 = view;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
            }
        });
        return animatorSet;
    }

    private int getMaxDeviceCornerRadius() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 31 || (rootWindowInsets = this.view.getRootWindowInsets()) == null) {
            return 0;
        }
        return Math.max(Math.max(getRoundedCornerRadius(rootWindowInsets, 0), getRoundedCornerRadius(rootWindowInsets, 1)), Math.max(getRoundedCornerRadius(rootWindowInsets, 3), getRoundedCornerRadius(rootWindowInsets, 2)));
    }

    @RequiresApi(31)
    private int getRoundedCornerRadius(WindowInsets windowInsets, int i10) {
        RoundedCorner roundedCorner;
        int radius;
        roundedCorner = windowInsets.getRoundedCorner(i10);
        if (roundedCorner != null) {
            radius = roundedCorner.getRadius();
            return radius;
        }
        return 0;
    }

    private boolean isAtTopOfScreen() {
        int[] iArr = new int[2];
        this.view.getLocationOnScreen(iArr);
        if (iArr[1] == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createCornerAnimator$0(ClippableRoundedCornerLayout clippableRoundedCornerLayout, ValueAnimator valueAnimator) {
        clippableRoundedCornerLayout.updateCornerRadius(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void resetInitialValues() {
        this.initialTouchY = 0.0f;
        this.initialHideToClipBounds = null;
        this.initialHideFromClipBounds = null;
    }

    public void cancelBackProgress(@Nullable View view) {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet createResetScaleAndTranslationAnimator = createResetScaleAndTranslationAnimator(view);
        V v10 = this.view;
        if (v10 instanceof ClippableRoundedCornerLayout) {
            createResetScaleAndTranslationAnimator.playTogether(createCornerAnimator((ClippableRoundedCornerLayout) v10));
        }
        createResetScaleAndTranslationAnimator.setDuration(this.cancelDuration);
        createResetScaleAndTranslationAnimator.start();
        resetInitialValues();
    }

    public void finishBackProgress(long j10, @Nullable View view) {
        AnimatorSet createResetScaleAndTranslationAnimator = createResetScaleAndTranslationAnimator(view);
        createResetScaleAndTranslationAnimator.setDuration(j10);
        createResetScaleAndTranslationAnimator.start();
        resetInitialValues();
    }

    public int getExpandedCornerSize() {
        int i10;
        if (this.expandedCornerSize == null) {
            if (isAtTopOfScreen()) {
                i10 = getMaxDeviceCornerRadius();
            } else {
                i10 = 0;
            }
            this.expandedCornerSize = Integer.valueOf(i10);
        }
        return this.expandedCornerSize.intValue();
    }

    @Nullable
    public Rect getInitialHideFromClipBounds() {
        return this.initialHideFromClipBounds;
    }

    @Nullable
    public Rect getInitialHideToClipBounds() {
        return this.initialHideToClipBounds;
    }

    public void startBackProgress(@NonNull BackEventCompat backEventCompat, @Nullable View view) {
        super.onStartBackProgress(backEventCompat);
        startBackProgress(backEventCompat.getTouchY(), view);
    }

    public void updateBackProgress(@NonNull BackEventCompat backEventCompat, @Nullable View view, float f10) {
        if (super.onUpdateBackProgress(backEventCompat) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        updateBackProgress(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, backEventCompat.getTouchY(), f10);
    }

    @VisibleForTesting
    public void startBackProgress(float f10, @Nullable View view) {
        this.initialHideToClipBounds = ViewUtils.calculateRectFromBounds(this.view);
        if (view != null) {
            this.initialHideFromClipBounds = ViewUtils.calculateOffsetRectFromBounds(this.view, view);
        }
        this.initialTouchY = f10;
    }

    @VisibleForTesting
    public void updateBackProgress(float f10, boolean z10, float f11, float f12) {
        float interpolateProgress = interpolateProgress(f10);
        float width = this.view.getWidth();
        float height = this.view.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float lerp = AnimationUtils.lerp(1.0f, (float) MIN_SCALE, interpolateProgress);
        float lerp2 = AnimationUtils.lerp(0.0f, Math.max(0.0f, ((width - (MIN_SCALE * width)) / 2.0f) - this.minEdgeGap), interpolateProgress) * (z10 ? 1 : -1);
        float min = Math.min(Math.max(0.0f, ((height - (lerp * height)) / 2.0f) - this.minEdgeGap), this.maxTranslationY);
        float f13 = f11 - this.initialTouchY;
        float lerp3 = AnimationUtils.lerp(0.0f, min, Math.abs(f13) / height) * Math.signum(f13);
        this.view.setScaleX(lerp);
        this.view.setScaleY(lerp);
        this.view.setTranslationX(lerp2);
        this.view.setTranslationY(lerp3);
        V v10 = this.view;
        if (v10 instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) v10).updateCornerRadius(AnimationUtils.lerp(getExpandedCornerSize(), f12, interpolateProgress));
        }
    }
}

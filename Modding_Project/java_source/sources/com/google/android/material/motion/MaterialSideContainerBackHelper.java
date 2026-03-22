package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public class MaterialSideContainerBackHelper extends MaterialBackAnimationHelper<View> {
    private final float maxScaleXDistanceGrow;
    private final float maxScaleXDistanceShrink;
    private final float maxScaleYDistance;

    public MaterialSideContainerBackHelper(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.maxScaleXDistanceShrink = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.maxScaleXDistanceGrow = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.maxScaleYDistance = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    private boolean checkAbsoluteGravity(@GravityInt int i10, @GravityInt int i11) {
        if ((GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this.view)) & i11) == i11) {
            return true;
        }
        return false;
    }

    private int getEdgeMargin(boolean z10) {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (z10) {
                return marginLayoutParams.leftMargin;
            }
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public void cancelBackProgress() {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.view, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.view, View.SCALE_Y, 1.0f));
        V v10 = this.view;
        if (v10 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v10;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.cancelDuration);
        animatorSet.start();
    }

    public void finishBackProgress(@NonNull BackEventCompat backEventCompat, @GravityInt final int i10, @Nullable Animator.AnimatorListener animatorListener, @Nullable ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        final boolean z10;
        if (backEventCompat.getSwipeEdge() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean checkAbsoluteGravity = checkAbsoluteGravity(i10, 3);
        float width = (this.view.getWidth() * this.view.getScaleX()) + getEdgeMargin(checkAbsoluteGravity);
        V v10 = this.view;
        Property property = View.TRANSLATION_X;
        if (checkAbsoluteGravity) {
            width = -width;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(v10, property, width);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.setInterpolator(new FastOutSlowInInterpolator());
        ofFloat.setDuration(AnimationUtils.lerp(this.hideDurationMax, this.hideDurationMin, backEventCompat.getProgress()));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialSideContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MaterialSideContainerBackHelper.this.view.setTranslationX(0.0f);
                MaterialSideContainerBackHelper.this.updateBackProgress(0.0f, z10, i10);
            }
        });
        if (animatorListener != null) {
            ofFloat.addListener(animatorListener);
        }
        ofFloat.start();
    }

    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        super.onStartBackProgress(backEventCompat);
    }

    public void updateBackProgress(@NonNull BackEventCompat backEventCompat, @GravityInt int i10) {
        if (super.onUpdateBackProgress(backEventCompat) == null) {
            return;
        }
        updateBackProgress(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, i10);
    }

    @VisibleForTesting
    public void updateBackProgress(float f10, boolean z10, @GravityInt int i10) {
        int i11;
        float interpolateProgress = interpolateProgress(f10);
        boolean checkAbsoluteGravity = checkAbsoluteGravity(i10, 3);
        boolean z11 = z10 == checkAbsoluteGravity;
        int width = this.view.getWidth();
        int height = this.view.getHeight();
        float f11 = width;
        if (f11 > 0.0f) {
            float f12 = height;
            if (f12 <= 0.0f) {
                return;
            }
            float f13 = this.maxScaleXDistanceShrink / f11;
            float f14 = this.maxScaleXDistanceGrow / f11;
            float f15 = this.maxScaleYDistance / f12;
            V v10 = this.view;
            if (checkAbsoluteGravity) {
                f11 = 0.0f;
            }
            v10.setPivotX(f11);
            if (!z11) {
                f14 = -f13;
            }
            float lerp = AnimationUtils.lerp(0.0f, f14, interpolateProgress);
            float f16 = lerp + 1.0f;
            this.view.setScaleX(f16);
            float lerp2 = 1.0f - AnimationUtils.lerp(0.0f, f15, interpolateProgress);
            this.view.setScaleY(lerp2);
            V v11 = this.view;
            if (v11 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) v11;
                for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                    View childAt = viewGroup.getChildAt(i12);
                    if (checkAbsoluteGravity) {
                        i11 = (width - childAt.getRight()) + childAt.getWidth();
                    } else {
                        i11 = -childAt.getLeft();
                    }
                    childAt.setPivotX(i11);
                    childAt.setPivotY(-childAt.getTop());
                    float f17 = z11 ? 1.0f - lerp : 1.0f;
                    float f18 = lerp2 != 0.0f ? (f16 / lerp2) * f17 : 1.0f;
                    childAt.setScaleX(f17);
                    childAt.setScaleY(f18);
                }
            }
        }
    }
}

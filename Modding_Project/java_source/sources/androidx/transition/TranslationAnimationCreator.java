package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
/* loaded from: classes2.dex */
class TranslationAnimationCreator {
    private TranslationAnimationCreator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Animator createAnimation(@NonNull View view, @NonNull TransitionValues transitionValues, int i10, int i11, float f10, float f11, float f12, float f13, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float f14;
        float f15;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            f14 = (iArr[0] - i10) + translationX;
            f15 = (iArr[1] - i11) + translationY;
        } else {
            f14 = f10;
            f15 = f11;
        }
        view.setTranslationX(f14);
        view.setTranslationY(f15);
        if (f14 == f12 && f15 == f13) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f14, f12), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f15, f13));
        TransitionPositionListener transitionPositionListener = new TransitionPositionListener(view, transitionValues.view, translationX, translationY);
        transition.addListener(transitionPositionListener);
        ofPropertyValuesHolder.addListener(transitionPositionListener);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }

    /* loaded from: classes2.dex */
    private static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {
        private boolean mIsTransitionCanceled;
        private final View mMovingView;
        private float mPausedX;
        private float mPausedY;
        private final float mTerminalX;
        private final float mTerminalY;
        private int[] mTransitionPosition;
        private final View mViewInHierarchy;

        TransitionPositionListener(View view, View view2, float f10, float f11) {
            this.mMovingView = view;
            this.mViewInHierarchy = view2;
            this.mTerminalX = f10;
            this.mTerminalY = f11;
            int[] iArr = (int[]) view2.getTag(R.id.transition_position);
            this.mTransitionPosition = iArr;
            if (iArr != null) {
                view2.setTag(R.id.transition_position, null);
            }
        }

        private void setInterruptedPosition() {
            if (this.mTransitionPosition == null) {
                this.mTransitionPosition = new int[2];
            }
            this.mMovingView.getLocationOnScreen(this.mTransitionPosition);
            this.mViewInHierarchy.setTag(R.id.transition_position, this.mTransitionPosition);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mIsTransitionCanceled = true;
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator, boolean z10) {
            if (z10) {
                return;
            }
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            this.mIsTransitionCanceled = true;
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition, boolean z10) {
            if (this.mIsTransitionCanceled) {
                return;
            }
            this.mViewInHierarchy.setTag(R.id.transition_position, null);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
            setInterruptedPosition();
            this.mPausedX = this.mMovingView.getTranslationX();
            this.mPausedY = this.mMovingView.getTranslationY();
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
            this.mMovingView.setTranslationX(this.mPausedX);
            this.mMovingView.setTranslationY(this.mPausedY);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@NonNull Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            onTransitionEnd(transition, false);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }
    }
}

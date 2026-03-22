package com.bytedance.adsdk.ZYk.ba;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes3.dex */
public abstract class oJ extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> oJ = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> ZYk = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorPauseListener> tB = new CopyOnWriteArraySet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Pfn() {
        for (Animator.AnimatorPauseListener animatorPauseListener : this.tB) {
            animatorPauseListener.onAnimationResume(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.ZYk) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z10);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.ZYk.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.tB.add(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.oJ.add(animatorUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ex() {
        for (Animator.AnimatorPauseListener animatorPauseListener : this.tB) {
            animatorPauseListener.onAnimationPause(this);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.ZYk) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z10);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.ZYk.clear();
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.oJ.clear();
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.ZYk.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.tB.remove(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.oJ.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tB() {
        for (ValueAnimator.AnimatorUpdateListener animatorUpdateListener : this.oJ) {
            animatorUpdateListener.onAnimationUpdate(this);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ZYk() {
        for (Animator.AnimatorListener animatorListener : this.ZYk) {
            animatorListener.onAnimationCancel(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ() {
        for (Animator.AnimatorListener animatorListener : this.ZYk) {
            animatorListener.onAnimationRepeat(this);
        }
    }
}

package d1;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: BaseLottieAnimator.java */
/* loaded from: classes2.dex */
public abstract class c extends ValueAnimator {

    /* renamed from: a  reason: collision with root package name */
    private final Set<ValueAnimator.AnimatorUpdateListener> f49764a = new CopyOnWriteArraySet();

    /* renamed from: b  reason: collision with root package name */
    private final Set<Animator.AnimatorListener> f49765b = new CopyOnWriteArraySet();

    /* renamed from: c  reason: collision with root package name */
    private final Set<Animator.AnimatorPauseListener> f49766c = new CopyOnWriteArraySet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        for (Animator.AnimatorListener animatorListener : this.f49765b) {
            animatorListener.onAnimationCancel(this);
        }
    }

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.f49765b.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f49766c.add(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f49764a.add(animatorUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.f49765b) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z10);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        for (Animator.AnimatorPauseListener animatorPauseListener : this.f49766c) {
            animatorPauseListener.onAnimationPause(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        for (Animator.AnimatorListener animatorListener : this.f49765b) {
            animatorListener.onAnimationRepeat(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        for (Animator.AnimatorPauseListener animatorPauseListener : this.f49766c) {
            animatorPauseListener.onAnimationResume(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.f49765b) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z10);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        for (ValueAnimator.AnimatorUpdateListener animatorUpdateListener : this.f49764a) {
            animatorUpdateListener.onAnimationUpdate(this);
        }
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.f49765b.clear();
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.f49764a.clear();
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.f49765b.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f49766c.remove(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f49764a.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }
}

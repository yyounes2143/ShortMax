package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public abstract class ex implements XAo {
    com.bytedance.sdk.component.adexpress.dynamic.ex.oJ ZYk;
    private Set<ScheduledFuture<?>> ex = new HashSet();
    public List<ObjectAnimator> oJ = oJ();
    public View tB;

    /* loaded from: classes3.dex */
    public class oJ implements Runnable {
        ScheduledFuture<?> ZYk;
        ObjectAnimator oJ;

        oJ(ObjectAnimator objectAnimator) {
            this.oJ = objectAnimator;
        }

        public void oJ(ScheduledFuture<?> scheduledFuture) {
            this.ZYk = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() != null) {
                com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().tB().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex.oJ.1
                    @Override // java.lang.Runnable
                    public void run() {
                        oJ.this.oJ.resume();
                    }
                });
                if (this.ZYk != null) {
                    ex.this.ex.remove(this.ZYk);
                }
            }
        }
    }

    public ex(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        this.tB = view;
        this.ZYk = oJVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.XAo
    public void ZYk() {
        List<ObjectAnimator> list = this.oJ;
        if (list == null) {
            return;
        }
        for (ObjectAnimator objectAnimator : list) {
            objectAnimator.cancel();
            objectAnimator.removeAllUpdateListeners();
        }
        for (ScheduledFuture<?> scheduledFuture : this.ex) {
            scheduledFuture.cancel(true);
        }
    }

    abstract List<ObjectAnimator> oJ();

    public void tB() {
        List<ObjectAnimator> list = this.oJ;
        if (list == null) {
            return;
        }
        for (final ObjectAnimator objectAnimator : list) {
            objectAnimator.start();
            if (this.ZYk.si() > 0.0d) {
                objectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                        objectAnimator.pause();
                        oJ oJVar = new oJ(objectAnimator);
                        ScheduledFuture<?> oJ2 = com.bytedance.sdk.component.adexpress.ex.ex.oJ(oJVar, (long) (ex.this.ZYk.si() * 1000.0d), TimeUnit.MILLISECONDS);
                        oJVar.oJ(oJ2);
                        ex.this.ex.add(oJ2);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ObjectAnimator oJ(final ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay((long) (this.ZYk.WcQ() * 1000.0d));
        if (this.ZYk.awB() > 0) {
            objectAnimator.setRepeatCount(this.ZYk.awB() - 1);
        } else {
            objectAnimator.setRepeatCount(-1);
        }
        if (!Constants.NORMAL.equals(this.ZYk.eZI())) {
            if (!"alternate".equals(this.ZYk.eZI()) && !"alternate-reverse".equals(this.ZYk.eZI())) {
                objectAnimator.setRepeatMode(1);
            } else {
                objectAnimator.setRepeatMode(2);
            }
        }
        if ("ease-in-out".equals(this.ZYk.PiB())) {
            objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if ("ease-in".equals(this.ZYk.eZI())) {
            objectAnimator.setInterpolator(new AccelerateInterpolator());
        } else if ("ease-out".equals(this.ZYk.eZI())) {
            objectAnimator.setInterpolator(new DecelerateInterpolator());
        } else {
            objectAnimator.setInterpolator(new LinearInterpolator());
        }
        objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getCurrentPlayTime() > 0) {
                    ex.this.tB.setVisibility(0);
                    if (ex.this.tB.getParent() instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba) {
                        ((View) ex.this.tB.getParent()).setVisibility(0);
                    }
                    objectAnimator.removeAllUpdateListeners();
                }
            }
        });
        return objectAnimator;
    }
}

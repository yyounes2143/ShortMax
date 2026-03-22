package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class awB {
    private final oJ Pfn;
    private final cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.widget.cFZ f13004ba;
    private AnimatorSet cFZ;
    private final int ex;
    com.bytedance.sdk.openadsdk.core.widget.so oJ;
    private final Context tB;

    public awB(oJ oJVar) {
        this.tB = oJVar.Rl;
        this.ZYk = oJVar.ZYk;
        this.ex = oJVar.oTd;
        this.Pfn = oJVar;
    }

    public void ZYk() {
        ValueAnimator ofInt = ValueAnimator.ofInt(1, 80);
        ofInt.setDuration(2000L);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.awB.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                com.bytedance.sdk.openadsdk.core.widget.so soVar = awB.this.oJ;
                if (soVar != null) {
                    soVar.setProgress(intValue);
                }
            }
        });
        ValueAnimator ofInt2 = ValueAnimator.ofInt(81, 99);
        ofInt2.setDuration(3000L);
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.awB.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                com.bytedance.sdk.openadsdk.core.widget.so soVar = awB.this.oJ;
                if (soVar != null) {
                    soVar.setProgress(intValue);
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.cFZ = animatorSet;
        animatorSet.play(ofInt).before(ofInt2);
        this.cFZ.start();
    }

    public View ex() {
        return this.f13004ba;
    }

    public void oJ() {
        try {
            if (Ln.tB(this.ZYk)) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.widget.cFZ cfz = new com.bytedance.sdk.openadsdk.core.widget.cFZ(this.tB);
            this.f13004ba = cfz;
            this.oJ = cfz.getLoadingProgressBar();
            com.bytedance.sdk.openadsdk.core.Pfn.so downloadButton = this.f13004ba.getDownloadButton();
            if (downloadButton != null) {
                downloadButton.setOnClickListener(this.Pfn.IUZ.Pfn());
            }
            this.f13004ba.oJ(this.ZYk, this.ex);
        } catch (Throwable unused) {
        }
    }

    public void tB() {
        AnimatorSet animatorSet = this.cFZ;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }
}

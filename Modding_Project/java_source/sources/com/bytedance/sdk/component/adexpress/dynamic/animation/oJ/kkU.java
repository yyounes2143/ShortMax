package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class kkU extends ex {
    private float Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private float f12672ba;
    private oJ ex;

    /* loaded from: classes3.dex */
    private class oJ {
        private View ZYk;

        public oJ(View view) {
            this.ZYk = view;
        }

        public void oJ(int i10) {
            if ("top".equals(kkU.this.ZYk.oJ())) {
                if (kkU.this.tB instanceof ViewGroup) {
                    for (int i11 = 0; i11 < ((ViewGroup) kkU.this.tB).getChildCount(); i11++) {
                        ((ViewGroup) kkU.this.tB).getChildAt(i11).setTranslationY(i10 - kkU.this.Pfn);
                    }
                }
                kkU kku = kkU.this;
                kku.tB.setTranslationY(kku.Pfn - i10);
                return;
            }
            ViewGroup.LayoutParams layoutParams = this.ZYk.getLayoutParams();
            layoutParams.height = i10;
            this.ZYk.setLayoutParams(layoutParams);
            this.ZYk.requestLayout();
        }
    }

    public kkU(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        int i10;
        String str;
        View view = this.tB;
        if ((view instanceof ImageView) && (view.getParent() instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn)) {
            this.tB = (View) this.tB.getParent();
        }
        this.tB.setAlpha(0.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "alpha", 0.0f, 1.0f).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        this.ex = new oJ(this.tB);
        final int i11 = this.tB.getLayoutParams().height;
        this.Pfn = i11;
        this.f12672ba = this.tB.getLayoutParams().width;
        if (TtmlNode.LEFT.equals(this.ZYk.oJ()) || TtmlNode.RIGHT.equals(this.ZYk.oJ())) {
            i10 = (int) this.f12672ba;
            str = "width";
        } else {
            str = "height";
            i10 = i11;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.ex, str, 0, i10).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(oJ(duration));
        arrayList.add(oJ(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.kkU.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z10) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                kkU.this.ex.oJ(i11);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator, boolean z10) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        return arrayList;
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.animation.oJ;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn extends ex {
    public Pfn(View view, com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar) {
        super(view, oJVar);
    }

    private void ZYk(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.ZYk.QSm())).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.Pfn.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Pfn.this.tB.setTranslationY(0.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(oJ(duration));
    }

    private void ex(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.ZYk.QSm())).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        list.add(oJ(duration));
    }

    private void tB(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.ZYk.QSm())).setDuration((int) (this.ZYk.kkU() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.Pfn.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Pfn.this.tB.setTranslationY(0.0f);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        list.add(oJ(duration));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ex
    List<ObjectAnimator> oJ() {
        char c10;
        ArrayList arrayList = new ArrayList();
        String oq2 = this.ZYk.oq();
        switch (oq2.hashCode()) {
            case 3029889:
                if (oq2.equals("both")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 3387192:
                if (oq2.equals(DevicePublicKeyStringDef.NONE)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 483313230:
                if (oq2.equals("forwards")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 1356771568:
                if (oq2.equals("backwards")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0) {
            oJ(arrayList);
        } else if (c10 == 1) {
            ex(arrayList);
        } else if (c10 != 2) {
            tB(arrayList);
        } else {
            ZYk(arrayList);
        }
        return arrayList;
    }

    private void oJ(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.tB, "translationY", 0.0f, -com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.ZYk.QSm())).setDuration(((int) (this.ZYk.kkU() * 1000.0d)) / 2);
        duration.setInterpolator(new LinearInterpolator());
        duration.setRepeatMode(2);
        com.bytedance.sdk.component.adexpress.dynamic.ex.oJ oJVar = this.ZYk;
        oJVar.ba(oJVar.awB() * 2);
        list.add(oJ(duration));
    }
}

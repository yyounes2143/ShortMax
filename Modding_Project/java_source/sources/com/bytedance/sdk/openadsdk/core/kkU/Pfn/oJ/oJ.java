package com.bytedance.sdk.openadsdk.core.kkU.Pfn.oJ;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.adsdk.ugeno.ex.ZYk.oJ {
    public oJ(tB tBVar, String str, ba.oJ oJVar) {
        super(tBVar, str, oJVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void oJ() {
        tB tBVar;
        tB ZYk;
        Map<String, String> map = this.f11669ba;
        if (map != null && !map.isEmpty()) {
            String str = this.f11669ba.get("id");
            if (TextUtils.isEmpty(str) || (ZYk = (tBVar = this.tB).ZYk(tBVar)) == null) {
                return;
            }
            tB ex = ZYk.ex(str);
            if (ex instanceof com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ) {
                com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ oJVar = (com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ) ex;
                oJVar.ex();
                oJVar.oJ(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.kkU.Pfn.oJ.oJ.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        oJ.this.tB();
                    }
                });
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ZYk.oJ
    public void ZYk() {
    }
}

package com.bytedance.sdk.openadsdk.core.kkU.Pfn.ZYk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.adsdk.ugeno.ex.ex.tB {
    private String dLZ;

    public oJ(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar;
        com.bytedance.adsdk.ugeno.ZYk.tB ZYk;
        Map<String, String> map = this.Pfn;
        if (map != null && map.size() > 0) {
            String str = this.Pfn.get("id");
            this.dLZ = this.Pfn.get("state");
            if (TextUtils.isEmpty(str) || (ZYk = (tBVar = this.ZYk).ZYk(tBVar)) == null) {
                return false;
            }
            com.bytedance.adsdk.ugeno.ZYk.tB ex = ZYk.ex(str);
            if (ex instanceof com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ) {
                ((com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ) ex).oJ(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.core.kkU.Pfn.ZYk.oJ.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        if (TextUtils.equals(oJ.this.dLZ, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE) && ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).oJ != null) {
                            ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).oJ.oJ(((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).ZYk, ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).f11673ba, ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).tB.ZYk());
                        }
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        if (TextUtils.equals(oJ.this.dLZ, "start") && ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).oJ != null) {
                            ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).oJ.oJ(((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).ZYk, ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).f11673ba, ((com.bytedance.adsdk.ugeno.ex.ex.tB) oJ.this).tB.ZYk());
                        }
                    }
                });
            }
        }
        return false;
    }
}

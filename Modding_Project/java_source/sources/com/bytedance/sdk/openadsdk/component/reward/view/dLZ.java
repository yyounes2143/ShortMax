package com.bytedance.sdk.openadsdk.component.reward.view;

import android.graphics.Color;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
/* loaded from: classes3.dex */
public class dLZ extends BTZ {
    public dLZ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.view.BTZ
    protected boolean oJ() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.view.BTZ
    public void oJ(int i10, int i11) {
        super.oJ(i10, i11);
        if (cY.Pfn(this.ex) && this.ex.bD() == 3 && this.ex.EP() == 0) {
            try {
                FrameLayout frameLayout = (FrameLayout) this.tB.f13027wd.findViewById(eZI.kkU);
                frameLayout.setBackgroundColor(Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR));
                if (this.ex.Tt() == 1) {
                    int ZYk = cdg.ZYk(si.oJ(), 90.0f);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                    layoutParams.bottomMargin = ZYk;
                    frameLayout.setLayoutParams(layoutParams);
                }
            } catch (Throwable unused) {
            }
        }
    }
}

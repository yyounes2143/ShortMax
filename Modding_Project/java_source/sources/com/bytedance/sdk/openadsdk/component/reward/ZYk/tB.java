package com.bytedance.sdk.openadsdk.component.reward.ZYk;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class tB extends ZYk {
    public tB(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        super(oJVar);
    }

    private void ZYk(com.bytedance.sdk.openadsdk.component.reward.view.jFA jfa) {
        if (jfa == null) {
            return;
        }
        Context context = jfa.getContext();
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(1);
        jfa.addView(pfn, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar.setId(eZI.UN);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 100.0f;
        pfn.addView(tBVar, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar2.setId(eZI.kkU);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        tBVar.addView(tBVar2, layoutParams2);
        tBVar2.addView(ZYk.oJ(context));
        if (this.ZYk.Dc() != 3 && this.ZYk.Dc() != 5) {
            com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
            exVar.setId(eZI.Yk);
            exVar.setVisibility(8);
            exVar.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(cdg.ZYk(context, 28.0f), cdg.ZYk(context, 28.0f));
            layoutParams3.gravity = 8388693;
            layoutParams3.rightMargin = cdg.ZYk(context, 20.0f);
            layoutParams3.bottomMargin = cdg.ZYk(context, 10.0f);
            tBVar.addView(exVar, layoutParams3);
        }
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar3.setId(eZI.QSm);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 0.0f;
        pfn.addView(tBVar3, layoutParams4);
        tBVar3.addView(ex.oJ(context, this.oJ.ZYk));
        com.bytedance.sdk.openadsdk.component.reward.view.ba.oJ(tBVar3, this.ZYk);
        com.bytedance.sdk.openadsdk.component.reward.view.ba.oJ(tBVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean Pfn() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public boolean ba() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(FrameLayout frameLayout) {
    }

    public static boolean oJ(cY cYVar) {
        QSm.tB(cYVar);
        return QSm.tB(cYVar);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void oJ(com.bytedance.sdk.openadsdk.component.reward.view.jFA jfa) {
        ZYk(jfa);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk
    public void cFZ() {
    }
}

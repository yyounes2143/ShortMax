package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class ex extends kkU {
    public ex(Context context) {
        this(context, null);
    }

    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    protected void oJ(Context context) {
        int ZYk = cdg.ZYk(context, 10.0f);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        pfn.setLayoutParams(layoutParams);
        layoutParams.gravity = 17;
        pfn.setOrientation(1);
        pfn.setPadding(ZYk, ZYk, ZYk, ZYk);
        addView(pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 3.0f;
        tBVar.setLayoutParams(layoutParams2);
        pfn.addView(tBVar);
        com.bytedance.sdk.openadsdk.core.Pfn.tB Pfn = Pfn(context);
        this.oJ = Pfn;
        Pfn.setId(eZI.hwh);
        this.oJ.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        tBVar.addView(this.oJ);
        com.bytedance.sdk.openadsdk.core.Pfn.ex ba2 = ba(context);
        this.ZYk = ba2;
        ba2.setId(eZI.JJ);
        this.ZYk.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        tBVar.addView(this.ZYk);
        PAGLogoView so2 = so(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 80;
        layoutParams3.leftMargin = ZYk;
        layoutParams3.topMargin = ZYk;
        layoutParams3.bottomMargin = ZYk;
        so2.setLayoutParams(layoutParams3);
        tBVar.addView(so2);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        cfz.setLayoutParams(layoutParams4);
        pfn.addView(cfz);
        si cFZ = cFZ(context);
        this.tB = cFZ;
        int i10 = eZI.yQF;
        cFZ.setId(i10);
        int ZYk2 = cdg.ZYk(context, 40.0f);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(ZYk2, ZYk2);
        layoutParams5.addRule(15);
        this.tB.setLayoutParams(layoutParams5);
        cfz.addView(this.tB);
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk3 = ZYk(context);
        this.ex = ZYk3;
        ZYk3.setId(eZI.YF);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(15);
        layoutParams6.leftMargin = ZYk;
        layoutParams6.setMarginStart(ZYk);
        layoutParams6.addRule(1, i10);
        layoutParams6.addRule(17, i10);
        this.ex.setLayoutParams(layoutParams6);
        cfz.addView(this.ex);
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = ex(context);
        this.f12856ba = ex;
        ex.setId(eZI.eXp);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 100.0f), cdg.ZYk(context, 32.0f));
        layoutParams7.addRule(11);
        layoutParams7.addRule(21);
        layoutParams7.addRule(15);
        this.f12856ba.setLayoutParams(layoutParams7);
        cfz.addView(this.f12856ba);
    }

    public ex(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ex(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

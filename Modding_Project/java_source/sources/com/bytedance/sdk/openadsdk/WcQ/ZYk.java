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
public class ZYk extends kkU {
    public ZYk(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk = super.ZYk(context);
        ZYk.setTextColor(-1);
        ZYk.setTextSize(2, 13.0f);
        ZYk.setText("Pangle");
        return ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    protected void oJ(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        pfn.setOrientation(1);
        addView(pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 2.0f;
        tBVar.setLayoutParams(layoutParams);
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
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 80;
        int ZYk = cdg.ZYk(context, 10.0f);
        layoutParams2.leftMargin = ZYk;
        layoutParams2.topMargin = ZYk;
        layoutParams2.bottomMargin = ZYk;
        so2.setLayoutParams(layoutParams2);
        tBVar.addView(so2);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 1.0f;
        pfn2.setLayoutParams(layoutParams3);
        pfn2.setOrientation(1);
        pfn2.setGravity(81);
        int ZYk2 = cdg.ZYk(context, 16.0f);
        pfn2.setPadding(ZYk2, ZYk2, ZYk2, ZYk2);
        pfn.addView(pfn2);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setId(eZI.PdF);
        cfz.setLayoutParams(new LinearLayout.LayoutParams(-2, cdg.ZYk(context, 40.0f)));
        cfz.setGravity(17);
        pfn2.addView(cfz);
        si cFZ = cFZ(context);
        this.tB = cFZ;
        cFZ.setId(eZI.yQF);
        int ZYk3 = cdg.ZYk(context, 35.0f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(ZYk3, ZYk3);
        layoutParams4.addRule(20);
        layoutParams4.addRule(9);
        layoutParams4.addRule(15);
        this.tB.setLayoutParams(layoutParams4);
        cfz.addView(this.tB);
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk4 = ZYk(context);
        this.ex = ZYk4;
        ZYk4.setId(eZI.YF);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, ZYk * 2);
        int ZYk5 = cdg.ZYk(context, 6.0f);
        layoutParams5.leftMargin = ZYk5;
        layoutParams5.setMarginStart(ZYk5);
        layoutParams5.addRule(1, this.tB.getId());
        layoutParams5.addRule(17, this.tB.getId());
        this.ex.setLayoutParams(layoutParams5);
        cfz.addView(this.ex);
        com.bytedance.sdk.openadsdk.core.Pfn.so tB = tB(context);
        this.Pfn = tB;
        tB.setId(eZI.BWx);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, cdg.ZYk(context, 20.0f));
        layoutParams6.addRule(3, this.ex.getId());
        layoutParams6.addRule(8, this.tB.getId());
        layoutParams6.addRule(17, this.tB.getId());
        layoutParams6.addRule(1, this.tB.getId());
        layoutParams6.leftMargin = ZYk5;
        layoutParams6.setMarginStart(ZYk5);
        this.Pfn.setLayoutParams(layoutParams6);
        cfz.addView(this.Pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = ex(context);
        this.f12856ba = ex;
        ex.setId(eZI.eXp);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 22.0f));
        layoutParams7.topMargin = ZYk2;
        this.f12856ba.setLayoutParams(layoutParams7);
        pfn2.addView(this.f12856ba);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so tB(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so tB = super.tB(context);
        tB.setTextColor(-1);
        return tB;
    }

    public ZYk(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZYk(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

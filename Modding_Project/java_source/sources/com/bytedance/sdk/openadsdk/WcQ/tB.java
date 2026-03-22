package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class tB extends kkU {
    public tB(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk = super.ZYk(context);
        ZYk.setTextColor(-1);
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
        layoutParams.weight = 337.0f;
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
        layoutParams3.weight = 263.0f;
        pfn2.setLayoutParams(layoutParams3);
        pfn2.setOrientation(1);
        pfn2.setGravity(81);
        int ZYk2 = cdg.ZYk(context, 16.0f);
        pfn2.setPadding(ZYk2, ZYk2, ZYk2, ZYk2);
        pfn.addView(pfn2);
        si cFZ = cFZ(context);
        this.tB = cFZ;
        cFZ.setId(eZI.yQF);
        int ZYk3 = cdg.ZYk(context, 45.0f);
        this.tB.setLayoutParams(new LinearLayout.LayoutParams(ZYk3, ZYk3));
        pfn2.addView(this.tB);
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk4 = ZYk(context);
        this.ex = ZYk4;
        ZYk4.setId(eZI.YF);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = cdg.ZYk(context, 4.0f);
        this.ex.setLayoutParams(layoutParams4);
        pfn2.addView(this.ex);
        com.bytedance.sdk.openadsdk.core.Pfn.so tB = tB(context);
        this.Pfn = tB;
        tB.setId(eZI.BWx);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.topMargin = ZYk;
        layoutParams5.bottomMargin = cdg.ZYk(context, 25.0f);
        this.Pfn.setLayoutParams(layoutParams5);
        pfn2.addView(this.Pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = ex(context);
        this.f12856ba = ex;
        ex.setId(eZI.eXp);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 32.0f));
        layoutParams6.topMargin = ZYk2;
        this.f12856ba.setLayoutParams(layoutParams6);
        pfn2.addView(this.f12856ba);
    }

    public tB(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public tB(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

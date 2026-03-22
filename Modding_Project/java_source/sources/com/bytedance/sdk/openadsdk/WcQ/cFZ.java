package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class cFZ extends kkU {
    public cFZ(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk = super.ZYk(context);
        ZYk.setGravity(16);
        ZYk.setMaxWidth(cdg.ZYk(context, 150.0f));
        ZYk.setTextColor(Color.parseColor("#B7B7B7"));
        ZYk.setTextSize(2, 15.0f);
        ZYk.setText("APP NAME");
        return ZYk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so ex(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = super.ex(context);
        ex.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_download_corner_bg"));
        ex.setTextSize(2, 14.0f);
        return ex;
    }

    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    protected void oJ(Context context) {
        int ZYk = cdg.ZYk(context, 10.0f);
        int ZYk2 = cdg.ZYk(context, 5.0f);
        int ZYk3 = cdg.ZYk(context, 16.0f);
        int ZYk4 = cdg.ZYk(context, 15.0f);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        cfz.setLayoutParams(layoutParams);
        addView(cfz);
        com.bytedance.sdk.openadsdk.core.Pfn.tB Pfn = Pfn(context);
        this.oJ = Pfn;
        Pfn.setId(eZI.hwh);
        this.oJ.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        cfz.addView(this.oJ);
        com.bytedance.sdk.openadsdk.core.Pfn.ex ba2 = ba(context);
        this.ZYk = ba2;
        ba2.setId(eZI.JJ);
        this.ZYk.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        cfz.addView(this.ZYk);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz2 = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        int i10 = eZI.Wek;
        cfz2.setId(i10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(context, 60.0f));
        layoutParams2.addRule(12);
        cfz2.setBackgroundColor(Color.parseColor("#26000000"));
        cfz2.setLayoutParams(layoutParams2);
        cfz.addView(cfz2);
        si cFZ = cFZ(context);
        this.tB = cFZ;
        int i11 = eZI.yQF;
        cFZ.setId(i11);
        int ZYk5 = cdg.ZYk(context, 50.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ZYk5, ZYk5);
        layoutParams3.addRule(20);
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        layoutParams3.leftMargin = ZYk4;
        layoutParams3.setMarginStart(ZYk4);
        this.tB.setLayoutParams(layoutParams3);
        cfz2.addView(this.tB);
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk6 = ZYk(context);
        this.ex = ZYk6;
        ZYk6.setId(eZI.YF);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.leftMargin = ZYk2;
        layoutParams4.setMarginStart(ZYk2);
        layoutParams4.addRule(1, i11);
        layoutParams4.addRule(17, i11);
        this.ex.setLayoutParams(layoutParams4);
        cfz2.addView(this.ex);
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = ex(context);
        this.f12856ba = ex;
        ex.setId(eZI.eXp);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 70.0f), cdg.ZYk(context, 36.0f));
        layoutParams5.addRule(21);
        layoutParams5.addRule(11);
        layoutParams5.addRule(15);
        layoutParams5.rightMargin = ZYk4;
        layoutParams5.setMarginEnd(ZYk4);
        this.f12856ba.setLayoutParams(layoutParams5);
        cfz2.addView(this.f12856ba);
        View so2 = so(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(2, i10);
        layoutParams6.leftMargin = ZYk3;
        layoutParams6.bottomMargin = ZYk;
        so2.setLayoutParams(layoutParams6);
        cfz.addView(so2);
    }

    public cFZ(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public cFZ(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

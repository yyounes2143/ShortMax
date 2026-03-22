package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class ba extends kkU {
    public ba(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so ZYk(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk = super.ZYk(context);
        ZYk.setGravity(16);
        ZYk.setMaxWidth(cdg.ZYk(context, 53.0f));
        ZYk.setTextColor(-1);
        ZYk.setTextSize(2, 10.0f);
        return ZYk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so ex(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = super.ex(context);
        ex.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_download_corner_bg"));
        ex.setTextSize(2, 8.0f);
        return ex;
    }

    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    protected void oJ(Context context) {
        int ZYk = cdg.ZYk(context, 10.0f);
        int ZYk2 = cdg.ZYk(context, 5.0f);
        int ZYk3 = cdg.ZYk(context, 6.0f);
        int ZYk4 = cdg.ZYk(context, 16.0f);
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
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(context, 48.0f));
        layoutParams2.setMargins(ZYk2, ZYk2, ZYk2, ZYk2);
        layoutParams2.addRule(12);
        cfz2.setBackgroundColor(Color.parseColor("#26000000"));
        cfz2.setGravity(16);
        cfz2.setLayoutParams(layoutParams2);
        cfz.addView(cfz2);
        si cFZ = cFZ(context);
        this.tB = cFZ;
        int i11 = eZI.yQF;
        cFZ.setId(i11);
        int ZYk5 = cdg.ZYk(context, 25.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ZYk5, ZYk5);
        layoutParams3.addRule(20);
        layoutParams3.addRule(9);
        layoutParams3.addRule(15);
        this.tB.setLayoutParams(layoutParams3);
        cfz2.addView(this.tB);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams4.addRule(17, i11);
        layoutParams4.addRule(1, i11);
        pfn.setLayoutParams(layoutParams4);
        pfn.setGravity(16);
        pfn.setOrientation(1);
        cfz2.addView(pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.so ZYk6 = ZYk(context);
        this.ex = ZYk6;
        ZYk6.setId(eZI.YF);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.leftMargin = ZYk3;
        layoutParams5.setMarginStart(ZYk3);
        this.ex.setLayoutParams(layoutParams5);
        pfn.addView(this.ex);
        com.bytedance.sdk.openadsdk.core.Pfn.so tB = tB(context);
        this.Pfn = tB;
        tB.setId(eZI.BWx);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.leftMargin = ZYk3;
        layoutParams6.setMarginStart(ZYk3);
        this.Pfn.setLayoutParams(layoutParams6);
        pfn.addView(this.Pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.so ex = ex(context);
        this.f12856ba = ex;
        ex.setId(eZI.eXp);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(21);
        layoutParams7.addRule(11);
        layoutParams7.addRule(15);
        this.f12856ba.setLayoutParams(layoutParams7);
        int ZYk7 = cdg.ZYk(context, 4.0f);
        this.f12856ba.setPadding(ZYk7, ZYk7, ZYk7, ZYk7);
        cfz2.addView(this.f12856ba);
        View so2 = so(context);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(2, i10);
        layoutParams8.leftMargin = ZYk4;
        layoutParams8.bottomMargin = ZYk;
        so2.setLayoutParams(layoutParams8);
        cfz.addView(so2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    public com.bytedance.sdk.openadsdk.core.Pfn.so tB(Context context) {
        com.bytedance.sdk.openadsdk.core.Pfn.so tB = super.tB(context);
        tB.setGravity(16);
        tB.setMaxWidth(cdg.ZYk(context, 53.0f));
        tB.setTextColor(-1);
        tB.setTextSize(2, 8.0f);
        return tB;
    }

    public ba(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ba(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}

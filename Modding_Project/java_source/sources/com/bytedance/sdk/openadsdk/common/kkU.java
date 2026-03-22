package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class kkU extends RelativeLayout {
    public kkU(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        Context context = getContext();
        int ZYk = cdg.ZYk(context, 12.0f);
        setLayoutParams(new ViewGroup.LayoutParams(-1, cdg.ZYk(context, 44.0f)));
        setBackgroundColor(-1);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setId(520093720);
        exVar.setClickable(true);
        exVar.setFocusable(true);
        exVar.setImageDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_leftbackicon_selector"));
        int ZYk2 = cdg.ZYk(context, 24.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ZYk2, ZYk2);
        layoutParams.leftMargin = ZYk;
        layoutParams.addRule(15);
        addView(exVar, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar2.setId(520093716);
        exVar2.setClickable(true);
        exVar2.setFocusable(true);
        exVar2.setImageDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_titlebar_close_seletor"));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ZYk2, ZYk2);
        layoutParams2.leftMargin = ZYk;
        layoutParams2.addRule(15);
        layoutParams2.addRule(1, 520093720);
        addView(exVar2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        int i10 = com.bytedance.sdk.openadsdk.utils.eZI.BHY;
        exVar3.setId(i10);
        exVar3.setImageDrawable(cY.tB(context, "tt_ad_feedback_new"));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ZYk2, ZYk2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams3.rightMargin = ZYk;
        addView(exVar3, layoutParams3);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.SWT);
        soVar.setSingleLine(true);
        soVar.setEllipsize(TextUtils.TruncateAt.END);
        soVar.setGravity(17);
        soVar.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        soVar.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 240.0f), -2);
        layoutParams4.addRule(15);
        layoutParams4.addRule(1, 520093716);
        layoutParams4.addRule(0, i10);
        int ZYk3 = cdg.ZYk(context, 25.0f);
        layoutParams4.rightMargin = ZYk3;
        layoutParams4.leftMargin = ZYk3;
        addView(soVar, layoutParams4);
    }
}

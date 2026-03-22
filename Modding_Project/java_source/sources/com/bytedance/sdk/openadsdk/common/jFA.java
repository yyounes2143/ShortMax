package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class jFA extends RelativeLayout {
    public jFA(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        setId(com.bytedance.sdk.openadsdk.utils.eZI.TA);
        setBackgroundColor(-1);
        Context context = getContext();
        setLayoutParams(new ViewGroup.LayoutParams(-1, cdg.ZYk(context, 44.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        int i10 = com.bytedance.sdk.openadsdk.utils.eZI.UK;
        exVar.setId(i10);
        exVar.setClickable(true);
        exVar.setFocusable(true);
        exVar.setPadding(cdg.ZYk(context, 12.0f), cdg.ZYk(context, 14.0f), cdg.ZYk(context, 12.0f), cdg.ZYk(context, 14.0f));
        exVar.setImageResource(cY.ex(context, "tt_ad_xmark"));
        addView(exVar, new RelativeLayout.LayoutParams(cdg.ZYk(context, 40.0f), cdg.ZYk(context, 44.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        int i11 = com.bytedance.sdk.openadsdk.utils.eZI.jXJ;
        exVar2.setId(i11);
        exVar2.setPadding(cdg.ZYk(context, 8.0f), cdg.ZYk(context, 10.0f), cdg.ZYk(context, 8.0f), cdg.ZYk(context, 10.0f));
        exVar2.setImageResource(cY.ex(context, "tt_ad_feedback"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(cdg.ZYk(context, 40.0f), cdg.ZYk(context, 44.0f));
        layoutParams.addRule(11);
        addView(exVar2, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.VSB);
        soVar.setSingleLine(true);
        soVar.setEllipsize(TextUtils.TruncateAt.END);
        soVar.setGravity(17);
        soVar.setTextColor(Color.parseColor("#222222"));
        soVar.setTextSize(2, 17.0f);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 191.0f), cdg.ZYk(context, 24.0f));
        layoutParams2.addRule(15);
        layoutParams2.addRule(0, i11);
        layoutParams2.addRule(1, i10);
        int ZYk = cdg.ZYk(context, 10.0f);
        layoutParams2.leftMargin = ZYk;
        layoutParams2.rightMargin = ZYk;
        addView(soVar, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.ba baVar = new com.bytedance.sdk.openadsdk.core.Pfn.ba(context, null, 16973855);
        baVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.uvK);
        baVar.setProgress(1);
        baVar.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_privacy_progress_style"));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(context, 2.0f));
        layoutParams3.addRule(12);
        addView(baVar, layoutParams3);
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#1F161823"));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(context, 0.5f));
        layoutParams4.addRule(12);
        addView(view, layoutParams4);
    }
}

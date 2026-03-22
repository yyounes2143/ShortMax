package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class so extends LinearLayout {
    public so(Context context) {
        super(context);
        oJ();
    }

    private static ImageView oJ(Context context, float f10, float f11, float f12, float f13) {
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setClickable(true);
        exVar.setFocusable(true);
        exVar.setPadding(cdg.ZYk(context, f12), cdg.ZYk(context, f13), cdg.ZYk(context, f12), cdg.ZYk(context, f13));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(cdg.ZYk(context, 40.0f), cdg.ZYk(context, 44.0f));
        if (f10 > 0.0f) {
            layoutParams.leftMargin = cdg.ZYk(context, f10);
        }
        if (f11 > 0.0f) {
            layoutParams.rightMargin = cdg.ZYk(context, f11);
        }
        exVar.setLayoutParams(layoutParams);
        return exVar;
    }

    private void oJ() {
        Context context = getContext();
        setId(com.bytedance.sdk.openadsdk.utils.eZI.UF);
        setLayoutParams(new ViewGroup.LayoutParams(-1, cdg.ZYk(context, 44.5f)));
        setBackgroundColor(-1);
        setClickable(true);
        setFocusable(true);
        setOrientation(1);
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#1F161823"));
        addView(view, new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 0.5f)));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(0);
        addView(pfn, new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 44.0f)));
        ImageView oJ = oJ(context, 16.0f, 0.0f, 14.75f, 12.5f);
        oJ.setId(com.bytedance.sdk.openadsdk.utils.eZI.VJm);
        oJ.setImageResource(cY.ex(context, "tt_ad_arrow_backward"));
        pfn.addView(oJ);
        View view2 = new View(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        layoutParams.weight = 1.0f;
        pfn.addView(view2, layoutParams);
        ImageView oJ2 = oJ(context, 8.0f, 0.0f, 14.75f, 12.5f);
        oJ2.setId(com.bytedance.sdk.openadsdk.utils.eZI.bD);
        oJ2.setImageResource(cY.ex(context, "tt_ad_arrow_forward"));
        pfn.addView(oJ2);
        View view3 = new View(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, 0);
        layoutParams2.weight = 1.0f;
        pfn.addView(view3, layoutParams2);
        ImageView oJ3 = oJ(context, 8.0f, 0.0f, 10.0f, 12.0f);
        oJ3.setId(com.bytedance.sdk.openadsdk.utils.eZI.oCU);
        oJ3.setImageResource(cY.ex(context, "tt_ad_refresh"));
        pfn.addView(oJ3);
        View view4 = new View(context);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
        layoutParams3.weight = 1.0f;
        pfn.addView(view4, layoutParams3);
        ImageView oJ4 = oJ(context, 0.0f, 16.0f, 9.0f, 11.0f);
        oJ4.setId(com.bytedance.sdk.openadsdk.utils.eZI.EP);
        oJ4.setImageResource(cY.ex(context, "tt_ad_link"));
        pfn.addView(oJ4);
    }
}

package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class awB extends com.bytedance.sdk.openadsdk.core.Pfn.cFZ {
    public awB(Context context) {
        this(context, null);
    }

    private void oJ(Context context) {
        setId(eZI.TNk);
        setBackgroundColor(Color.parseColor("#00000000"));
        setGravity(16);
        setVisibility(8);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        int i10 = eZI.f13415pe;
        soVar.setId(i10);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        soVar.setLayoutParams(layoutParams);
        soVar.setIncludeFontPadding(false);
        soVar.setText(cY.oJ(context, "tt_video_without_wifi_tips"));
        soVar.setTextColor(Color.parseColor("#cacaca"));
        soVar.setTextSize(2, 14.0f);
        addView(soVar);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setId(eZI.Dc);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, i10);
        layoutParams2.addRule(13);
        cfz.setLayoutParams(layoutParams2);
        addView(cfz);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setId(eZI.rJ);
        int ZYk = cdg.ZYk(context, 44.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ZYk, ZYk);
        layoutParams3.addRule(15);
        exVar.setLayoutParams(layoutParams3);
        exVar.setImageDrawable(cY.tB(context, "tt_new_play_video"));
        exVar.setScaleType(ImageView.ScaleType.FIT_XY);
        cfz.addView(exVar);
    }

    public awB(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public awB(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        oJ(context);
    }
}

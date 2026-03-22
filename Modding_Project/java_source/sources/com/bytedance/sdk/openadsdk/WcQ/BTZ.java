package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class BTZ extends com.bytedance.sdk.openadsdk.core.Pfn.cFZ {
    public BTZ(Context context) {
        this(context, null);
    }

    private void oJ(Context context) {
        setId(eZI.MVA);
        setVisibility(8);
        setBackgroundColor(Color.parseColor("#7f000000"));
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(getContext());
        exVar.setId(eZI.Zzm);
        exVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
        exVar.setImageTintMode(PorterDuff.Mode.SRC_OVER);
        exVar.setImageTintList(ColorStateList.valueOf(Color.parseColor("#7f000000")));
        exVar.setBackgroundColor(Color.parseColor("#7f000000"));
        exVar.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(exVar);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        cfz.setId(eZI.sQ);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        cfz.setLayoutParams(layoutParams);
        addView(cfz);
        int ZYk = cdg.ZYk(context, 44.0f);
        com.bytedance.sdk.openadsdk.core.widget.oJ oJVar = new com.bytedance.sdk.openadsdk.core.widget.oJ(context);
        int i10 = eZI.cdg;
        oJVar.setId(i10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ZYk, ZYk);
        layoutParams2.addRule(14);
        oJVar.setLayoutParams(layoutParams2);
        oJVar.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        cfz.addView(oJVar);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setId(eZI.Rl);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(ZYk, ZYk);
        layoutParams3.addRule(8, i10);
        layoutParams3.addRule(19, i10);
        layoutParams3.addRule(5, i10);
        layoutParams3.addRule(7, i10);
        layoutParams3.addRule(18, i10);
        layoutParams3.addRule(6, i10);
        layoutParams3.addRule(14);
        soVar.setLayoutParams(layoutParams3);
        soVar.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_circle_solid_mian"));
        soVar.setGravity(17);
        soVar.setTextColor(-1);
        soVar.setTextSize(2, 19.0f);
        soVar.setTypeface(Typeface.defaultFromStyle(1));
        soVar.setVisibility(8);
        cfz.addView(soVar);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        int i11 = eZI.Jm;
        soVar2.setId(i11);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(3, i10);
        layoutParams4.addRule(14);
        layoutParams4.topMargin = cdg.ZYk(context, 6.0f);
        soVar2.setLayoutParams(layoutParams4);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar2.setEllipsize(truncateAt);
        soVar2.setMaxLines(1);
        soVar2.setTextColor(-1);
        soVar2.setTextSize(2, 12.0f);
        cfz.addView(soVar2);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar3.setId(eZI.Qu);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 100.0f), cdg.ZYk(context, 28.0f));
        layoutParams5.addRule(14);
        layoutParams5.addRule(3, i11);
        layoutParams5.topMargin = cdg.ZYk(context, 20.0f);
        soVar3.setLayoutParams(layoutParams5);
        soVar3.setMinWidth(cdg.ZYk(context, 72.0f));
        soVar3.setMaxLines(1);
        soVar3.setEllipsize(truncateAt);
        soVar3.setTextColor(-1);
        soVar3.setTextSize(2, 14.0f);
        soVar3.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_ad_cover_btn_begin_bg"));
        soVar3.setGravity(17);
        int ZYk2 = cdg.ZYk(context, 10.0f);
        int ZYk3 = cdg.ZYk(context, 2.0f);
        soVar3.setPadding(ZYk2, ZYk3, ZYk2, ZYk3);
        soVar3.setVisibility(8);
        cfz.addView(soVar3);
    }

    public BTZ(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BTZ(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        oJ(context);
    }
}

package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
/* loaded from: classes3.dex */
public class WcQ extends com.bytedance.sdk.openadsdk.core.Pfn.cFZ {
    public WcQ(Context context) {
        this(context, null);
    }

    private void oJ(Context context) {
        setBackgroundColor(Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR));
        setId(520093726);
        int ZYk = cdg.ZYk(context, 60.0f);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        tBVar.setId(eZI.f13413oo);
        tBVar.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        tBVar.setBackgroundColor(0);
        addView(tBVar);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setId(eZI.f13416rg);
        exVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        exVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
        tBVar.addView(exVar);
        com.bytedance.sdk.openadsdk.core.Pfn.ba baVar = new com.bytedance.sdk.openadsdk.core.Pfn.ba(context);
        baVar.setId(eZI.ZMY);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ZYk, ZYk);
        layoutParams.gravity = 17;
        baVar.setLayoutParams(layoutParams);
        baVar.setIndeterminateDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_video_loading_progress_bar"));
        tBVar.addView(baVar);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar2.setId(eZI.NX);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        exVar2.setLayoutParams(layoutParams2);
        exVar2.setScaleType(ImageView.ScaleType.CENTER);
        exVar2.setImageDrawable(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_play_movebar_textpage"));
        exVar2.setVisibility(8);
        addView(exVar2);
        View btz = new BTZ(context);
        btz.setId(eZI.MVA);
        btz.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(btz);
    }

    public WcQ(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WcQ(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        oJ(context);
    }
}

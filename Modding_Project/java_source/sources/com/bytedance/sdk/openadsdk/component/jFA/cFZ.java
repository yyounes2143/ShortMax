package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class cFZ extends com.bytedance.sdk.openadsdk.core.Pfn.cFZ {
    private final com.bytedance.sdk.openadsdk.core.Pfn.ex ZYk;
    private final com.bytedance.sdk.openadsdk.core.Pfn.ex oJ;
    private final com.bytedance.sdk.openadsdk.core.Pfn.so tB;

    public cFZ(@NonNull Context context) {
        super(context);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int ZYk = cdg.ZYk(context, 12.0f);
        int ZYk2 = cdg.ZYk(context, 16.0f);
        int ZYk3 = cdg.ZYk(context, 20.0f);
        int ZYk4 = cdg.ZYk(context, 24.0f);
        int ZYk5 = cdg.ZYk(context, 28.0f);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        this.oJ = exVar;
        exVar.setId(520093713);
        int ZYk6 = cdg.ZYk(getContext(), 5.0f);
        exVar.setPadding(ZYk6, ZYk6, ZYk6, ZYk6);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        exVar.setScaleType(scaleType);
        exVar.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
        exVar.setImageResource(cY.ex(si.oJ(), "tt_reward_full_feedback"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ZYk5, ZYk5);
        layoutParams.topMargin = ZYk3;
        layoutParams.leftMargin = ZYk2;
        layoutParams.setMarginStart(ZYk2);
        exVar.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        this.ZYk = exVar2;
        exVar2.setId(520093714);
        exVar2.setPadding(ZYk6, ZYk6, ZYk6, ZYk6);
        exVar2.setScaleType(scaleType);
        exVar2.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
        exVar2.setImageResource(cY.ex(si.oJ(), "tt_close_btn"));
        if (exVar2.getDrawable() != null) {
            exVar2.getDrawable().setAutoMirrored(true);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ZYk5, ZYk5);
        layoutParams2.topMargin = ZYk3;
        layoutParams2.rightMargin = ZYk2;
        layoutParams2.setMarginEnd(ZYk2);
        layoutParams2.addRule(11);
        layoutParams2.addRule(21);
        exVar2.setLayoutParams(layoutParams2);
        exVar2.setVisibility(4);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.tB = soVar;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, ZYk4);
        layoutParams3.topMargin = ZYk3;
        layoutParams3.rightMargin = ZYk2;
        layoutParams3.addRule(11);
        layoutParams3.setMarginEnd(ZYk2);
        layoutParams3.addRule(21);
        soVar.setLayoutParams(layoutParams3);
        soVar.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.ZYk());
        soVar.setGravity(17);
        soVar.setPadding(ZYk, 0, ZYk, 0);
        soVar.setTextColor(-1);
        soVar.setTextSize(1, 14.0f);
        soVar.setVisibility(4);
        addView(exVar);
        addView(soVar);
        addView(exVar2);
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so getTopCountDown() {
        return this.tB;
    }

    public View getTopDislike() {
        return this.oJ;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.ex getTopSkip() {
        return this.ZYk;
    }
}

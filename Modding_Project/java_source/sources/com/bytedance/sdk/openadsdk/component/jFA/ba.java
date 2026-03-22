package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
/* loaded from: classes3.dex */
public class ba extends tB {
    private final com.bytedance.sdk.openadsdk.core.Pfn.Pfn PiB;
    private final eZI WcQ;

    public ba(Context context, cY cYVar) {
        super(context);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setBackground(new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{Color.parseColor("#EDFCFF"), Color.parseColor("#FFF6FD")}));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        this.PiB = pfn;
        pfn.setId(520093758);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = cdg.ZYk(context, 24.0f);
        layoutParams.topMargin = cdg.ZYk(context, 56.0f);
        pfn.setLayoutParams(layoutParams);
        pfn.setClickable(false);
        pfn.setGravity(16);
        pfn.setOrientation(0);
        si siVar = new si(context);
        this.f12985ba = siVar;
        siVar.setId(520093759);
        this.f12985ba.setLayoutParams(new LinearLayout.LayoutParams(cdg.ZYk(context, 24.0f), cdg.ZYk(context, 24.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.cFZ = soVar;
        soVar.setId(520093761);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = cdg.ZYk(context, 8.0f);
        this.cFZ.setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = this.cFZ;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar2.setEllipsize(truncateAt);
        this.cFZ.setMaxLines(2);
        this.cFZ.setTextColor(Color.parseColor("#161823"));
        this.cFZ.setTextSize(12.0f);
        com.bytedance.sdk.openadsdk.core.Pfn.cFZ cfz = new com.bytedance.sdk.openadsdk.core.Pfn.cFZ(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 327.0f), -2);
        layoutParams3.addRule(13);
        layoutParams3.leftMargin = cdg.ZYk(context, 24.0f);
        layoutParams3.rightMargin = cdg.ZYk(context, 24.0f);
        cfz.setLayoutParams(layoutParams3);
        si siVar2 = new si(context);
        this.jFA = siVar2;
        int i10 = com.bytedance.sdk.openadsdk.utils.eZI.lG;
        siVar2.setId(i10);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 80.0f), cdg.ZYk(context, 80.0f));
        layoutParams4.addRule(14);
        this.jFA.setLayoutParams(layoutParams4);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.kkU = soVar3;
        int i11 = com.bytedance.sdk.openadsdk.utils.eZI.PH;
        soVar3.setId(i11);
        this.kkU.setTextSize(24.0f);
        this.kkU.setTextColor(Color.parseColor("#161823"));
        this.kkU.setGravity(17);
        this.kkU.setMaxLines(1);
        this.kkU.setEllipsize(truncateAt);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(3, i10);
        layoutParams5.topMargin = cdg.ZYk(context, 12.0f);
        layoutParams5.addRule(14);
        this.kkU.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.dLZ = soVar4;
        int i12 = com.bytedance.sdk.openadsdk.utils.eZI.Br;
        soVar4.setId(i12);
        this.dLZ.setTextSize(16.0f);
        this.dLZ.setTextColor(Color.parseColor("#80161823"));
        this.dLZ.setGravity(17);
        this.dLZ.setMaxLines(2);
        this.dLZ.setEllipsize(truncateAt);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.addRule(3, i11);
        layoutParams6.topMargin = cdg.ZYk(context, 4.0f);
        layoutParams6.addRule(14);
        this.dLZ.setLayoutParams(layoutParams6);
        eZI ezi = new eZI(context);
        this.WcQ = ezi;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(14);
        layoutParams7.topMargin = cdg.ZYk(context, 12.0f);
        ezi.setLayoutParams(layoutParams7);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar5 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.Pfn = soVar5;
        soVar5.setId(520093717);
        this.Pfn.setBackground(dLZ.oJ(context, "tt_reward_full_video_backup_btn_bg"));
        this.Pfn.setEllipsize(truncateAt);
        this.Pfn.setLines(1);
        this.Pfn.setGravity(17);
        this.Pfn.setTextColor(-1);
        this.Pfn.setTextSize(16.0f);
        this.Pfn.setTag("open_ad_click_button_tag");
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(context, 44.0f));
        layoutParams8.addRule(3, i12);
        layoutParams8.topMargin = cdg.ZYk(context, 54.0f);
        layoutParams8.addRule(14);
        this.Pfn.setLayoutParams(layoutParams8);
        PAGLogoView createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(context, cYVar);
        this.ex = createPAGLogoViewByMaterial;
        createPAGLogoViewByMaterial.setId(520093757);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f));
        layoutParams9.leftMargin = cdg.ZYk(context, 16.0f);
        layoutParams9.bottomMargin = cdg.ZYk(context, 24.0f);
        layoutParams9.addRule(12);
        this.ex.setLayoutParams(layoutParams9);
        addView(this.f12986so);
        pfn.addView(this.f12985ba);
        pfn.addView(this.cFZ);
        addView(pfn);
        cfz.addView(this.jFA);
        cfz.addView(this.kkU);
        cfz.addView(this.dLZ);
        cfz.addView(ezi);
        cfz.addView(this.Pfn);
        addView(cfz);
        addView(this.ex);
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.ex getAdIconView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.so getAdTitleTextView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public eZI getScoreBar() {
        return this.WcQ;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public View getUserInfo() {
        return this.PiB;
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.Ln;
import com.bytedance.sdk.component.utils.cY;
/* loaded from: classes3.dex */
public class dLZ implements cFZ<ViewGroup> {
    private final FrameLayout ZYk;
    private final com.bytedance.sdk.component.adexpress.ba.kkU oJ;

    public dLZ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, String str, String str2) {
        int i10;
        com.bytedance.sdk.component.adexpress.ba.kkU kku = new com.bytedance.sdk.component.adexpress.ba.kkU(context);
        this.oJ = kku;
        kku.setImageLottieTosPath(str);
        FrameLayout frameLayout = new FrameLayout(context);
        this.ZYk = frameLayout;
        frameLayout.addView(kku, new FrameLayout.LayoutParams(-2, -2));
        double MoK = cfz.MoK();
        MoK = MoK == 0.0d ? 1.0d : MoK;
        double TA = cfz.TA();
        double d10 = TA != 0.0d ? TA : 1.0d;
        if ("22".equals(str2)) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 250.0f));
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 120.0f);
            frameLayout.setLayoutParams(layoutParams);
        } else if ("20".equals(str2)) {
            oJ(context, frameLayout, cfz);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 81;
            if (cfz.bgF() > 0) {
                i10 = cfz.bgF();
            } else if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                i10 = 0;
            } else {
                i10 = 120;
            }
            layoutParams2.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, i10);
            frameLayout.setLayoutParams(layoutParams2);
            frameLayout.setClipChildren(false);
        } else {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (pfn.getDynamicWidth() * 0.32d * MoK), (int) (pfn.getDynamicWidth() * 0.32d * d10));
            layoutParams3.gravity = 17;
            frameLayout.setLayoutParams(layoutParams3);
        }
    }

    private void oJ(Context context, FrameLayout frameLayout, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, -Ln.oJ(context, 5.0f), 0, 0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText(context.getString(cY.ZYk(context, "tt_splash_brush_mask_title")));
        textView.setTextColor(-1);
        textView.setTextSize(2, 20.0f);
        TextView textView2 = new TextView(context);
        textView2.setId(2097610738);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, Ln.oJ(context, 5.0f), 0, 0);
        textView2.setLayoutParams(layoutParams2);
        textView2.setText(context.getString(cY.ZYk(context, "tt_splash_brush_mask_hint")));
        if (cfz != null && !TextUtils.isEmpty(cfz.oTd())) {
            textView2.setText(cfz.oTd());
        }
        textView2.setTextColor(-1);
        textView2.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        frameLayout.addView(linearLayout);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.ba();
        ViewParent parent = this.ZYk.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.ZYk);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public ViewGroup tB() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.so();
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class oJ implements cFZ {
    private com.bytedance.sdk.component.adexpress.ba.ZYk oJ;

    public oJ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        double MoK = cfz.MoK();
        MoK = MoK == 0.0d ? 1.0d : MoK;
        double TA = cfz.TA();
        double d10 = TA != 0.0d ? TA : 1.0d;
        int dynamicWidth = (int) (pfn.getDynamicWidth() * 0.32d * MoK);
        int dynamicWidth2 = (int) (pfn.getDynamicWidth() * 0.32d * d10);
        this.oJ = new com.bytedance.sdk.component.adexpress.ba.ZYk(context, dynamicWidth, dynamicWidth2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicWidth, dynamicWidth2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, cfz.Dex() - 7);
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, cfz.oIC() - 3);
        this.oJ.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public ViewGroup tB() {
        return this.oJ;
    }
}

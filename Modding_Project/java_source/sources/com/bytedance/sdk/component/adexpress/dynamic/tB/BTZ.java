package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class BTZ implements cFZ {
    private com.bytedance.sdk.component.adexpress.ba.WcQ oJ;

    public BTZ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        this.oJ = new com.bytedance.sdk.component.adexpress.ba.WcQ(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 180.0f));
        layoutParams.gravity = 17;
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setGuideText(cfz.oTd());
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

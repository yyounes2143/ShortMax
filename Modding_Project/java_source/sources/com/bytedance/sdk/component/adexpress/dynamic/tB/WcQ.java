package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class WcQ implements cFZ<com.bytedance.sdk.component.adexpress.ba.eZI> {
    private com.bytedance.sdk.component.adexpress.ba.eZI oJ;

    public WcQ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        this.oJ = new com.bytedance.sdk.component.adexpress.ba.eZI(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 180.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 180.0f));
        layoutParams.gravity = 17;
        layoutParams.leftMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 20.0f);
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setGuideText(cfz.oTd());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    /* renamed from: ex */
    public com.bytedance.sdk.component.adexpress.ba.eZI tB() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }
}

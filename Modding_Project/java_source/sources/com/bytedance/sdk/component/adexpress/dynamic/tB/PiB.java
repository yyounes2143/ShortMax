package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class PiB implements cFZ {
    private com.bytedance.sdk.component.adexpress.ba.awB oJ;

    public PiB(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        this.oJ = new com.bytedance.sdk.component.adexpress.ba.awB(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(pfn.getDynamicHeight(), pfn.getDynamicHeight());
        layoutParams.gravity = 8388629;
        this.oJ.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    /* renamed from: ex */
    public com.bytedance.sdk.component.adexpress.ba.awB tB() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }
}

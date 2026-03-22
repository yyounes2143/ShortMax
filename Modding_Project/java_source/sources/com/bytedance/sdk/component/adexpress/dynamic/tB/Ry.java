package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class Ry implements cFZ<com.bytedance.sdk.component.adexpress.ba.dLZ> {
    private final com.bytedance.sdk.component.adexpress.ba.dLZ oJ;

    public Ry(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        int i10;
        com.bytedance.sdk.component.adexpress.ba.dLZ dlz = new com.bytedance.sdk.component.adexpress.ba.dLZ(context);
        this.oJ = dlz;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        if (cfz.bgF() > 0) {
            i10 = cfz.bgF();
        } else if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            i10 = 0;
        } else {
            i10 = 120;
        }
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, i10);
        dlz.setLayoutParams(layoutParams);
        dlz.setClipChildren(false);
        dlz.setText(cfz.oTd());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        com.bytedance.sdk.component.adexpress.ba.dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.ZYk();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    /* renamed from: ex */
    public com.bytedance.sdk.component.adexpress.ba.dLZ tB() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        com.bytedance.sdk.component.adexpress.ba.dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.oJ();
        }
    }
}

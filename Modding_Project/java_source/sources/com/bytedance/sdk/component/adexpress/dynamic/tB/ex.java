package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.Id;
/* loaded from: classes3.dex */
public class ex extends si<com.bytedance.sdk.component.adexpress.ba.cFZ> {
    public ex(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        super(context, pfn, cfz);
        oJ(cfz);
    }

    private void oJ(com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        this.oJ = new com.bytedance.sdk.component.adexpress.ba.cFZ(this.ZYk);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, cfz.bgF());
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setSlideText(this.ex.oTd());
        Id id2 = this.oJ;
        if (id2 instanceof com.bytedance.sdk.component.adexpress.ba.cFZ) {
            ((com.bytedance.sdk.component.adexpress.ba.cFZ) id2).setButtonText(this.ex.kkU());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.si, com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.si, com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.si
    protected void ex() {
    }
}

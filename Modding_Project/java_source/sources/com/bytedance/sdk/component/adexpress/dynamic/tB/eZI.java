package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.oq;
/* loaded from: classes3.dex */
public class eZI implements cFZ {
    private Context ZYk;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ ex;
    private oq oJ;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn tB;

    public eZI(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        this.ZYk = context;
        this.tB = pfn;
        this.ex = cfz;
        ex();
    }

    private void ex() {
        this.oJ = new oq(this.ZYk);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, 120.0f));
        layoutParams.gravity = 17;
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setClipChildren(false);
        this.oJ.setGuideText(this.ex.oTd());
        com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn = this.tB;
        if (pfn != null) {
            this.oJ.setOnClickListener((View.OnClickListener) pfn.getDynamicClickListener());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        oq oqVar = this.oJ;
        if (oqVar != null) {
            oqVar.ZYk();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        oq oqVar = this.oJ;
        if (oqVar != null) {
            oqVar.oJ();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public ViewGroup tB() {
        return this.oJ;
    }
}

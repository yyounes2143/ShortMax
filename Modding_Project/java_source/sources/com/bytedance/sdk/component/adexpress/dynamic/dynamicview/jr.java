package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class jr extends ba {
    private int oJ;

    public jr(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.oJ = 0;
        com.bytedance.sdk.component.adexpress.ba.jr jrVar = new com.bytedance.sdk.component.adexpress.ba.jr(context, null);
        this.awB = jrVar;
        jrVar.setTag(Integer.valueOf(getClickArea()));
        addView(this.awB, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
        layoutParams.topMargin = this.kkU;
        int i10 = this.jFA + this.oJ;
        layoutParams.leftMargin = i10;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        int oJ = (int) ((com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.Pfn()) * 5.0f) + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.tB() + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ex())));
        if (this.cFZ > oJ && 4 == this.BTZ.so()) {
            this.oJ = (this.cFZ - oJ) / 2;
        }
        this.cFZ = oJ;
        return new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        double d10;
        DynamicRootView dynamicRootView;
        super.jFA();
        double PiB = this.BTZ.PiB();
        if (com.bytedance.sdk.component.adexpress.ex.ZYk() && (PiB < 0.0d || PiB > 5.0d || ((dynamicRootView = this.WcQ) != null && dynamicRootView.getRenderRequest() != null && this.WcQ.getRenderRequest().kkU() != 4))) {
            this.awB.setVisibility(8);
            return true;
        }
        if (PiB >= 0.0d && PiB <= 5.0d) {
            d10 = PiB;
        } else {
            d10 = 5.0d;
        }
        this.awB.setVisibility(0);
        ((com.bytedance.sdk.component.adexpress.ba.jr) this.awB).oJ(d10, this.BTZ.cFZ(), (int) this.BTZ.Pfn(), ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.ZYk())) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.oJ())) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.Pfn())));
        return true;
    }
}

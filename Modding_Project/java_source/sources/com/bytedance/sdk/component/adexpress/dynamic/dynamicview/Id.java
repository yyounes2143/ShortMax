package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import java.util.List;
/* loaded from: classes3.dex */
public class Id extends ba implements com.bytedance.sdk.component.adexpress.dynamic.tB {
    private int QSm;
    private int ZYk;
    private int oJ;

    public Id(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        oJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i10 = this.jFA;
        layoutParams.leftMargin = i10;
        layoutParams.topMargin = this.kkU;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        setBackground(getBackgroundDrawable());
        setPadding((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.tB()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ZYk()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ex()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.oJ()));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB
    public void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        this.QSm = i10;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.QSm == 0) {
            setMeasuredDimension(this.ZYk, this.f12680so);
        } else {
            setMeasuredDimension(this.oJ, this.f12680so);
        }
    }

    private void oJ() {
        List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ = this.PiB.dLZ();
        if (dLZ == null || dLZ.size() <= 0) {
            return;
        }
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar : dLZ) {
            if (soVar.kkU().oJ() == 21) {
                this.oJ = (int) (this.cFZ - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, soVar.so()));
            }
            if (soVar.kkU().oJ() == 20) {
                this.ZYk = (int) (this.cFZ - com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, soVar.so()));
            }
        }
    }
}

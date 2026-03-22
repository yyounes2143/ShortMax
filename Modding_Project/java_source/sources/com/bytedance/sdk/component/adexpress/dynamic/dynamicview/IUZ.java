package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class IUZ extends ba implements com.bytedance.sdk.component.adexpress.dynamic.tB {
    private boolean Id;
    private int QSm;
    boolean ZYk;
    int oJ;

    /* renamed from: oq  reason: collision with root package name */
    private int f12675oq;

    public IUZ(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.f12675oq = 0;
        setTag(Integer.valueOf(getClickArea()));
        oJ();
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null && !dynamicRootView.getRenderRequest().tb()) {
            View view = this.awB;
            if (view != null) {
                view.setVisibility(8);
            }
            setVisibility(8);
        }
    }

    private void oJ() {
        List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ = this.PiB.dLZ();
        if (dLZ == null || dLZ.size() <= 0) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.dynamic.ex.so> it = dLZ.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.bytedance.sdk.component.adexpress.dynamic.ex.so next = it.next();
            if (TextUtils.equals("skip-with-time-skip-btn", next.kkU().ZYk())) {
                int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, next.so() + (com.bytedance.sdk.component.adexpress.ex.ZYk() ? next.PiB() : 0));
                this.QSm = oJ;
                this.oJ = this.cFZ - oJ;
            }
        }
        this.f12675oq = this.cFZ - this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.ZYk) {
            layoutParams.leftMargin = this.jFA;
        } else {
            layoutParams.leftMargin = this.jFA + this.f12675oq;
        }
        if (this.Id && this.BTZ != null) {
            layoutParams.leftMargin = ((this.jFA + this.f12675oq) - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.tB()))) - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ex()));
        }
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            layoutParams.topMargin = this.kkU - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ZYk()));
        } else {
            layoutParams.topMargin = this.kkU;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
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
        if (com.bytedance.sdk.component.adexpress.ex.ba.ZYk(this.WcQ.getRenderRequest().ex())) {
            return true;
        }
        super.jFA();
        setPadding((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.tB()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ZYk()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ex()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.oJ()));
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.Id && this.BTZ != null) {
            setMeasuredDimension(this.QSm + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.tB())) + ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.ex())), this.f12680so);
        } else if (this.ZYk) {
            setMeasuredDimension(this.cFZ, this.f12680so);
        } else {
            setMeasuredDimension(this.oJ, this.f12680so);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB
    public void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (z11 && this.Id != z11) {
            this.Id = z11;
            ba();
            return;
        }
        if (z10 && this.ZYk != z10) {
            this.ZYk = z10;
            ba();
        }
        this.ZYk = z10;
    }
}

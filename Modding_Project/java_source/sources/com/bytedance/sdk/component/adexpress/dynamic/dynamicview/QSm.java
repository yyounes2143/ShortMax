package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class QSm extends cFZ implements com.bytedance.sdk.component.adexpress.dynamic.tB {
    public QSm(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        dynamicRootView.setTimeOutListener(this);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
        int i10 = this.jFA;
        layoutParams.leftMargin = i10;
        layoutParams.gravity = 16;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.cFZ, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB
    public void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        if (i10 == 0) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
        } else {
            String oJ = com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), "tt_reward_full_skip_count_down");
            ((TextView) this.awB).setText(" | " + String.format(oJ, Integer.valueOf(i10)));
        }
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.awB).getText())) {
            setMeasuredDimension(0, this.f12680so);
        }
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class oq extends cFZ implements com.bytedance.sdk.component.adexpress.dynamic.tB {
    private int QSm;
    private int ZYk;
    private int[] oJ;

    public oq(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        dynamicRootView.setTimeOutListener(this);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
        layoutParams.gravity = 8388629;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.cFZ, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        ((TextView) this.awB).setText("");
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB
    @SuppressLint({"SetTextI18n"})
    public void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        String oJ = com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), "tt_reward_screen_skip_tx");
        if (i10 == 0) {
            this.awB.setVisibility(0);
            ((TextView) this.awB).setText("| ".concat(String.valueOf(oJ)));
            this.awB.measure(-2, -2);
            this.oJ = new int[]{this.awB.getMeasuredWidth() + 1, this.awB.getMeasuredHeight()};
            View view = this.awB;
            int[] iArr = this.oJ;
            view.setLayoutParams(new FrameLayout.LayoutParams(iArr[0], iArr[1]));
            ((TextView) this.awB).setGravity(17);
            ((TextView) this.awB).setIncludeFontPadding(false);
            oJ();
            this.awB.setPadding(this.BTZ.tB(), this.ZYk, this.BTZ.ex(), this.QSm);
        }
        requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.awB).getText())) {
            setMeasuredDimension(0, this.f12680so);
        } else {
            setMeasuredDimension(this.cFZ, this.f12680so);
        }
    }

    private void oJ() {
        this.ZYk = ((this.f12680so - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.Pfn()))) / 2) - this.BTZ.oJ();
        this.QSm = 0;
    }
}

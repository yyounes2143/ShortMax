package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class HL extends cFZ implements com.bytedance.sdk.component.adexpress.dynamic.tB {
    private boolean QSm;
    private boolean ZYk;
    private boolean oJ;

    public HL(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        dynamicRootView.setTimeOutListener(this);
        if ("timedown".equals(soVar.kkU().ZYk())) {
            dynamicRootView.setTimedown(this.f12680so);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        if (!TextUtils.equals("skip-with-countdowns-video-countdown", this.PiB.kkU().ZYk()) && !TextUtils.equals("skip-with-time-countdown", this.PiB.kkU().ZYk())) {
            super.ba();
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
        layoutParams.gravity = 8388627;
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            layoutParams.leftMargin = this.jFA;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.cFZ, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        if (com.bytedance.sdk.component.adexpress.ex.ba.ZYk(this.WcQ.getRenderRequest().ex())) {
            setVisibility(8);
        }
        if ("timedown".equals(this.PiB.kkU().ZYk())) {
            ((TextView) this.awB).setText(String.valueOf((int) Double.parseDouble(this.BTZ.kkU())));
            return true;
        }
        ((TextView) this.awB).setText(((int) Double.parseDouble(this.BTZ.kkU())) + "s");
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB
    public void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        String str = "";
        if (!z11 && !this.QSm) {
            try {
                if (Integer.parseInt((String) charSequence) <= 0) {
                    setVisibility(8);
                    return;
                }
            } catch (Exception unused) {
            }
            setVisibility(0);
            if (!z10 && this.WcQ.getRenderRequest().oJ() && com.bytedance.sdk.component.adexpress.ex.ba.ZYk(this.WcQ.getRenderRequest().ex())) {
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    ((TextView) this.awB).setText(i10 + "s");
                } else {
                    ((TextView) this.awB).setText(String.format(com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), "tt_reward_full_skip"), Integer.valueOf(i10)));
                }
                this.oJ = true;
                return;
            } else if (com.bytedance.sdk.component.adexpress.ex.ZYk() && !"open_ad".equals(this.WcQ.getRenderRequest().ex()) && this.WcQ.getRenderRequest().oJ()) {
                this.QSm = true;
                setVisibility(8);
                return;
            } else if ("timedown".equals(this.PiB.kkU().ZYk())) {
                ((TextView) this.awB).setText(charSequence);
                return;
            } else {
                ((TextView) this.awB).setText(((Object) charSequence) + "s");
                this.ZYk = true;
                if (this.oJ) {
                    CharSequence text = ((TextView) this.awB).getText();
                    if (text != null) {
                        str = text.toString();
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk(str, this.BTZ.Pfn(), true)[0] + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), this.BTZ.tB() + this.BTZ.ex())), this.f12680so);
                    layoutParams.gravity = 8388629;
                    this.awB.setLayoutParams(layoutParams);
                    this.oJ = false;
                    requestLayout();
                    return;
                }
                return;
            }
        }
        ((TextView) this.awB).setText("");
        setVisibility(8);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (TextUtils.isEmpty(((TextView) this.awB).getText())) {
            setMeasuredDimension(0, this.f12680so);
        }
    }
}

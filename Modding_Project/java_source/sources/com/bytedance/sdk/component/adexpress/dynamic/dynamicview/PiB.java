package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class PiB extends ba {
    public PiB(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        TextView textView = new TextView(context);
        this.awB = textView;
        textView.setTag(Integer.valueOf(getClickArea()));
        addView(this.awB, getWidgetLayoutParams());
    }

    private boolean oJ() {
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            return false;
        }
        if ((TextUtils.isEmpty(this.BTZ.ZYk) || !this.BTZ.ZYk.contains("adx:")) && !com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk()) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public void ba() {
        com.bytedance.sdk.component.adexpress.ZYk.PiB renderRequest = this.WcQ.getRenderRequest();
        if (renderRequest != null && TextUtils.isEmpty(renderRequest.HL())) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
            layoutParams.gravity = 17;
            setLayoutParams(layoutParams);
            return;
        }
        super.ba();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        com.bytedance.sdk.component.adexpress.ZYk.PiB renderRequest;
        super.jFA();
        this.awB.setTextAlignment(this.BTZ.so());
        ((TextView) this.awB).setTextColor(this.BTZ.cFZ());
        ((TextView) this.awB).setTextSize(this.BTZ.Pfn());
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            int i10 = 0;
            ((TextView) this.awB).setIncludeFontPadding(false);
            ((TextView) this.awB).setTextSize(Math.min(((com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), this.f12680so) - this.BTZ.ZYk()) - this.BTZ.oJ()) - 0.5f, this.BTZ.Pfn()));
            DynamicRootView dynamicRootView = this.WcQ;
            if (dynamicRootView != null && (renderRequest = dynamicRootView.getRenderRequest()) != null) {
                String IUZ = renderRequest.IUZ();
                if (!TextUtils.isEmpty(IUZ)) {
                    ((TextView) this.awB).setText(IUZ);
                    ((TextView) this.awB).setVisibility(i10);
                    return true;
                }
            }
            i10 = 8;
            ((TextView) this.awB).setVisibility(i10);
            return true;
        } else if (oJ()) {
            if (com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk()) {
                ((TextView) this.awB).setText(com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.oJ());
                return true;
            }
            ((TextView) this.awB).setText(com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.oJ(this.BTZ.ZYk));
            return true;
        } else {
            ((TextView) this.awB).setText(com.bytedance.sdk.component.utils.cY.ZYk(getContext(), "tt_logo_cn"));
            return true;
        }
    }
}

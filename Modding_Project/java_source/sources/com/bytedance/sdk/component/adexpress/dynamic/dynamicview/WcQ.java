package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class WcQ extends ba {
    public WcQ(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        ImageView imageView = new ImageView(context);
        this.awB = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            this.f12680so = Math.max(dynamicRootView.getLogoUnionHeight(), this.f12680so);
        }
        addView(this.awB, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        DynamicRootView dynamicRootView = this.WcQ;
        if (dynamicRootView != null && dynamicRootView.getRenderRequest() != null && !TextUtils.isEmpty(this.WcQ.getRenderRequest().HL())) {
            String HL = this.WcQ.getRenderRequest().HL();
            if (HL.equals("logo")) {
                ((ImageView) this.awB).setImageResource(com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_ad_logo"));
            } else {
                com.bytedance.sdk.component.Pfn.kkU Pfn = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().Pfn().oJ(HL).oJ(this.cFZ).ZYk(this.f12680so).ex(this.cFZ).Pfn(this.f12680so);
                String WcQ = this.WcQ.getRenderRequest().WcQ();
                if (!TextUtils.isEmpty(WcQ)) {
                    Pfn.ZYk(WcQ);
                }
                Pfn.oJ((ImageView) this.awB);
            }
        } else {
            setVisibility(8);
        }
        ((ImageView) this.awB).setColorFilter(this.BTZ.cFZ(), PorterDuff.Mode.SRC_IN);
        return true;
    }
}

package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class kkU extends ba {
    public kkU(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            ImageView imageView = new ImageView(context);
            this.awB = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.cFZ = this.f12680so;
        } else {
            this.awB = new TextView(context);
        }
        this.awB.setTag(3);
        addView(this.awB, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.awB);
        if (dynamicRootView.getRenderRequest() != null) {
            if (!dynamicRootView.getRenderRequest().so() || !dynamicRootView.getRenderRequest().tb()) {
                this.awB.setVisibility(8);
                setVisibility(8);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            Drawable oJ = com.bytedance.sdk.component.adexpress.ex.tB.oJ(getContext(), this.BTZ);
            if (oJ != null) {
                ((ImageView) this.awB).setBackground(oJ);
            }
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int ex = com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_reward_full_feedback");
            if (ex > 0) {
                ((ImageView) this.awB).setImageResource(ex);
            }
        }
        return true;
    }
}

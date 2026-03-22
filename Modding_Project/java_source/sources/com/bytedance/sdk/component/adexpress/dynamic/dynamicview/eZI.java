package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class eZI extends ba implements com.bytedance.sdk.component.adexpress.dynamic.ZYk {
    public eZI(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        ImageView imageView = new ImageView(context);
        this.awB = imageView;
        imageView.setTag(5);
        addView(this.awB, getWidgetLayoutParams());
        dynamicRootView.setMuteListener(this);
        if (dynamicRootView.getRenderRequest() != null && !dynamicRootView.getRenderRequest().tb()) {
            this.awB.setVisibility(8);
            setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public boolean Pfn() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER);
        }
        setSoundMute(this.WcQ.mIsMute);
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            Drawable oJ = com.bytedance.sdk.component.adexpress.ex.tB.oJ(getContext(), this.BTZ);
            if (oJ != null) {
                ((ImageView) this.awB).setBackground(oJ);
                return true;
            }
            return true;
        }
        ((ImageView) this.awB).setBackgroundDrawable(com.bytedance.sdk.component.adexpress.ex.so.oJ(0, Integer.valueOf(this.BTZ.IUZ()), new int[]{this.f12680so / 2}, null, null, null));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ZYk
    public void setSoundMute(boolean z10) {
        int ex;
        if (z10) {
            ex = com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_reward_full_mute");
        } else {
            ex = com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_reward_full_unmute");
        }
        ((ImageView) this.awB).setImageResource(ex);
        if (((ImageView) this.awB).getDrawable() != null) {
            ((ImageView) this.awB).getDrawable().setAutoMirrored(true);
        }
    }
}

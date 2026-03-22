package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class Ln extends ba implements com.bytedance.sdk.component.adexpress.dynamic.tB {
    private boolean oJ;

    public Ln(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        if (dynamicRootView.getRenderRequest() != null) {
            this.oJ = dynamicRootView.getRenderRequest().PiB();
        }
        this.cFZ = this.f12680so;
        ImageView imageView = new ImageView(context);
        this.awB = imageView;
        imageView.setTag(Integer.valueOf(getClickArea()));
        addView(this.awB, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() != null && !dynamicRootView.getRenderRequest().tb()) {
            this.awB.setVisibility(8);
            setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        Drawable tB;
        super.jFA();
        ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER_CROP);
        Drawable oJ = com.bytedance.sdk.component.adexpress.ex.tB.oJ(getContext(), this.BTZ);
        if (oJ != null) {
            ((ImageView) this.awB).setBackground(oJ);
        }
        if (this.oJ) {
            tB = com.bytedance.sdk.component.utils.cY.tB(getContext(), "tt_close_btn");
        } else {
            tB = com.bytedance.sdk.component.utils.cY.tB(getContext(), "tt_skip_btn");
            if (tB != null) {
                tB.setAutoMirrored(true);
            }
        }
        if (tB != null) {
            ((ImageView) this.awB).setImageDrawable(tB);
        }
        setVisibility(8);
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB
    public void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        int i11 = 0;
        if (!z10 && !z11) {
            i11 = 8;
        }
        setVisibility(i11);
    }
}

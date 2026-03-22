package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class jFA extends ba {
    public jFA(Context context, @NonNull DynamicRootView dynamicRootView, @NonNull com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            this.awB = new ImageView(context);
        } else {
            this.awB = new com.bytedance.sdk.component.adexpress.ba.jFA(context);
        }
        this.awB.setTag(3);
        addView(this.awB, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.awB);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            Drawable oJ = com.bytedance.sdk.component.adexpress.ex.tB.oJ(getContext(), this.BTZ);
            if (oJ != null) {
                this.awB.setBackground(oJ);
            }
            int ex = com.bytedance.sdk.component.utils.cY.ex(getContext(), "tt_close_btn");
            if (ex > 0) {
                ((ImageView) this.awB).setImageResource(ex);
            }
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        int oJ2 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.si());
        View view = this.awB;
        if (view instanceof com.bytedance.sdk.component.adexpress.ba.jFA) {
            ((com.bytedance.sdk.component.adexpress.ba.jFA) view).setRadius((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.awB()));
            ((com.bytedance.sdk.component.adexpress.ba.jFA) this.awB).setStrokeWidth(oJ2);
            ((com.bytedance.sdk.component.adexpress.ba.jFA) this.awB).setStrokeColor(this.BTZ.eZI());
            ((com.bytedance.sdk.component.adexpress.ba.jFA) this.awB).setBgColor(this.BTZ.IUZ());
            ((com.bytedance.sdk.component.adexpress.ba.jFA) this.awB).setDislikeColor(this.BTZ.cFZ());
            ((com.bytedance.sdk.component.adexpress.ba.jFA) this.awB).setDislikeWidth((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, 1.0f));
        }
        return true;
    }
}

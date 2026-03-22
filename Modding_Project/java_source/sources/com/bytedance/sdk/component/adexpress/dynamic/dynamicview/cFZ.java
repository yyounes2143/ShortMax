package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class cFZ extends ba {
    public cFZ(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.oJ oJVar = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.oJ(context);
        this.awB = oJVar;
        oJVar.setTag(Integer.valueOf(getClickArea()));
        addView(this.awB, getWidgetLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        if (com.bytedance.sdk.component.adexpress.ex.ZYk() && "fillButton".equals(this.PiB.kkU().ZYk())) {
            ((TextView) this.awB).setEllipsize(TextUtils.TruncateAt.END);
            ((TextView) this.awB).setMaxLines(1);
            FrameLayout.LayoutParams widgetLayoutParams = super.getWidgetLayoutParams();
            widgetLayoutParams.width -= this.BTZ.Ry() * 2;
            widgetLayoutParams.height -= this.BTZ.Ry() * 2;
            widgetLayoutParams.topMargin += this.BTZ.Ry();
            int Ry = widgetLayoutParams.leftMargin + this.BTZ.Ry();
            widgetLayoutParams.leftMargin = Ry;
            widgetLayoutParams.setMarginStart(Ry);
            widgetLayoutParams.setMarginEnd(widgetLayoutParams.rightMargin);
            return widgetLayoutParams;
        }
        return super.getWidgetLayoutParams();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        if (TextUtils.equals("download-progress-button", this.PiB.kkU().ZYk()) && TextUtils.isEmpty(this.BTZ.kkU())) {
            this.awB.setVisibility(4);
            return true;
        }
        this.awB.setTextAlignment(this.BTZ.so());
        ((TextView) this.awB).setText(this.BTZ.kkU());
        ((TextView) this.awB).setTextColor(this.BTZ.cFZ());
        ((TextView) this.awB).setTextSize(this.BTZ.Pfn());
        ((TextView) this.awB).setGravity(17);
        ((TextView) this.awB).setIncludeFontPadding(false);
        if ("fillButton".equals(this.PiB.kkU().ZYk())) {
            this.awB.setPadding(0, 0, 0, 0);
        } else {
            this.awB.setPadding(this.BTZ.tB(), this.BTZ.ZYk(), this.BTZ.ex(), this.BTZ.oJ());
        }
        return true;
    }
}

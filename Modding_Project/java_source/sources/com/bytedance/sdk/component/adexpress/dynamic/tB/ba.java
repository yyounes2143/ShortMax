package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.Id;
import com.bytedance.sdk.component.adexpress.ba.QSm;
import com.bytedance.sdk.component.adexpress.ba.RZ;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba extends si<com.bytedance.sdk.component.adexpress.ba.ba> {
    public ba(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, int i10, int i11, int i12, JSONObject jSONObject) {
        super(context, pfn, cfz);
        this.ZYk = context;
        this.ex = cfz;
        this.tB = pfn;
        oJ(i10, i11, i12, jSONObject, cfz);
    }

    private void oJ(int i10, int i11, int i12, JSONObject jSONObject, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz) {
        int i13;
        this.oJ = new com.bytedance.sdk.component.adexpress.ba.ba(this.ZYk, i10, i11, i12, jSONObject);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, 300.0f));
        layoutParams.gravity = 81;
        Context context = this.ZYk;
        if (cfz.bgF() > 0) {
            i13 = cfz.bgF();
        } else if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            i13 = 0;
        } else {
            i13 = 120;
        }
        layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, i13);
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setClipChildren(false);
        this.oJ.setSlideText(this.ex.oTd());
        Id id2 = this.oJ;
        if (id2 instanceof com.bytedance.sdk.component.adexpress.ba.ba) {
            ((com.bytedance.sdk.component.adexpress.ba.ba) id2).setShakeText(this.ex.NO());
            final QSm shakeView = ((com.bytedance.sdk.component.adexpress.ba.ba) this.oJ).getShakeView();
            if (shakeView != null) {
                shakeView.setOnShakeViewListener(new RZ.oJ() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.ba.1
                });
                shakeView.setOnClickListener((View.OnClickListener) this.tB.getDynamicClickListener());
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.si
    protected void ex() {
    }
}

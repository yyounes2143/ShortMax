package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.RZ;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class awB implements cFZ<com.bytedance.sdk.component.adexpress.ba.RZ> {
    private String Pfn;
    private Context ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12716ba;
    private int cFZ;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ ex;
    private JSONObject jFA;
    private com.bytedance.sdk.component.adexpress.ba.RZ oJ;

    /* renamed from: so  reason: collision with root package name */
    private int f12717so;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn tB;

    public awB(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, String str, int i10, int i11, int i12, JSONObject jSONObject) {
        this.ZYk = context;
        this.tB = pfn;
        this.ex = cfz;
        this.Pfn = str;
        this.f12716ba = i10;
        this.cFZ = i11;
        this.f12717so = i12;
        this.jFA = jSONObject;
        Pfn();
    }

    private void Pfn() {
        final com.bytedance.sdk.component.adexpress.dynamic.ba.oJ dynamicClickListener = this.tB.getDynamicClickListener();
        try {
            new JSONObject().put("convertActionType", 1);
        } catch (Throwable unused) {
        }
        if ("16".equals(this.Pfn)) {
            Context context = this.ZYk;
            com.bytedance.sdk.component.adexpress.ba.RZ rz = new com.bytedance.sdk.component.adexpress.ba.RZ(context, com.bytedance.sdk.component.adexpress.tB.oJ.so(context), this.f12716ba, this.cFZ, this.f12717so, this.jFA);
            this.oJ = rz;
            if (rz.getShakeLayout() != null) {
                this.oJ.getShakeLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
        } else {
            Context context2 = this.ZYk;
            this.oJ = new com.bytedance.sdk.component.adexpress.ba.RZ(context2, com.bytedance.sdk.component.adexpress.tB.oJ.cFZ(context2), this.f12716ba, this.cFZ, this.f12717so, this.jFA);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.oJ.setGravity(17);
        layoutParams.gravity = 17;
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setTranslationY(com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, this.ex.UK()));
        this.oJ.setShakeText(this.ex.oTd());
        this.oJ.setClipChildren(false);
        this.oJ.setOnShakeViewListener(new RZ.oJ() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.awB.1
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.clearAnimation();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    /* renamed from: ex */
    public com.bytedance.sdk.component.adexpress.ba.RZ tB() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }
}

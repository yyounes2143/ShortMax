package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.ba.HL;
import com.bytedance.sdk.component.utils.cY;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class RZ implements cFZ<HL> {
    private String Pfn;
    private Context ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.ex.kkU f12715ba;
    private com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ ex;
    private HL oJ;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn tB;

    public RZ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, String str, com.bytedance.sdk.component.adexpress.dynamic.ex.kkU kku) {
        this.ZYk = context;
        this.tB = pfn;
        this.ex = cfz;
        this.Pfn = str;
        this.f12715ba = kku;
        Pfn();
    }

    private void Pfn() {
        int bgF = this.ex.bgF();
        final com.bytedance.sdk.component.adexpress.dynamic.ba.oJ dynamicClickListener = this.tB.getDynamicClickListener();
        try {
            new JSONObject().put("convertActionType", 2);
        } catch (Throwable unused) {
        }
        if ("18".equals(this.Pfn)) {
            Context context = this.ZYk;
            HL hl2 = new HL(context, com.bytedance.sdk.component.adexpress.tB.oJ.jFA(context), this.f12715ba);
            this.oJ = hl2;
            if (hl2.getWriggleLayout() != null) {
                this.oJ.getWriggleLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
            if (this.oJ.getTopTextView() != null) {
                if (TextUtils.isEmpty(this.ex.VSB())) {
                    this.oJ.getTopTextView().setText(cY.ZYk(this.ZYk, "tt_splash_wriggle_top_text_style_17"));
                } else {
                    this.oJ.getTopTextView().setText(this.ex.VSB());
                }
            }
        } else {
            Context context2 = this.ZYk;
            this.oJ = new HL(context2, com.bytedance.sdk.component.adexpress.tB.oJ.jFA(context2), this.f12715ba);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.oJ.setTranslationY(-((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.ZYk, bgF)));
        this.oJ.setLayoutParams(layoutParams);
        this.oJ.setShakeText(this.ex.oTd());
        this.oJ.setClipChildren(false);
        final View wriggleProgressIv = this.oJ.getWriggleProgressIv();
        this.oJ.setOnShakeViewListener(new HL.oJ() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.RZ.1
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void ZYk() {
        this.oJ.clearAnimation();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    /* renamed from: ex */
    public HL tB() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.tB.cFZ
    public void oJ() {
        this.oJ.oJ();
    }
}

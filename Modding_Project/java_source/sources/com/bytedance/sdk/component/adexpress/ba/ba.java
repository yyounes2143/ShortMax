package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba extends Id {
    private QSm oJ;

    public ba(Context context, int i10, int i11, int i12, JSONObject jSONObject) {
        super(context);
        oJ(context, i10, i11, i12, jSONObject);
    }

    private void oJ(Context context, int i10, int i11, int i12, JSONObject jSONObject) {
        QSm qSm = new QSm(context, com.bytedance.sdk.component.adexpress.tB.oJ.tB(context), i10, i11, i12, jSONObject);
        this.oJ = qSm;
        addView(qSm);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        this.oJ.setLayoutParams(layoutParams);
    }

    public QSm getShakeView() {
        return this.oJ;
    }

    public void setShakeText(String str) {
        if (this.oJ == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.oJ.setShakeText("");
        } else {
            this.oJ.setShakeText(str);
        }
    }
}

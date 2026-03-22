package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class QSm extends RZ {
    private TextView oJ;

    public QSm(@NonNull Context context, View view, int i10, int i11, int i12, JSONObject jSONObject) {
        super(context, view, i10, i11, i12, jSONObject);
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.RZ
    protected void oJ(Context context, View view) {
        addView(view);
        this.oJ = (TextView) findViewById(2097610747);
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.RZ
    public void setShakeText(String str) {
        if (this.oJ == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            try {
                this.oJ.setText(com.bytedance.sdk.component.utils.cY.ZYk(this.oJ.getContext(), "tt_splash_default_click_shake"));
                return;
            } catch (Exception e10) {
                e10.getMessage();
                return;
            }
        }
        this.oJ.setText(str);
    }
}

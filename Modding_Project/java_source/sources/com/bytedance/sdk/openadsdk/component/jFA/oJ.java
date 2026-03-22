package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.core.so.QSm;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.openadsdk.core.so.oJ {
    private QSm oJ;

    public oJ(@NonNull Context context) {
        super(context);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    protected void oJ(View view, int i10, eZI ezi) {
        QSm qSm = this.oJ;
        if (qSm != null) {
            qSm.oJ(view, i10, ezi);
        }
    }

    public void oJ(QSm qSm) {
        this.oJ = qSm;
        qSm.addView(this, new FrameLayout.LayoutParams(-1, -1));
    }
}

package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.sdk.openadsdk.core.Pfn.ex {
    public tB(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.eZI.JC);
    }

    public void oJ(int i10, cY cYVar) {
        if (cYVar.Br() || (cYVar.jA() && cYVar.Ry())) {
            cdg.oJ((View) this, 0);
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ((int) cdg.oJ(getContext(), i10, true), this, cYVar);
        }
    }
}

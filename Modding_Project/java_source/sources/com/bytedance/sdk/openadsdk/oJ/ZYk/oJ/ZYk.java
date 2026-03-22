package com.bytedance.sdk.openadsdk.oJ.ZYk.oJ;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.RZ;
/* loaded from: classes3.dex */
public class ZYk extends tB {
    public ZYk(@NonNull Context context, cY cYVar, AdSlot adSlot) {
        super(context, cYVar, adSlot);
    }

    public com.bytedance.sdk.openadsdk.multipro.ZYk.oJ ZYk() {
        QSm qSm = this.kkU;
        if (qSm != null) {
            return ((RZ) qSm).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.tB
    protected void oJ() {
        RZ rz = new RZ(((tB) this).f13378so, this.ZYk, ((tB) this).jFA, this.dLZ, false);
        this.kkU = rz;
        this.oJ.oJ(rz.getVideoController());
        tB();
    }
}

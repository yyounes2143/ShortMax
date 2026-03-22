package com.bytedance.sdk.openadsdk.core.kkU.tB;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.si;
import com.bytedance.sdk.openadsdk.core.so.awB;
/* loaded from: classes3.dex */
public class ZYk {
    private Context ZYk;
    private com.bytedance.sdk.openadsdk.core.kkU.tB.oJ ex;
    private tB oJ;
    private cY tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public static tB oJ(Context context, cY cYVar) {
            if (si.oJ(cYVar)) {
                return new ex(context, cYVar);
            }
            return null;
        }
    }

    public ZYk(Context context, cY cYVar) {
        this.ZYk = context;
        this.tB = cYVar;
    }

    public View ZYk() {
        tB tBVar = this.oJ;
        if (tBVar != null) {
            return tBVar.ex();
        }
        return null;
    }

    public void oJ(awB awb) {
        tB oJ2 = oJ.oJ(this.ZYk, this.tB);
        this.oJ = oJ2;
        if (oJ2 != null) {
            oJ2.oJ();
            this.oJ.oJ(awb);
        }
    }

    public void tB() {
        tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.tB();
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.kkU.tB.oJ oJVar) {
        this.ex = oJVar;
        tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.oJ(oJVar);
        }
    }

    public void oJ(int i10) {
        UN Pfn;
        tB tBVar = this.oJ;
        if (!(tBVar instanceof ex) || (Pfn = ((ex) tBVar).Pfn()) == null || Pfn.oJ() == null) {
            return;
        }
        Pfn.oJ().oJ(i10);
    }

    public void oJ() {
        tB tBVar = this.oJ;
        if (tBVar != null) {
            tBVar.ZYk();
        }
    }
}

package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.util.Log;
/* loaded from: classes3.dex */
public class ex extends tB implements com.bytedance.adsdk.ugeno.ex.oJ.ex {
    private com.bytedance.adsdk.ugeno.ex.oJ.tB dLZ;

    public ex(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        com.bytedance.adsdk.ugeno.ex.oJ.oJ cdg = this.ZYk.cdg();
        if (cdg != null) {
            com.bytedance.adsdk.ugeno.ex.oJ.tB oJ = cdg.oJ(this.f11673ba);
            this.dLZ = oJ;
            if (oJ != null) {
                oJ.oJ(this);
                return false;
            }
            cdg.oJ(this.f11673ba, new com.bytedance.adsdk.ugeno.ex.oJ.ZYk());
            return false;
        }
        return false;
    }

    @Override // com.bytedance.adsdk.ugeno.ex.oJ.ex
    public void oJ(String str) {
        Log.d("UGBaseEventMonitor", "receive: ");
        this.oJ.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
    }
}

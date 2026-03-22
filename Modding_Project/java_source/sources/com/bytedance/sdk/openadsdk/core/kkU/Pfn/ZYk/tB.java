package com.bytedance.sdk.openadsdk.core.kkU.Pfn.ZYk;

import android.content.Context;
import com.bytedance.adsdk.ugeno.ex.dLZ;
import java.util.Map;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.adsdk.ugeno.ex.ex.tB {
    private boolean dLZ;

    public tB(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        Map<String, String> map = this.Pfn;
        if (map == null || map.isEmpty()) {
            return false;
        }
        long longValue = ((Long) objArr[0]).longValue() / 1000;
        long longValue2 = ((Long) objArr[1]).longValue() / 1000;
        if (longValue <= 0) {
            this.dLZ = false;
        }
        if (this.Pfn.containsKey("percent")) {
            float oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("percent"), -1.0f);
            if (oJ >= 0.0f) {
                if (((float) longValue) >= (oJ / 100.0f) * ((float) longValue2) && !this.dLZ) {
                    this.dLZ = true;
                    dLZ dlz = this.oJ;
                    if (dlz != null) {
                        dlz.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
                    }
                }
            }
        } else if (longValue >= com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("interval"), -1) && !this.dLZ) {
            this.dLZ = true;
            dLZ dlz2 = this.oJ;
            if (dlz2 != null) {
                dlz2.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
            }
        }
        return true;
    }
}

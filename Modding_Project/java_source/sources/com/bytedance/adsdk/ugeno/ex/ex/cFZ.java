package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import java.util.Map;
/* loaded from: classes3.dex */
public class cFZ extends tB {
    public cFZ(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            int oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(String.valueOf(objArr[0]), 0);
            Map<String, String> map = this.Pfn;
            if (map != null && !map.isEmpty()) {
                if (oJ == com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("type"), 0)) {
                    this.oJ.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
                }
            } else {
                this.oJ.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
            }
        }
        return false;
    }
}

package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class so extends tB {
    private int BTZ;
    private int PiB;
    private int dLZ;

    public so(Context context) {
        super(context);
        this.dLZ = -1;
        this.BTZ = -1;
        this.PiB = -1;
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            int oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(String.valueOf(objArr[0]), -1);
            int oJ2 = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(String.valueOf(objArr[1]), -1);
            int oJ3 = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(String.valueOf(objArr[2]), -1);
            Map<String, String> map = this.Pfn;
            if (map != null && !map.isEmpty()) {
                this.dLZ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("fromIndex"), -1);
                this.BTZ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("toIndex"), -1);
                int oJ4 = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("type"), -1);
                this.PiB = oJ4;
                if (oJ == this.dLZ && oJ2 == this.BTZ && oJ3 == oJ4) {
                    this.oJ.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
                }
            } else {
                HashMap hashMap = new HashMap();
                hashMap.put("fromIndex", Integer.valueOf(oJ));
                hashMap.put("toIndex", Integer.valueOf(oJ2));
                hashMap.put("type", Integer.valueOf(oJ3));
                for (ba.oJ oJVar : this.tB.ZYk()) {
                    oJVar.ZYk(hashMap);
                }
                this.oJ.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
            }
        }
        return false;
    }
}

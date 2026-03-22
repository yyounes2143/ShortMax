package com.bytedance.adsdk.ugeno.ex.oJ;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ {
    private volatile Map<String, tB> oJ = new HashMap();

    public tB oJ(String str) {
        if (this.oJ.containsKey(str) && this.oJ.get(str) != null) {
            return this.oJ.get(str);
        }
        ZYk zYk = new ZYk();
        this.oJ.put(str, zYk);
        return zYk;
    }

    public void oJ(String str, tB tBVar) {
        if (!this.oJ.containsKey(str) || this.oJ.get(str) == null) {
            this.oJ.put(str, tBVar);
        }
    }
}

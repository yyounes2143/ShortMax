package com.bytedance.adsdk.ugeno.ex;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class kkU {
    private static Map<String, cFZ> oJ = new HashMap();

    public static void oJ(List<cFZ> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (cFZ cfz : list) {
            if (cfz != null) {
                oJ.put(cfz.oJ(), cfz);
            }
        }
    }

    public static cFZ oJ(String str) {
        return oJ.get(str);
    }
}

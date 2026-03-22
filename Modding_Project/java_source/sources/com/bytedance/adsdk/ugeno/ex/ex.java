package com.bytedance.adsdk.ugeno.ex;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ex {
    private static Map<String, ZYk> oJ = new HashMap();

    public static void oJ(List<ZYk> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (ZYk zYk : list) {
            if (zYk != null) {
                oJ.put(zYk.oJ(), zYk);
            }
        }
    }

    public static ZYk oJ(String str) {
        return oJ.get(str);
    }
}

package com.bytedance.adsdk.oJ.ZYk.ex;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public enum oJ implements Pfn {
    TRUE,
    FALSE,
    NULL;
    
    private static final Map<String, oJ> ex = new HashMap(128);

    static {
        oJ[] values;
        int i10;
        for (oJ oJVar : values()) {
            ex.put(oJVar.name().toLowerCase(), oJVar);
        }
    }

    public static oJ oJ(String str) {
        return ex.get(str.toLowerCase());
    }
}

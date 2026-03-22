package com.bytedance.adsdk.ZYk;

import java.util.Map;
/* loaded from: classes3.dex */
public class QSm {
    private boolean ZYk;
    private final Map<String, String> oJ;

    public final String ZYk(String str, String str2) {
        if (this.ZYk && this.oJ.containsKey(str2)) {
            return this.oJ.get(str2);
        }
        String oJ = oJ(str, str2);
        if (this.ZYk) {
            this.oJ.put(str2, oJ);
        }
        return oJ;
    }

    public String oJ(String str) {
        return str;
    }

    public String oJ(String str, String str2) {
        return oJ(str2);
    }
}

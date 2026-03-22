package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
/* loaded from: classes3.dex */
public class jr {
    public static String oJ(Context context) {
        int oJ = com.bytedance.sdk.component.utils.HL.oJ(context, 0L);
        if (oJ != 2) {
            if (oJ != 3) {
                if (oJ != 4) {
                    if (oJ != 5) {
                        if (oJ != 6) {
                            return "mobile";
                        }
                        return "5g";
                    }
                    return "4g";
                }
                return "wifi";
            }
            return "3g";
        }
        return "2g";
    }
}

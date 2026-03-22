package com.bytedance.sdk.openadsdk.so;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.XAo;
import java.util.Map;
/* loaded from: classes3.dex */
public final class ex extends oJ {
    public static tB oJ;

    public static String oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, String str) {
        if (!XAo.tB()) {
            return str;
        }
        tB oJ2 = ZYk.oJ("net");
        if (oJ2 == null) {
            return str;
        }
        Map map = (Map) oJ2.oJ(1, str);
        if (map == null) {
            return str;
        }
        String str2 = (String) map.get("url");
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        Map map2 = (Map) map.get("header");
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                tBVar.ZYk(str3, (String) map2.get(str3));
            }
        }
        return str;
    }
}

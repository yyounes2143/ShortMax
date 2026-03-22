package com.bytedance.adsdk.ugeno.tB;

import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.Pfn;
import com.bytedance.adsdk.ugeno.tB.oJ;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    public static String oJ(String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                if (str.startsWith("${") && str.endsWith("}")) {
                    oJ tB = Pfn.oJ().tB();
                    if (tB == null) {
                        return str;
                    }
                    oJ.InterfaceC0151oJ oJ = tB.oJ(str.substring(2, str.length() - 1));
                    if (oJ == null) {
                        return str;
                    }
                    return (String) oJ.oJ(jSONObject);
                }
            } catch (Throwable unused) {
            }
        }
        return str;
    }
}

package com.bytedance.sdk.openadsdk.core.kkU.ba;

import android.content.Context;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.Ry;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn {
    private final String oJ = "UGenV3OpenLinks";
    private final String ZYk = "landingStyle";
    private final String tB = "url";
    private final String ex = "fallbackUrl";

    public void oJ(Context context, boolean z10, cY cYVar, String str, Map<String, String> map, com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        if (map == null || map.isEmpty()) {
            return;
        }
        try {
            if (oJ(Integer.parseInt(map.get("landingStyle")), map.get("url"), map.get("fallbackUrl"))) {
                Ry.oJ(context, z10, oJ(map), cYVar, str, HyG.oJ(str), null, pfn);
            }
        } catch (Throwable th2) {
            QSm.tB("UGenV3OpenLinks", th2.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0008, code lost:
        if (r4 != 3) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean oJ(int r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            r0 = 0
            r1 = 1
            if (r4 == r1) goto L1f
            r2 = 2
            if (r4 == r2) goto Lb
            r6 = 3
            if (r4 == r6) goto L1f
            goto L26
        Lb:
            boolean r4 = android.text.TextUtils.isEmpty(r5)
            if (r4 == 0) goto L18
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            if (r4 == 0) goto L18
            goto L27
        L18:
            boolean r4 = com.bytedance.sdk.component.utils.Ry.oJ(r6)
            if (r4 != 0) goto L26
            goto L27
        L1f:
            boolean r4 = com.bytedance.sdk.component.utils.Ry.oJ(r5)
            if (r4 != 0) goto L26
            goto L27
        L26:
            r0 = r1
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.kkU.ba.Pfn.oJ(int, java.lang.String, java.lang.String):boolean");
    }

    private JSONObject oJ(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }
}

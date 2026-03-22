package com.bytedance.sdk.openadsdk.RZ.oJ.oJ;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.PiB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    public static boolean oJ(Context context, String str, cY cYVar) {
        String oJ = HyG.oJ(cYVar);
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, oJ, 1, null);
        Intent oJ2 = oJ(context, str);
        if (!TextUtils.isEmpty(str) && oJ2 != null) {
            boolean ex = HyG.ex(context);
            HashMap hashMap = new HashMap();
            hashMap.put("url", str);
            if (ex) {
                HyG.ZYk oJ3 = HyG.oJ(context, oJ2);
                if (oJ3.ZYk > 0) {
                    try {
                        oJ(context, cYVar, hashMap);
                        hashMap.put("matched_count", Integer.valueOf(oJ3.ZYk));
                        ComponentName componentName = oJ3.oJ;
                        if (componentName != null) {
                            oJ2.setComponent(componentName);
                        }
                    } catch (Throwable th2) {
                        QSm.tB("DeepLinkUtils", th2.getMessage());
                    }
                } else {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, oJ2.toString());
                        jSONObject.put("can_query_install", 1);
                    } catch (Exception unused) {
                    }
                    com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, oJ, -3, jSONObject);
                    return false;
                }
            }
            try {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, oJ, "open_url_app", hashMap);
                context.startActivity(oJ2);
                PiB.oJ().oJ(hashMap).oJ(cYVar, oJ);
                com.bytedance.sdk.openadsdk.ex.tB.oJ("dp_start_act_success", cYVar, oJ, hashMap);
                return true;
            } catch (Throwable th3) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("exception", th3.getMessage());
                    jSONObject2.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, oJ2.toString());
                    jSONObject2.put("can_query_install", ex ? 1 : 0);
                } catch (Exception unused2) {
                }
                com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, oJ, -4, jSONObject2);
                return false;
            }
        }
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, oJ, -2, cYVar.TNk().ex());
        return false;
    }

    private static Intent oJ(Context context, String str) {
        try {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent.setData(parse);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            return intent;
        } catch (Throwable th2) {
            QSm.tB("DeepLinkUtils", th2.getMessage());
            return null;
        }
    }

    private static void oJ(Context context, cY cYVar, Map<String, Object> map) {
        if (cYVar != null && cYVar.GSK() == 0) {
            map.put("auto_click", Boolean.valueOf(!cYVar.WcQ()));
        }
        map.put("can_query_install", Integer.valueOf(HyG.ex(context) ? 1 : 0));
    }
}

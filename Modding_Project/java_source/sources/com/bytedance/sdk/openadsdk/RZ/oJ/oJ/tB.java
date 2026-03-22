package com.bytedance.sdk.openadsdk.RZ.oJ.oJ;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.XAo;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.PiB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    public static boolean oJ() {
        return com.bytedance.sdk.openadsdk.oq.oJ.oJ("deeplink_utils_new", 0) == 1;
    }

    public static boolean oJ(Context context, String str, cY cYVar, int i10, Map<String, Object> map, boolean z10) {
        String oJ = HyG.oJ(cYVar);
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, oJ, 1, null);
        Intent oJ2 = oJ(context, str, cYVar);
        if (!TextUtils.isEmpty(str) && oJ2 != null) {
            boolean ex = HyG.ex(context);
            if (map == null) {
                map = new HashMap<>();
            }
            if (cYVar != null && cYVar.GSK() == 0) {
                map.put("auto_click", Boolean.valueOf(!cYVar.WcQ()));
            }
            map.put("can_query_install", Integer.valueOf(ex ? 1 : 0));
            map.put("url", str);
            if (ex) {
                HyG.ZYk oJ3 = HyG.oJ(context, oJ2);
                if (oJ3.ZYk > 0) {
                    try {
                        oJ(context, cYVar, map);
                        map.put("matched_count", Integer.valueOf(oJ3.ZYk));
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
            if (si.ex().so()) {
                HyG.oJ(cYVar, oJ);
            }
            try {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, oJ, "open_url_app", map);
                context.startActivity(oJ2);
                PiB.oJ().oJ(map).oJ(cYVar, oJ);
                com.bytedance.sdk.openadsdk.ex.tB.oJ("dp_start_act_success", cYVar, oJ, map);
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
                if (ex && !si.ex().so()) {
                    XAo.oJ(context, cYVar.Oof(), cYVar, i10, oJ, z10);
                }
                return false;
            }
        }
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, oJ, -2, cYVar.TNk().ex());
        return false;
    }

    private static Intent oJ(Context context, String str, cY cYVar) {
        try {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent.setData(parse);
            if (cYVar != null && cYVar.hZN() != null && !TextUtils.isEmpty(cYVar.hZN().ex())) {
                intent.setPackage(cYVar.hZN().ex());
            }
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

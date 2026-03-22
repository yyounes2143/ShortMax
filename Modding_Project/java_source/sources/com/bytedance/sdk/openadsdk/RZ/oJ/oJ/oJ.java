package com.bytedance.sdk.openadsdk.RZ.oJ.oJ;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.PiB;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends ex {
    public oJ(Context context, String str) {
        super(context, str);
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex
    public boolean ZYk(cY cYVar) {
        boolean z10;
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, 1, null);
        if (cYVar.TNk() != null) {
            HashMap hashMap = new HashMap();
            if (cYVar.GSK() == 0) {
                if (this.ex >= 11) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                hashMap.put("dpl_probability_jump", Boolean.valueOf(z10));
            }
            if (oJ(cYVar.TNk().oJ(), oJ(), this.oJ, cYVar, hashMap)) {
                return true;
            }
            if (!this.ZYk || this.tB.get()) {
                this.ZYk = true;
                oJ(cYVar, hashMap);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, this.oJ, "open_fallback_url", hashMap);
            }
        } else {
            com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, this.oJ, -1, null);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex, com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba
    public boolean oJ(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.model.ba Wd;
        HashMap hashMap;
        if (cYVar == null || (Wd = cYVar.Wd()) == null) {
            return false;
        }
        if (cYVar.GSK() == 0) {
            hashMap = new HashMap();
            hashMap.put("dpl_probability_jump", Boolean.valueOf(this.ex >= 11));
        } else {
            hashMap = null;
        }
        return oJ(cYVar, Wd.tB(), oJ(), this.oJ, hashMap);
    }

    public static boolean oJ(cY cYVar, String str, Context context, String str2, Map<String, Object> map) {
        Intent oJ;
        if (cYVar != null && cYVar.Tvw() == 0) {
            return false;
        }
        try {
            if (TextUtils.isEmpty(str) || (oJ = HyG.oJ(context, str)) == null) {
                return false;
            }
            oJ.putExtra("START_ONLY_FOR_ANDROID", true);
            if (!(context instanceof Activity)) {
                oJ.addFlags(268435456);
            }
            context.startActivity(oJ);
            if (map == null) {
                map = new HashMap<>();
            }
            oJ(cYVar, map);
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str2, "click_open", map);
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    private static void oJ(cY cYVar, Map<String, Object> map) {
        if (map == null) {
            return;
        }
        if (cYVar != null && cYVar.GSK() == 0) {
            map.put("auto_click", Boolean.valueOf(!cYVar.WcQ()));
        }
        map.put("can_query_install", 0);
    }

    public static boolean oJ(String str, Context context, String str2, cY cYVar, Map<String, Object> map) {
        Intent intent = null;
        try {
        } catch (Throwable th2) {
            th = th2;
        }
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            try {
                intent2.setData(parse);
                if (!(context instanceof Activity)) {
                    intent2.addFlags(268435456);
                }
                if (map == null) {
                    map = new HashMap<>();
                }
                oJ(cYVar, map);
                map.put("url", str);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str2, "open_url_app", map);
                context.startActivity(intent2);
                PiB.oJ().oJ(map).oJ(cYVar, str2);
                com.bytedance.sdk.openadsdk.ex.tB.oJ("dp_start_act_success", cYVar, str2, map);
                return true;
            } catch (Throwable th3) {
                th = th3;
                intent = intent2;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("exception", th.getMessage());
                    if (intent != null) {
                        jSONObject.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, intent.toString());
                    }
                    jSONObject.put("can_query_install", 0);
                } catch (Exception unused) {
                }
                com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, str2, -4, jSONObject);
                return false;
            }
        }
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar, str2, -2, null);
        return false;
    }
}

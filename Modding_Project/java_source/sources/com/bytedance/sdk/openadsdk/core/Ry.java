package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Ry {
    public static void oJ(Context context, boolean z10, JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, int i10, WebView webView, com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        boolean z11;
        int optInt = jSONObject.optInt("landingStyle");
        String optString = jSONObject.optString("url");
        String optString2 = jSONObject.optString("fallback_url");
        String optString3 = jSONObject.optString("title", "");
        boolean z12 = false;
        if (jSONObject.optInt("only_loading", 0) == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        try {
            jSONObject.put("is_activity", z10);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, 1, jSONObject);
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        if (optInt == 0) {
            if (webView != null) {
                webView.loadUrl(optString);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, 2, (JSONObject) null);
            } else {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, -1, (JSONObject) null);
            }
        } else if (optInt != 1 && optInt != 8) {
            if (optInt == 2) {
                if (!com.bytedance.sdk.openadsdk.utils.Id.ZYk(context, optString, cYVar, str)) {
                    com.bytedance.sdk.openadsdk.awB.oJ.ZYk zYk = new com.bytedance.sdk.openadsdk.awB.oJ.ZYk();
                    zYk.oJ(ZYk.oJ.ZYk);
                    zYk.oJ(cYVar);
                    zYk.ZYk(str);
                    zYk.oJ(-1);
                    zYk.oJ(false);
                    zYk.ZYk(cYVar.sQ());
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(zYk);
                    HashMap hashMap = new HashMap();
                    hashMap.put("deeplink_url", optString);
                    hashMap.put("fallback_url", optString2);
                    hashMap.put("jsb_deeplink", 1);
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "open_fallback_url", hashMap);
                    com.bytedance.sdk.openadsdk.utils.Id.oJ(context, optString2, cYVar, ZYk.oJ.ZYk);
                }
            } else {
                if (optInt == 3) {
                    RZ rz = new RZ(cYVar);
                    rz.oJ(optString3);
                    rz.oJ(z11);
                    XAo.oJ(context, optString, cYVar, i10, str, false, rz);
                }
                if (pfn == null && z12) {
                    pfn.oJ();
                    return;
                }
            }
        } else {
            com.bytedance.sdk.openadsdk.awB.oJ.ZYk zYk2 = new com.bytedance.sdk.openadsdk.awB.oJ.ZYk();
            zYk2.oJ(ZYk.oJ.ZYk);
            zYk2.oJ(cYVar);
            zYk2.ZYk(str);
            zYk2.oJ(-1);
            zYk2.oJ(false);
            zYk2.ZYk(cYVar.sQ());
            com.bytedance.sdk.openadsdk.ex.tB.oJ(zYk2);
            com.bytedance.sdk.openadsdk.utils.Id.oJ(context, optString, cYVar, ZYk.oJ.ZYk);
        }
        z12 = true;
        if (pfn == null) {
        }
    }
}

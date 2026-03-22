package com.bytedance.adsdk.ugeno.ex;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.ex.ba;
import java.util.HashMap;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    public static ba.oJ oJ(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ba.oJ oJVar = new ba.oJ();
        String oJ = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(str, jSONObject);
        Uri parse = Uri.parse(oJ);
        if (parse == null) {
            return null;
        }
        oJVar.tB(oJ);
        if (!TextUtils.isEmpty(parse.getScheme())) {
            oJVar.oJ(parse.getScheme());
        }
        String authority = parse.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            authority = parse.getPath();
        }
        oJVar.ZYk(authority);
        oJVar.ex(oJVar.oJ() + "://" + oJVar.ZYk());
        HashMap hashMap = new HashMap();
        Set<String> queryParameterNames = parse.getQueryParameterNames();
        if (queryParameterNames != null && queryParameterNames.size() > 0) {
            for (String str2 : queryParameterNames) {
                hashMap.put(str2, com.bytedance.adsdk.ugeno.tB.ZYk.oJ(parse.getQueryParameter(str2), jSONObject));
            }
        }
        oJVar.oJ(hashMap);
        return oJVar;
    }
}

package com.apm.insight.runtime;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: NpthConfig.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static JSONObject f7207a = new JSONObject();

    public static void a(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            String a10 = a.a(jSONObject);
            File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/configCrash/configNative");
            if (a10 != null) {
                JSONObject jSONObject2 = new JSONObject(a10);
                f7207a = jSONObject2;
                com.apm.insight.l.f.a(file, b(jSONObject2));
                return;
            }
            f7207a = new JSONObject();
        } catch (JSONException unused) {
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
    }

    private static JSONObject b(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        e eVar = new e();
        JSONObject jSONObject2 = new JSONObject();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!"configType".equals(next)) {
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                if (optJSONObject == null) {
                    com.apm.insight.c.a();
                    j.a(new IllegalArgumentException("err config with key: ".concat(String.valueOf(next))), "NPTH_CATCH");
                } else if (a(optJSONObject.optJSONArray("disable"), eVar)) {
                    com.apm.insight.a.a((Object) "match diable ".concat(String.valueOf(next)));
                } else {
                    JSONArray b10 = b(optJSONObject.optJSONArray("enable"), eVar);
                    if (!com.apm.insight.a.a(b10)) {
                        try {
                            jSONObject2.put(next, new JSONObject().put("enable", b10));
                        } catch (JSONException unused) {
                        }
                    } else {
                        com.apm.insight.a.a((Object) "not match ".concat(String.valueOf(next)));
                    }
                }
            }
        }
        return jSONObject2;
    }

    public static boolean a(String str, e eVar) {
        JSONObject optJSONObject;
        JSONObject jSONObject = f7207a;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject(str)) == null || a(optJSONObject.optJSONArray("disable"), eVar)) {
            return false;
        }
        return a(optJSONObject.optJSONArray("enable"), eVar);
    }

    private static boolean a(JSONArray jSONArray, e eVar) {
        if (com.apm.insight.a.a(jSONArray)) {
            return false;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i10);
            if (optJSONObject == null) {
                com.apm.insight.c.a();
                j.a(new IllegalArgumentException("err config: ".concat(String.valueOf(jSONArray))), "NPTH_CATCH");
            } else if (a(optJSONObject, eVar)) {
                return true;
            }
        }
        return false;
    }

    private static JSONArray b(JSONArray jSONArray, e eVar) {
        JSONArray jSONArray2 = new JSONArray();
        if (com.apm.insight.a.a(jSONArray)) {
            return jSONArray2;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i10);
            if (optJSONObject == null) {
                com.apm.insight.c.a();
                j.a(new IllegalArgumentException("err config: ".concat(String.valueOf(jSONArray))), "NPTH_CATCH");
            } else if (a(optJSONObject, eVar)) {
                jSONArray2.put(optJSONObject);
            }
        }
        return jSONArray2;
    }

    private static boolean a(JSONObject jSONObject, e eVar) {
        Iterator<String> keys = jSONObject.keys();
        boolean z10 = false;
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.isEmpty(next)) {
                if (next.startsWith("header_")) {
                    if (!a(jSONObject.optJSONObject(next), eVar.b(next.substring(7)))) {
                        com.apm.insight.a.a((Object) "not match ".concat(next));
                        return false;
                    }
                } else if (next.startsWith("java_")) {
                    if (!a(jSONObject.optJSONObject(next), eVar.a(next.substring(5)))) {
                        com.apm.insight.a.a((Object) "not match ".concat(next));
                        return false;
                    }
                } else {
                    com.apm.insight.a.a((Object) "no rules match ".concat(next));
                }
                z10 = true;
            }
        }
        return z10;
    }

    private static boolean a(JSONObject jSONObject, Object obj) {
        JSONArray optJSONArray = jSONObject.optJSONArray("values");
        if (optJSONArray.length() == 0) {
            return false;
        }
        String optString = jSONObject.optString("op");
        String valueOf = String.valueOf(obj);
        if (optString.equals(ContainerUtils.KEY_VALUE_DELIMITER)) {
            return valueOf.equals(String.valueOf(optJSONArray.opt(0)));
        }
        if (optString.equals(ScarConstants.IN_SIGNAL_KEY)) {
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                if (String.valueOf(optJSONArray.opt(i10)).equals(valueOf)) {
                    return true;
                }
            }
        }
        return false;
    }
}

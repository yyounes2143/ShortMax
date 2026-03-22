package hb;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class i {
    public static Map<String, List<f>> a(Context context, String str) {
        if (context == null) {
            return null;
        }
        Map<String, ?> c10 = l.c(context, str);
        g(c10);
        return c(c10);
    }

    public static Map<String, List<f>> b(Context context, String str, String str2) {
        Map<String, List<f>> a10;
        Map<String, List<f>> a11;
        if (!"alltype".equals(str2) && !TextUtils.isEmpty(str)) {
            String d10 = o0.d(str, str2);
            a10 = f(context, "stat_v2_1", d10);
            a11 = f(context, "cached_v2_1", d10);
        } else {
            f1.h("hmsSdk", "read all event records");
            a10 = a(context, "stat_v2_1");
            a11 = a(context, "cached_v2_1");
        }
        return d(a10, a11);
    }

    private static Map<String, List<f>> c(Map<String, ?> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            String key = entry.getKey();
            if (entry.getValue() instanceof String) {
                e(key, (String) entry.getValue(), hashMap);
            }
        }
        return hashMap;
    }

    private static Map<String, List<f>> d(Map<String, List<f>> map, Map<String, List<f>> map2) {
        if (map.size() == 0 && map2.size() == 0) {
            return new HashMap();
        }
        if (map.size() == 0) {
            return map2;
        }
        if (map2.size() == 0) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        hashMap.putAll(map2);
        return hashMap;
    }

    private static void e(String str, String str2, Map<String, List<f>> map) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str2);
            if (jSONArray.length() == 0) {
                return;
            }
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                f fVar = new f();
                try {
                    fVar.c(jSONArray.getJSONObject(i10));
                    arrayList.add(fVar);
                } catch (JSONException unused) {
                    f1.l("hmsSdk", "JSON Exception happened when create data for report - readDataToRecord");
                }
            }
            map.put(str, arrayList);
        } catch (JSONException unused2) {
            f1.l("hmsSdk", "When events turn to JSONArray,JSON Exception has happened");
        }
    }

    public static Map<String, List<f>> f(Context context, String str, String str2) {
        String b10 = l.b(context, str, str2, "");
        HashMap hashMap = new HashMap();
        e(str2, b10, hashMap);
        return hashMap;
    }

    private static void g(Map<String, ?> map) {
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        Set<String> f10 = o0.f(v0.c());
        while (it.hasNext()) {
            if (!f10.contains(it.next().getKey())) {
                it.remove();
            }
        }
    }
}

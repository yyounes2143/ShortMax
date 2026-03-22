package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import android.util.Log;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: EventLibraryDecorate.java */
/* loaded from: classes5.dex */
public class d implements com.mbridge.msdk.tracker.d {
    private static void a(Map<String, String> map, StringBuilder sb2) {
    }

    static String b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> keys = jSONObject.keys();
        int i10 = 0;
        while (keys.hasNext()) {
            String next = keys.next();
            i10++;
            if (i10 <= jSONObject.length() - 1) {
                sb2.append(next);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(a(String.valueOf(jSONObject.opt(next))));
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            } else {
                sb2.append(next);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(a(String.valueOf(jSONObject.opt(next))));
            }
        }
        return sb2.toString();
    }

    @Override // com.mbridge.msdk.tracker.d
    public Map<String, String> a(com.mbridge.msdk.tracker.m mVar, List<com.mbridge.msdk.tracker.i> list, JSONObject jSONObject) {
        StringBuilder sb2;
        Map<String, String> map;
        if (list != null && !list.isEmpty()) {
            try {
                c.a(jSONObject);
                map = a(jSONObject);
                if (map == null) {
                    try {
                        map = new HashMap();
                    } catch (Exception unused) {
                        sb2 = null;
                        a(map, sb2);
                        return null;
                    } catch (Throwable unused2) {
                        sb2 = null;
                        a(map, sb2);
                        return null;
                    }
                }
                sb2 = a(list);
            } catch (Exception unused3) {
                sb2 = null;
                map = null;
            } catch (Throwable unused4) {
                sb2 = null;
                map = null;
            }
            try {
                map.put("tun", String.valueOf(l0.z()));
                map.put("data", sb2.toString());
                return map;
            } catch (Exception unused5) {
                a(map, sb2);
                return null;
            } catch (Throwable unused6) {
                a(map, sb2);
                return null;
            }
        }
        return null;
    }

    static Map<String, String> a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, String.valueOf(jSONObject.opt(next)));
        }
        return hashMap;
    }

    private static StringBuilder a(List<com.mbridge.msdk.tracker.i> list) {
        com.mbridge.msdk.tracker.e a10;
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.mbridge.msdk.tracker.i iVar = list.get(i10);
            if (iVar != null && (a10 = iVar.a()) != null) {
                JSONObject d10 = a10.d();
                c.a(d10);
                if (d10 == null) {
                    d10 = new JSONObject();
                }
                try {
                    try {
                        d10.put(CampaignEx.JSON_KEY_ST_TS, a10.g());
                        d10.put("rts", System.currentTimeMillis());
                        String d11 = iVar.d();
                        if (!TextUtils.isEmpty(d11)) {
                            d10.put("reason_lib", d11);
                        }
                        int c10 = iVar.c() - 1;
                        if (c10 >= 1) {
                            d10.put("retryed", c10);
                        }
                        long a11 = a10.a();
                        if (a11 > 0) {
                            d10.put("duration", a11);
                        }
                    } catch (Exception e10) {
                        if (com.mbridge.msdk.tracker.a.f30196a) {
                            Log.e("TrackManager", "decorateRequestParams: ", e10);
                        }
                    }
                    sb2.append(b(d10));
                    if (i10 < list.size() - 1) {
                        sb2.append("\n");
                    }
                } catch (Throwable th2) {
                    sb2.append(b(d10));
                    throw th2;
                }
            }
        }
        return sb2;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}

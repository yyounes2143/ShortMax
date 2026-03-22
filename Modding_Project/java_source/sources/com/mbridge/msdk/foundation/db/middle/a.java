package com.mbridge.msdk.foundation.db.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.g;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.x0;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FrequencyDaoMiddle.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f26793a = "FrequencyDaoMiddle";

    /* renamed from: b  reason: collision with root package name */
    private static a f26794b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f26795c = "FrequencyDaoMiddle";

    /* renamed from: d  reason: collision with root package name */
    private static JSONArray f26796d = new JSONArray();

    private a() {
        c();
    }

    public static a b() {
        if (f26794b == null) {
            synchronized (a.class) {
                try {
                    if (f26794b == null) {
                        f26794b = new a();
                    }
                } finally {
                }
            }
        }
        return f26794b;
    }

    private void c() {
        try {
            String str = (String) x0.a(c.m().d(), f26795c, f26796d.toString());
            if (!TextUtils.isEmpty(str)) {
                f26796d = new JSONArray(str);
            }
        } catch (Exception e10) {
            p0.b(f26793a, e10.getMessage());
        }
    }

    private void d() {
        try {
            if (f26796d != null) {
                x0.b(c.m().d(), f26795c, f26796d.toString());
            }
        } catch (Exception e10) {
            p0.b(f26793a, e10.getMessage());
        }
    }

    public void a(g gVar) {
        JSONObject a10;
        if (gVar == null || (a10 = a(gVar.a(), gVar.c(), gVar.d(), gVar.f(), gVar.e(), gVar.b())) == null) {
            return;
        }
        if (f26796d == null) {
            f26796d = new JSONArray();
        }
        f26796d.put(a10);
        d();
    }

    public void a(String str) {
        if (f26796d != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < f26796d.length(); i10++) {
                try {
                    JSONObject jSONObject = f26796d.getJSONObject(i10);
                    if (jSONObject != null) {
                        if (jSONObject.optString("id", "").equals(str)) {
                            jSONObject.put("impression_count", jSONObject.optInt("impression_count", 0) + 1);
                            jSONArray.put(jSONObject);
                        } else {
                            jSONArray.put(jSONObject);
                        }
                    }
                } catch (JSONException e10) {
                    p0.b(f26793a, e10.getMessage());
                }
            }
            if (jSONArray.length() > 0) {
                f26796d = jSONArray;
            }
            d();
        }
    }

    public String[] a() {
        ArrayList arrayList = new ArrayList();
        if (f26796d != null) {
            for (int i10 = 0; i10 < f26796d.length(); i10++) {
                try {
                    JSONObject jSONObject = f26796d.getJSONObject(i10);
                    if (jSONObject != null && jSONObject.optInt("fc_a") < jSONObject.optInt("impression_count")) {
                        arrayList.add(jSONObject.optString("id"));
                    }
                } catch (JSONException e10) {
                    p0.b(f26793a, e10.getMessage());
                }
            }
        }
        String[] strArr = new String[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            strArr[i11] = (String) arrayList.get(i11);
        }
        return strArr;
    }

    public void a(long j10) {
        if (f26796d != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < f26796d.length(); i10++) {
                try {
                    JSONObject jSONObject = f26796d.getJSONObject(i10);
                    if (jSONObject != null && jSONObject.optInt(CampaignEx.JSON_KEY_ST_TS) >= j10) {
                        jSONArray.put(jSONObject);
                    }
                } catch (JSONException e10) {
                    p0.b(f26793a, e10.getMessage());
                }
            }
            if (jSONArray.length() > 0) {
                f26796d = jSONArray;
            }
        }
        d();
    }

    private JSONObject a(String str, int i10, int i11, long j10, int i12, int i13) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e10) {
            e = e10;
            jSONObject = null;
        }
        try {
            jSONObject.put("id", str);
            jSONObject.put("fc_a", i10);
            jSONObject.put("fc_b", i11);
            jSONObject.put(CampaignEx.JSON_KEY_ST_TS, j10);
            jSONObject.put("impression_count", i12);
            jSONObject.put("click_count", i13);
        } catch (Exception e11) {
            e = e11;
            p0.b(f26793a, e.getMessage());
            return jSONObject;
        }
        return jSONObject;
    }
}

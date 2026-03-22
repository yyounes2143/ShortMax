package com.mbridge.msdk.foundation.controller;

import android.util.Log;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: CandidateController.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, com.mbridge.msdk.foundation.cache.d> f26722a;

    /* compiled from: CandidateController.java */
    /* renamed from: com.mbridge.msdk.foundation.controller.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class C0365b {

        /* renamed from: a  reason: collision with root package name */
        static b f26723a = new b();
    }

    public static b a() {
        return C0365b.f26723a;
    }

    public com.mbridge.msdk.foundation.cache.d b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        Exception e10;
        if (this.f26722a == null) {
            this.f26722a = new HashMap<>();
        }
        if (!this.f26722a.containsKey(str)) {
            if (jSONArray == null) {
                try {
                    jSONArray2 = new JSONArray();
                } catch (Exception e11) {
                    jSONArray2 = jSONArray;
                    e10 = e11;
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("c_cb", 0);
                    jSONObject.put("t_disc", 0.95d);
                    jSONObject.put("u_disc", 0.95d);
                    jSONObject.put("max_ecppv_diff", 0);
                    jSONObject.put("max_cache_num", 20);
                    jSONObject.put("max_usage_limit", 10);
                    jSONObject.put("time_interval", 7200);
                    jSONArray2.put(jSONObject);
                } catch (Exception e12) {
                    e10 = e12;
                    Log.e("CandidateController", e10.getMessage());
                    jSONArray = jSONArray2;
                    return a(str, jSONArray);
                }
                jSONArray = jSONArray2;
            }
            return a(str, jSONArray);
        }
        return this.f26722a.get(str);
    }

    private b() {
        this.f26722a = new HashMap<>();
    }

    public com.mbridge.msdk.foundation.cache.d a(String str, JSONArray jSONArray) {
        if (this.f26722a == null) {
            this.f26722a = new HashMap<>();
        }
        if (this.f26722a.containsKey(str)) {
            return this.f26722a.get(str);
        }
        com.mbridge.msdk.foundation.cache.d dVar = new com.mbridge.msdk.foundation.cache.d(str, jSONArray);
        this.f26722a.put(str, dVar);
        return dVar;
    }
}

package com.mbridge.msdk.videocommon.setting;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: RewardSetting.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Integer> f31670a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, com.mbridge.msdk.videocommon.entity.c> f31671b;

    /* renamed from: c  reason: collision with root package name */
    private long f31672c;

    /* renamed from: d  reason: collision with root package name */
    private long f31673d;

    /* renamed from: e  reason: collision with root package name */
    private long f31674e;

    /* renamed from: f  reason: collision with root package name */
    private long f31675f;

    /* renamed from: g  reason: collision with root package name */
    private long f31676g;

    /* renamed from: h  reason: collision with root package name */
    private long f31677h;

    /* renamed from: j  reason: collision with root package name */
    private String f31679j;

    /* renamed from: i  reason: collision with root package name */
    private int f31678i = 0;

    /* renamed from: k  reason: collision with root package name */
    private String f31680k = "";

    /* renamed from: l  reason: collision with root package name */
    private String f31681l = "";

    public String a() {
        return this.f31679j;
    }

    public void b(String str) {
        this.f31679j = str;
    }

    public void c(String str) {
        this.f31681l = str;
    }

    public void d(String str) {
        this.f31680k = str;
    }

    public void e(long j10) {
        this.f31673d = j10;
    }

    public String f() {
        return this.f31681l;
    }

    public Map<String, com.mbridge.msdk.videocommon.entity.c> g() {
        return this.f31671b;
    }

    public long h() {
        return this.f31673d * 1000;
    }

    public long i() {
        return this.f31676g;
    }

    public String j() {
        return this.f31680k;
    }

    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map<String, Integer> map = this.f31670a;
            if (map != null && map.size() > 0) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, Integer> entry : this.f31670a.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue().intValue());
                    }
                    jSONObject.put("caplist", jSONObject2);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            Map<String, com.mbridge.msdk.videocommon.entity.c> map2 = this.f31671b;
            if (map2 != null && map2.size() > 0) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, com.mbridge.msdk.videocommon.entity.c> entry2 : this.f31671b.entrySet()) {
                        JSONObject jSONObject3 = new JSONObject();
                        String key = entry2.getKey();
                        com.mbridge.msdk.videocommon.entity.c value = entry2.getValue();
                        if (value != null) {
                            jSONObject3.put("name", value.c());
                            jSONObject3.put("amount", value.a());
                            jSONObject3.put("id", key);
                        }
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put(AdmobPreloadConfig.REWARD, jSONArray);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            jSONObject.put("getpf", this.f31672c);
            jSONObject.put("ruct", this.f31673d);
            jSONObject.put(CampaignEx.JSON_KEY_PLCT, this.f31674e);
            jSONObject.put("dlct", this.f31675f);
            jSONObject.put("vcct", this.f31676g);
            jSONObject.put("current_time", this.f31677h);
            jSONObject.put("vtag", this.f31680k);
            jSONObject.put("isDefault", this.f31678i);
            return jSONObject;
        } catch (Exception e12) {
            e12.printStackTrace();
            return jSONObject;
        }
    }

    public void a(long j10) {
        this.f31677h = j10;
    }

    public void b(long j10) {
        this.f31675f = j10;
    }

    public void c(long j10) {
        this.f31672c = j10;
    }

    public long d() {
        return this.f31672c * 1000;
    }

    public long e() {
        return this.f31674e * 1000;
    }

    public void f(long j10) {
        this.f31676g = j10;
    }

    public void a(Map<String, Integer> map) {
        this.f31670a = map;
    }

    public long b() {
        return this.f31677h;
    }

    public long c() {
        return this.f31675f;
    }

    public void d(long j10) {
        this.f31674e = j10;
    }

    public void a(int i10) {
        this.f31678i = i10;
    }

    public void b(Map<String, com.mbridge.msdk.videocommon.entity.c> map) {
        this.f31671b = map;
    }

    public static a a(String str) {
        a aVar;
        a aVar2 = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                aVar = new a();
            } catch (Exception e10) {
                e = e10;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                JSONObject optJSONObject = jSONObject.optJSONObject("caplist");
                aVar.b(jSONObject.optString("ab_id", ""));
                aVar.c(jSONObject.optString("rid", ""));
                if (optJSONObject != null && optJSONObject.length() > 0) {
                    HashMap hashMap = new HashMap();
                    Iterator<String> keys = optJSONObject.keys();
                    while (keys != null && keys.hasNext()) {
                        String next = keys.next();
                        int optInt = optJSONObject.optInt(next, 1000);
                        if (!TextUtils.isEmpty(next)) {
                            if (!TextUtils.isEmpty(next) && optInt == 0) {
                                hashMap.put(next, 1000);
                            } else {
                                hashMap.put(next, Integer.valueOf(optInt));
                            }
                        }
                    }
                    aVar.a(hashMap);
                }
                aVar.b(com.mbridge.msdk.videocommon.entity.c.a(jSONObject.optJSONArray(AdmobPreloadConfig.REWARD)));
                aVar.c(jSONObject.optLong("getpf", 43200L));
                aVar.e(jSONObject.optLong("ruct", 5400L));
                aVar.d(jSONObject.optLong(CampaignEx.JSON_KEY_PLCT, 3600L));
                aVar.b(jSONObject.optLong("dlct", 3600L));
                aVar.f(jSONObject.optLong("vcct", 5L));
                aVar.a(jSONObject.optLong("current_time"));
                aVar.d(jSONObject.optString("vtag", ""));
                return aVar;
            } catch (Exception e11) {
                e = e11;
                aVar2 = aVar;
                e.printStackTrace();
                return aVar2;
            }
        }
        return aVar2;
    }
}

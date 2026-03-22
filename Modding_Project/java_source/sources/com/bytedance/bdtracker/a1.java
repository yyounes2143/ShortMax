package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class a1 {

    /* renamed from: a  reason: collision with root package name */
    public HashSet<String> f11856a;

    /* renamed from: b  reason: collision with root package name */
    public HashMap<String, HashSet<String>> f11857b;

    public a1(HashSet<String> hashSet, HashMap<String, HashSet<String>> hashMap) {
        this.f11856a = hashSet;
        this.f11857b = hashMap;
    }

    public static a1 a(Context context, String str, JSONObject jSONObject) {
        JSONObject optJSONObject;
        try {
            SharedPreferences.Editor edit = g4.a(context, str, 0).edit();
            edit.clear().apply();
            if (jSONObject == null || !jSONObject.has("event_list") || (optJSONObject = jSONObject.optJSONObject("event_list")) == null) {
                return null;
            }
            int optInt = optJSONObject.optInt("is_block", 0);
            edit.putInt("is_block", optInt);
            HashSet hashSet = new HashSet();
            JSONArray optJSONArray = optJSONObject.optJSONArray("events");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    String optString = optJSONArray.optString(i10);
                    if (!TextUtils.isEmpty(optString)) {
                        hashSet.add(optString);
                    }
                }
            }
            if (hashSet.size() > 0) {
                edit.putStringSet("events", hashSet);
            }
            HashMap hashMap = new HashMap();
            JSONObject optJSONObject2 = optJSONObject.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
            if (optJSONObject2 != null) {
                Iterator<String> keys = optJSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        HashSet hashSet2 = new HashSet();
                        JSONArray optJSONArray2 = optJSONObject2.optJSONArray(next);
                        if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                            for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                                String optString2 = optJSONArray2.optString(i11);
                                if (!TextUtils.isEmpty(optString2)) {
                                    hashSet2.add(optString2);
                                }
                            }
                        }
                        if (hashSet2.size() > 0) {
                            hashMap.put(next, hashSet2);
                        }
                    }
                }
            }
            if (hashMap.size() > 0) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    edit.putStringSet((String) entry.getKey(), (Set) entry.getValue());
                }
            }
            edit.apply();
            return optInt > 0 ? new c1(hashSet, hashMap) : new b1(hashSet, hashMap);
        } catch (Throwable unused) {
            return null;
        }
    }

    public abstract boolean a(String str);

    public abstract boolean a(HashSet<String> hashSet, String str);

    public final boolean a(String str, String str2) {
        JSONObject jSONObject;
        HashMap<String, HashSet<String>> hashMap;
        HashSet<String> hashSet;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        HashSet<String> hashSet2 = this.f11856a;
        if (hashSet2 != null && hashSet2.size() > 0) {
            if (a(str)) {
                return false;
            }
            if (TextUtils.isEmpty(str2)) {
                return true;
            }
            try {
                jSONObject = new JSONObject(str2);
            } catch (JSONException unused) {
                jSONObject = null;
            }
            if (jSONObject != null && (hashMap = this.f11857b) != null && hashMap.size() > 0 && this.f11857b.containsKey(str) && (hashSet = this.f11857b.get(str)) != null && hashSet.size() > 0) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    if (a(hashSet, keys.next())) {
                        try {
                            keys.remove();
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        }
        return true;
    }
}

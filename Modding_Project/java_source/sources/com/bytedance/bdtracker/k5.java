package com.bytedance.bdtracker;

import androidx.annotation.NonNull;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class k5 {

    /* renamed from: a  reason: collision with root package name */
    public final String f12164a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12165b;

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f12166c;

    /* renamed from: d  reason: collision with root package name */
    public final Long f12167d;

    /* renamed from: e  reason: collision with root package name */
    public final Long f12168e;

    /* renamed from: f  reason: collision with root package name */
    public final Integer f12169f;

    /* renamed from: g  reason: collision with root package name */
    public final Long f12170g;

    public k5(String str, String str2, Boolean bool, Long l10, Long l11, Integer num, Long l12) {
        this.f12164a = str;
        this.f12165b = str2;
        this.f12166c = bool;
        this.f12167d = l10;
        this.f12168e = l11;
        this.f12169f = num;
        this.f12170g = l12;
    }

    @NonNull
    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        j5.a(hashMap, "id", this.f12164a);
        j5.a(hashMap, "req_id", this.f12165b);
        j5.a(hashMap, "is_track_limited", String.valueOf(this.f12166c));
        j5.a(hashMap, "take_ms", String.valueOf(this.f12167d));
        j5.a(hashMap, CrashHianalyticsData.TIME, String.valueOf(this.f12168e));
        j5.a(hashMap, "query_times", String.valueOf(this.f12169f));
        j5.a(hashMap, "hw_id_version_code", String.valueOf(this.f12170g));
        return hashMap;
    }

    @NonNull
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        j5.a(jSONObject, "id", this.f12164a);
        j5.a(jSONObject, "req_id", this.f12165b);
        j5.a(jSONObject, "is_track_limited", this.f12166c);
        j5.a(jSONObject, "take_ms", this.f12167d);
        j5.a(jSONObject, CrashHianalyticsData.TIME, this.f12168e);
        j5.a(jSONObject, "query_times", this.f12169f);
        j5.a(jSONObject, "hw_id_version_code", this.f12170g);
        return jSONObject;
    }

    public String toString() {
        return b().toString();
    }
}

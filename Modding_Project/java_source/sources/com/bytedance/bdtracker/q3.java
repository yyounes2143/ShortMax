package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.log.EventBus;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class q3 implements EventBus.DataFetcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ HttpURLConnection f12344a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f12345b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f12346c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ JSONObject f12347d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ byte f12348e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ long f12349f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ p3 f12350g;

    public q3(p3 p3Var, HttpURLConnection httpURLConnection, String str, String str2, JSONObject jSONObject, byte b10, long j10) {
        this.f12350g = p3Var;
        this.f12344a = httpURLConnection;
        this.f12345b = str;
        this.f12346c = str2;
        this.f12347d = jSONObject;
        this.f12348e = b10;
        this.f12349f = j10;
    }

    @Override // com.bytedance.applog.log.EventBus.DataFetcher
    public Object fetch() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            Map<String, List<String>> requestProperties = this.f12344a.getRequestProperties();
            if (!requestProperties.isEmpty()) {
                for (Map.Entry<String, List<String>> entry : requestProperties.entrySet()) {
                    jSONObject2.put(entry.getKey(), TextUtils.join(",", entry.getValue()));
                }
            }
            jSONObject.put("appId", this.f12350g.f12324b.f11913m);
            jSONObject.put("nid", this.f12345b);
            jSONObject.put("url", this.f12346c);
            jSONObject.put("data", this.f12347d);
            jSONObject.put("header", jSONObject2);
            jSONObject.put("method", (int) this.f12348e);
            jSONObject.put(CrashHianalyticsData.TIME, this.f12349f);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}

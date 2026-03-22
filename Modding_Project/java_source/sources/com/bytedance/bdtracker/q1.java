package com.bytedance.bdtracker;

import com.bytedance.applog.log.EventBus;
import com.bytedance.bdtracker.l0;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class q1 implements EventBus.DataFetcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ JSONObject f12342a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ p1 f12343b;

    public q1(p1 p1Var, JSONObject jSONObject) {
        this.f12343b = p1Var;
        this.f12342a = jSONObject;
    }

    @Override // com.bytedance.applog.log.EventBus.DataFetcher
    public Object fetch() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        l0.b.b(this.f12342a, jSONObject2);
        try {
            jSONObject.put("appId", this.f12343b.f12303b.f11913m);
            jSONObject.put("config", jSONObject2);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}

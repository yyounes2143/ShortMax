package com.bytedance.bdtracker;

import com.bytedance.applog.log.EventBus;
import com.bytedance.bdtracker.l0;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class s1 implements EventBus.DataFetcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ JSONObject f12381a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r1 f12382b;

    public s1(r1 r1Var, JSONObject jSONObject) {
        this.f12382b = r1Var;
        this.f12381a = jSONObject;
    }

    @Override // com.bytedance.applog.log.EventBus.DataFetcher
    public Object fetch() {
        JSONObject jSONObject = new JSONObject();
        l0.b.b(this.f12381a, jSONObject);
        try {
            jSONObject.put("appId", this.f12382b.f12366i.f11913m);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}

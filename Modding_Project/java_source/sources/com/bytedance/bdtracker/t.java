package com.bytedance.bdtracker;

import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.b;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class t implements b.f {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e4 f12393a;

    public t(e4 e4Var) {
        this.f12393a = e4Var;
    }

    @Override // com.bytedance.bdtracker.b.f
    public u3 a() {
        e4 e4Var = (e4) this.f12393a.m4626clone();
        JSONObject optJSONObject = e4Var.h().optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        try {
            optJSONObject.put("$page_duration", e4Var.f11994s);
        } catch (Throwable th2) {
            LoggerImpl.global().error("JSON handle failed", th2, new Object[0]);
        }
        b4 b4Var = new b4("$bav2b_page_leave");
        b4Var.a(0L);
        b4Var.f12458o = optJSONObject;
        return b4Var;
    }
}

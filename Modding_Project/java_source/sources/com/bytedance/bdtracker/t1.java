package com.bytedance.bdtracker;

import android.content.Context;
import com.bytedance.applog.util.HardwareUtils;
import com.bytedance.bdtracker.l0;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class t1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12395e;

    /* renamed from: f  reason: collision with root package name */
    public final r1 f12396f;

    /* renamed from: g  reason: collision with root package name */
    public final p1 f12397g;

    public t1(Context context, p1 p1Var, r1 r1Var) {
        super(false, false);
        this.f12395e = context;
        this.f12396f = r1Var;
        this.f12397g = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "DeviceParams";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        p1 p1Var = this.f12397g;
        if (p1Var.f12304c.isOperatorInfoEnabled() && !p1Var.a("carrier")) {
            String operatorName = HardwareUtils.getOperatorName(this.f12395e);
            if (l0.b.d(operatorName)) {
                r1.a(jSONObject, "carrier", operatorName);
            }
            String operatorMccMnc = HardwareUtils.getOperatorMccMnc(this.f12395e);
            if (l0.b.d(operatorMccMnc)) {
                r1.a(jSONObject, "mcc_mnc", operatorMccMnc);
            }
        }
        r1.a(jSONObject, "clientudid", ((n4) this.f12396f.f12365h).a());
        r1.a(jSONObject, "openudid", ((n4) this.f12396f.f12365h).c());
        return true;
    }
}

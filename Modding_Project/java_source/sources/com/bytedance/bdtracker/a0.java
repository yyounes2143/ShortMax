package com.bytedance.bdtracker;

import com.bytedance.applog.Level;
import com.bytedance.bdtracker.l0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class a0 extends c0 {

    /* renamed from: g  reason: collision with root package name */
    public long f11854g;

    /* renamed from: h  reason: collision with root package name */
    public JSONObject f11855h;

    public a0(e0 e0Var) {
        super(e0Var);
        this.f11854g = 0L;
        this.f11855h = null;
    }

    public synchronized JSONObject a(int i10) {
        JSONObject jSONObject;
        boolean b10;
        e0 e0Var = this.f11888e;
        p1 p1Var = e0Var.f11956e;
        r1 r1Var = e0Var.f11960i;
        if (r1Var.h() != 0 && r1Var.e() != null) {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject2 = this.f11855h;
            if (jSONObject2 != null && currentTimeMillis - this.f11854g < this.f11888e.f11952a) {
                return jSONObject2;
            }
            this.f11854g = currentTimeMillis;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("header", r1Var.e());
            jSONObject3.put("magic_tag", "ss_app_log");
            jSONObject3.put("_gen_time", currentTimeMillis);
            p4.a(this.f11889f, jSONObject3);
            String a10 = this.f11889f.f11910j.a(r1Var.e(), this.f11888e.e().getAbUri(), true, Level.L1);
            p3 p3Var = this.f11889f.f11911k;
            String a11 = p3.a(a10, p4.f12335b);
            p3Var.f12324b.D.debug(11, "Start to get ab config to uri:{} with request:{}...", a11, jSONObject3);
            String a12 = p3Var.a(jSONObject3, a11, p3Var.a(), i10);
            p3Var.f12324b.D.debug(11, "Get ab config with response:{}", a12);
            JSONObject a13 = p3Var.a(a12);
            if (a13 != null && "success".equals(a13.optString("message", ""))) {
                jSONObject = a13.optJSONObject("data");
            } else {
                jSONObject = null;
            }
            if (jSONObject != null) {
                this.f11855h = jSONObject;
                JSONObject a14 = p1Var.a();
                if (a14 != null) {
                    b10 = a14.toString().equals(jSONObject.toString());
                } else {
                    b10 = l0.b.b((Object) a14, (Object) jSONObject);
                }
                boolean z10 = !b10;
                this.f11889f.D.debug(2, "getAbConfig changed:{}", Boolean.valueOf(z10));
                r1Var.a(jSONObject);
                d1 d1Var = this.f11889f.f11925y;
                if (d1Var != null) {
                    d1Var.onRemoteAbConfigGet(z10, jSONObject);
                }
                return jSONObject;
            }
        }
        return null;
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean c() {
        try {
            if (a(60000) == null) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            this.f11889f.D.error(2, "Do fetch config failed", th2, new Object[0]);
            return false;
        }
    }

    @Override // com.bytedance.bdtracker.c0
    public String d() {
        return "AbConfigure";
    }

    @Override // com.bytedance.bdtracker.c0
    public long[] e() {
        return h0.f12032h;
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.c0
    public long g() {
        long j10 = this.f11888e.f11956e.f12307f.getLong("abtest_fetch_interval", 0L);
        if (j10 < TTAdConstant.AD_MAX_EVENT_TIME) {
            return TTAdConstant.AD_MAX_EVENT_TIME;
        }
        return j10;
    }
}

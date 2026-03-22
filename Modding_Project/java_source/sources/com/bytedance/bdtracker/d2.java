package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.bdtracker.l0;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class d2 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final p1 f11938e;

    public d2(Context context, p1 p1Var, r1 r1Var) {
        super(true, false, false);
        this.f11938e = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "ServerId";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        SharedPreferences sharedPreferences = this.f11938e.f12307f;
        String string = sharedPreferences.getString("bd_did", null);
        r1.a(jSONObject, "bd_did", string);
        String string2 = sharedPreferences.getString("install_id", null);
        String string3 = sharedPreferences.getString(this.f11938e.e(), null);
        r1.a(jSONObject, "install_id", string2);
        r1.a(jSONObject, "ssid", string3);
        long j10 = 0;
        long j11 = sharedPreferences.getLong("register_time", 0L);
        if ((l0.b.a(string2) && l0.b.a(string) && l0.b.a(string3)) || j11 == 0) {
            j10 = j11;
        } else {
            this.f11938e.f12307f.edit().putLong("register_time", 0L).apply();
        }
        jSONObject.put("register_time", j10);
        return true;
    }
}

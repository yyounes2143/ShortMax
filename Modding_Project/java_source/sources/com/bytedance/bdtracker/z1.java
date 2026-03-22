package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class z1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12541e;

    /* renamed from: f  reason: collision with root package name */
    public final p1 f12542f;

    public z1(Context context, p1 p1Var) {
        super(true, false);
        this.f12541e = context;
        this.f12542f = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Oaid";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        p1 p1Var = this.f12542f;
        SharedPreferences sharedPreferences = p1Var.f12307f;
        if (p1Var.j()) {
            Map a10 = h5.a(this.f12541e);
            if (a10 != null) {
                jSONObject.put("oaid", new JSONObject(a10));
                return true;
            }
            return false;
        }
        return true;
    }
}

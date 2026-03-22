package com.bytedance.bdtracker;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class n1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final p1 f12249e;

    public n1(p1 p1Var) {
        super(true, false);
        this.f12249e = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Cdid";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        String a10 = h5.a(this.f12249e.f12307f);
        if (TextUtils.isEmpty(a10)) {
            return false;
        }
        jSONObject.put("cdid", a10);
        return true;
    }
}

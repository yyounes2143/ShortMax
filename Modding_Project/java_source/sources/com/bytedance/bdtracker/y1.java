package com.bytedance.bdtracker;

import android.annotation.SuppressLint;
import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class y1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12529e;

    public y1(Context context) {
        super(true, true);
        this.f12529e = context;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Net";
    }

    @Override // com.bytedance.bdtracker.k1
    @SuppressLint({"MissingPermission"})
    public boolean a(JSONObject jSONObject) {
        r1.a(jSONObject, "access", t4.a(this.f12529e, true));
        return true;
    }
}

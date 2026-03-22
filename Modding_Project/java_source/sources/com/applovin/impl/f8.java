package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f8 {

    /* renamed from: a  reason: collision with root package name */
    private final r2 f7931a;

    /* renamed from: b  reason: collision with root package name */
    private final x3 f7932b;

    /* renamed from: c  reason: collision with root package name */
    private final List f7933c;

    public f8(JSONObject jSONObject, MaxAdFormat maxAdFormat, b3 b3Var, com.applovin.impl.sdk.k kVar) {
        boolean z10;
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "bidder_placement", (JSONObject) null);
        if (jSONObject2 != null) {
            this.f7932b = new x3(jSONObject2, kVar);
        } else {
            this.f7932b = null;
        }
        String string = JsonUtils.getString(jSONObject, "name", "");
        String string2 = JsonUtils.getString(jSONObject, "display_name", "");
        if (jSONObject2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f7931a = new r2(string, string2, z10, b3Var);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "placements", new JSONArray());
        this.f7933c = new ArrayList(jSONArray.length());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject3 != null) {
                this.f7933c.add(new x3(jSONObject3, kVar));
            }
        }
    }

    public x3 a() {
        return this.f7932b;
    }

    public r2 b() {
        return this.f7931a;
    }

    public List c() {
        return this.f7933c;
    }

    public boolean d() {
        if (this.f7932b != null) {
            return true;
        }
        return false;
    }
}

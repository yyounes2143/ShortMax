package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class j1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8154a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8155b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8156c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        this.f8154a = JsonUtils.getString(jSONObject, "name", "");
        this.f8155b = JsonUtils.getString(jSONObject, InMobiNetworkValues.DESCRIPTION, "");
        List list = JsonUtils.getList(jSONObject, "existence_classes", null);
        if (list != null) {
            this.f8156c = k7.a(list);
        } else {
            this.f8156c = k7.a(JsonUtils.getString(jSONObject, "existence_class", ""));
        }
    }

    public String a() {
        return this.f8155b;
    }

    public String b() {
        return this.f8154a;
    }

    public boolean c() {
        return this.f8156c;
    }

    public static boolean a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        if (str2 == null || k7.a(str2, str) != 1) {
            return str3 == null || k7.a(str3, str) != -1;
        }
        return false;
    }
}

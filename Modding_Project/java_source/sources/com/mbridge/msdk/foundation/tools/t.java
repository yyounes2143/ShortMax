package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DomainDeviceInfo.java */
/* loaded from: classes5.dex */
public class t extends d {

    /* renamed from: w  reason: collision with root package name */
    public int f27508w;

    /* renamed from: x  reason: collision with root package name */
    public int f27509x;

    public t(Context context) {
        super(context);
        this.f27509x = l0.v();
        this.f27508w = l0.h();
    }

    @Override // com.mbridge.msdk.foundation.tools.d
    public JSONObject a() {
        JSONObject a10 = super.a();
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("dmt", this.f27509x + "");
                jSONObject.put("dmf", this.f27508w);
            }
        } catch (JSONException e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("DomainDeviceInfo", e10.getMessage());
            }
        }
        return a10;
    }
}

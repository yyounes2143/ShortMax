package com.mbridge.msdk.foundation.same.net.wrapper;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import com.ss.ttvideoengine.utils.Error;
import org.json.JSONObject;
/* compiled from: CommonMBListener.java */
/* loaded from: classes5.dex */
public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27185a = "d";

    private void a(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        if (eVar.f27117b.f27142d == 204) {
            a(new JSONObject());
        } else {
            b(eVar);
        }
    }

    private void b(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        JSONObject jSONObject = eVar.f27118c;
        if (jSONObject == null) {
            a("response result is null");
            return;
        }
        int optInt = jSONObject.optInt("status", Error.ParameterNull);
        if (optInt == -9999) {
            a(eVar.f27118c);
        } else if (optInt != 1 && optInt != 200) {
            String optString = eVar.f27118c.optString("msg");
            if (TextUtils.isEmpty(optString)) {
                optString = "error message is null";
            }
            a(optString);
        } else {
            a(eVar.f27118c.optJSONObject("data"));
        }
    }

    public abstract void a(String str);

    public abstract void a(JSONObject jSONObject);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f27185a;
        p0.b(str, "errorCode = " + aVar.f27119a);
        a(com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        if (eVar == null) {
            a("response is null");
            return;
        }
        super.onSuccess(eVar);
        if (eVar.f27117b == null) {
            b(eVar);
        } else {
            a(eVar);
        }
    }
}

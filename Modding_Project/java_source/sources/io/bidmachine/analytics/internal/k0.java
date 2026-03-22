package io.bidmachine.analytics.internal;

import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import io.bidmachine.analytics.internal.h0;
import kotlin.text.Charsets;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public abstract class k0 {
    public static final j0 a(h0 h0Var) {
        byte[] bArr;
        JSONObject a10;
        String jSONObject;
        String c10 = h0Var.c();
        String d10 = h0Var.d();
        long f10 = h0Var.f();
        String a11 = h0Var.a();
        String jSONObject2 = a(h0Var.e()).toString();
        q0 b10 = h0Var.b();
        if (b10 == null || (a10 = r0.a(b10)) == null || (jSONObject = a10.toString()) == null || (bArr = jSONObject.getBytes(Charsets.UTF_8)) == null) {
            bArr = new byte[0];
        }
        return new j0(c10, d10, f10, a11, jSONObject2, bArr, h0Var.g());
    }

    public static final h0 a(j0 j0Var) {
        return new h0(j0Var.c(), j0Var.d(), j0Var.f(), j0Var.a(), a(new JSONObject(j0Var.e())), j0Var.b().length == 0 ? null : r0.a(new JSONObject(new String(j0Var.b(), Charsets.UTF_8))), j0Var.g());
    }

    public static final JSONObject a(h0.a aVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, aVar.b());
        jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, aVar.a());
        return jSONObject;
    }

    public static final h0.a a(JSONObject jSONObject) {
        return new h0.a(jSONObject.optString(ITTVideoEngineEventSource.KEY_TAG), jSONObject.optString(MBridgeConstans.DYNAMIC_VIEW_WX_PATH));
    }
}

package com.mbridge.msdk.video.bt.component;

import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: HandlerH5MessageManager.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f30504a;

    /* renamed from: b  reason: collision with root package name */
    int f30505b;

    /* renamed from: c  reason: collision with root package name */
    int f30506c;

    /* compiled from: HandlerH5MessageManager.java */
    /* loaded from: classes6.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static c f30507a = new c();
    }

    public static c a() {
        return b.f30507a;
    }

    private c() {
        this.f30504a = "handlerNativeResult";
        this.f30505b = 0;
        this.f30506c = 1;
    }

    public void a(Object obj, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (!TextUtils.isEmpty(jSONObject.toString())) {
                    String optString = jSONObject.optString("uniqueIdentifier");
                    String optString2 = jSONObject.optString("name");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
                        JSONObject optJSONObject = jSONObject.optJSONObject("result");
                        int i10 = 0;
                        if (optJSONObject != null && !TextUtils.isEmpty(optJSONObject.toString())) {
                            i10 = optJSONObject.optInt("type", 0);
                        }
                        a(this.f30505b, "receivedMessage", obj);
                        if (optString.equalsIgnoreCase("reporter")) {
                            com.mbridge.msdk.mbsignalcommon.Report.a.a().a(obj, optString2, optJSONArray, i10);
                            return;
                        } else if (optString.equalsIgnoreCase("MediaPlayer")) {
                            com.mbridge.msdk.video.bt.component.b.a().a(obj, optString2, optJSONArray, i10);
                            return;
                        } else {
                            return;
                        }
                    }
                    a(this.f30506c, "module or method is null", obj);
                    return;
                }
            } catch (Exception e10) {
                p0.a("HandlerH5MessageManager", e10.getMessage());
                a(this.f30506c, e10.getMessage(), obj);
                return;
            } catch (Throwable th2) {
                p0.a("HandlerH5MessageManager", th2.getMessage());
                a(this.f30506c, th2.getMessage(), obj);
                return;
            }
        }
        a(this.f30506c, "params is null", obj);
    }

    public void a(int i10, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            jSONObject.put("message", str);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e10) {
            p0.a("HandlerH5MessageManager", e10.getMessage());
        } catch (Throwable th2) {
            p0.a("HandlerH5MessageManager", th2.getMessage());
        }
    }
}

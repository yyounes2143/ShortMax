package com.mbridge.msdk.mbsignalcommon.windvane;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class BaseAbsFeedBackForH5 extends g {

    /* renamed from: e  reason: collision with root package name */
    private static int f28218e = 0;

    /* renamed from: f  reason: collision with root package name */
    private static int f28219f = 1;

    /* renamed from: d  reason: collision with root package name */
    private String f28220d = "AbsFeedBackForH5";

    public void callbackExcep(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f28219f);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.a(this.f28220d, e10.getMessage());
        }
    }

    public void callbackSuccess(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f28218e);
            jSONObject.put("message", "");
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            callbackExcep(obj, e10.getMessage());
            p0.a(this.f28220d, e10.getMessage());
        }
    }

    public void callbackSuccessWithData(Object obj, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(Module.ResponseKey.Code, f28218e);
            jSONObject2.put("message", "");
            jSONObject2.put("data", jSONObject);
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (Exception e10) {
            callbackExcep(obj, e10.getMessage());
            p0.a(this.f28220d, e10.getMessage());
        }
    }

    public void feedbackLayoutOperate(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                JSONObject jSONObject = new JSONObject(str);
                int optInt = jSONObject.optInt("width", -1);
                int optInt2 = jSONObject.optInt("height", -1);
                int optInt3 = jSONObject.optInt(TtmlNode.LEFT, -1);
                int optInt4 = jSONObject.optInt("top", -1);
                double optDouble = jSONObject.optDouble("opacity", 1.0d);
                int optInt5 = jSONObject.optInt("radius", 20);
                String optString = jSONObject.optString("fontColor", "");
                String optString2 = jSONObject.optString("bgColor", "");
                String optString3 = jSONObject.optString("key", "");
                double optDouble2 = jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE, -1.0d);
                com.mbridge.msdk.foundation.feedback.b.b().a(optString3, optInt, optInt2, optInt5, optInt3, optInt4, (float) optDouble, optString, optString2, (float) optDouble2, jSONObject.optJSONArray("padding"));
            }
            callbackSuccess(obj);
        } catch (Throwable th2) {
            callbackExcep(obj, th2.getMessage());
            th2.printStackTrace();
        }
    }

    public void feedbackOperate(Object obj, String str) {
        int i10;
        try {
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                JSONObject jSONObject = new JSONObject(str);
                int optInt = jSONObject.optInt("view_visible", 1);
                String optString = jSONObject.optString("key", "");
                com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
                if (optInt == 1) {
                    i10 = 8;
                } else {
                    i10 = 0;
                }
                b10.a(optString, i10, aVar.f28239b);
            }
            callbackSuccess(obj);
        } catch (Throwable th2) {
            callbackExcep(obj, th2.getMessage());
            th2.printStackTrace();
        }
    }

    public void feedbackPopupOperate(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                int optInt = jSONObject.optInt("view_visible", 1);
                com.mbridge.msdk.foundation.feedback.b.b().a(jSONObject.optString("key", ""), optInt, new a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b));
            }
            callbackSuccess(obj);
        } catch (Throwable th2) {
            callbackExcep(obj, th2.getMessage());
            th2.printStackTrace();
        }
    }

    /* loaded from: classes4.dex */
    class a implements com.mbridge.msdk.foundation.feedback.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WindVaneWebView f28221a;

        a(WindVaneWebView windVaneWebView) {
            this.f28221a = windVaneWebView;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 1);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(BaseAbsFeedBackForH5.this.f28220d, th2.getMessage(), th2);
                str = "";
            }
            f.a().a((WebView) this.f28221a, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            String str;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(BaseAbsFeedBackForH5.this.f28220d, th2.getMessage(), th2);
                str = "";
            }
            f.a().a((WebView) this.f28221a, "onFeedbackAlertStatusNotify", Base64.encodeToString(str.getBytes(), 2));
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            String str2;
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put("status", 2);
                }
                str2 = jSONObject.toString();
            } catch (Throwable th2) {
                p0.b(BaseAbsFeedBackForH5.this.f28220d, th2.getMessage(), th2);
                str2 = "";
            }
            f.a().a((WebView) this.f28221a, "onFeedbackAlertStatusNotify", Base64.encodeToString(str2.getBytes(), 2));
        }
    }
}

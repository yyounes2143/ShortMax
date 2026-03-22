package com.mbridge.msdk.mbsignalcommon.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONObject;
/* compiled from: BaseCommonBannerSignalCommunicationImp.java */
/* loaded from: classes4.dex */
public abstract class a implements e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f28192a = "a";

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void b(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
            return;
        }
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (!TextUtils.isEmpty(str)) {
            if (d10 == null) {
                try {
                    if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                        d10 = windVaneWebView.getContext();
                    }
                } catch (Exception unused) {
                }
            }
            if (d10 == null) {
                f.a().b(obj, d.a(1));
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", l0.s(d10));
                String jSONObject2 = jSONObject.toString();
                if (!TextUtils.isEmpty(jSONObject2)) {
                    jSONObject2 = Base64.encodeToString(jSONObject2.getBytes(), 2);
                }
                f.a().b(obj, jSONObject2);
            } catch (Throwable unused2) {
                f.a().b(obj, d.a(1));
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b);
            }
        } catch (Throwable th2) {
            p0.b(f28192a, "onSignalCommunication", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void increaseOfferFrequence(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
        } else if (!TextUtils.isEmpty(str)) {
            try {
                d.a(obj, new JSONObject(str));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
            return;
        }
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (!TextUtils.isEmpty(str)) {
            if (d10 == null) {
                try {
                    if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                        d10 = windVaneWebView.getContext();
                    }
                } catch (Exception unused) {
                }
            }
            if (d10 == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("url");
                int optInt = jSONObject.optInt("type");
                if (optInt == 1) {
                    com.mbridge.msdk.click.c.c(d10, optString);
                } else if (optInt == 2) {
                    com.mbridge.msdk.click.c.e(d10, optString);
                }
            } catch (Throwable unused2) {
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void a(Object obj, String str) {
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void handlerH5Exception(Object obj, String str) {
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void install(Object obj, String str) {
    }
}

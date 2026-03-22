package com.mbridge.msdk.video.signal.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BaseRewardSignalH5 extends a {

    /* renamed from: a  reason: collision with root package name */
    protected IJSFactory f31200a;

    private String a(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(jSONObject2)) {
                return Base64.encodeToString(jSONObject2.getBytes(), 2);
            }
        } catch (Throwable unused) {
            p0.b("JS-Reward-Communication", "code to string is error");
        }
        return "";
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void cai(Object obj, String str) {
        int i10;
        p0.a("JS-Reward-Communication", "cai:" + str);
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    String optString = new JSONObject(str).optString("packageName");
                    if (TextUtils.isEmpty(optString)) {
                        d.a(obj, "packageName is empty");
                    }
                    if (u0.c(c.m().d(), optString)) {
                        i10 = 1;
                    } else {
                        i10 = 2;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(Module.ResponseKey.Code, d.f28194b);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", i10);
                        jSONObject.put("data", jSONObject2);
                        f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e10) {
                        d.a(obj, e10.getMessage());
                        p0.a("JS-Reward-Communication", e10.getMessage());
                    }
                } catch (Throwable th2) {
                    d.a(obj, "exception: " + th2.getLocalizedMessage());
                    p0.b("JS-Reward-Communication", "cai", th2);
                }
            } catch (JSONException e11) {
                d.a(obj, "exception: " + e11.getLocalizedMessage());
                p0.b("JS-Reward-Communication", "cai", e11);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        String str2;
        try {
            IJSFactory iJSFactory = this.f31200a;
            if (iJSFactory != null) {
                String b10 = iJSFactory.getIJSRewardVideoV1().b();
                if (!TextUtils.isEmpty(b10)) {
                    str2 = Base64.encodeToString(b10.getBytes(), 2);
                    p0.a("JS-Reward-Communication", "getEndScreenInfo success");
                } else {
                    str2 = "";
                    p0.a("JS-Reward-Communication", "getEndScreenInfo failed");
                }
                f.a().b(obj, str2);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "getEndScreenInfo", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        try {
            if (this.f31200a != null && !TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("msg");
                p0.a("JS-Reward-Communication", "handlerPlayableException,msg:" + str);
                this.f31200a.getIJSRewardVideoV1().handlerPlayableException(optString);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "setOrientation", th2);
        }
    }

    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        if (context instanceof IJSFactory) {
            this.f31200a = (IJSFactory) context;
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void install(Object obj, String str) {
        try {
            if (this.f31200a != null) {
                p0.a("JS-Reward-Communication", "install:" + str);
                if (this.f31200a.getJSContainerModule().endCardShowing()) {
                    this.f31200a.getJSCommon().click(3, str);
                } else {
                    this.f31200a.getJSCommon().click(1, str);
                }
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "install", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.f31200a != null && !TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                p0.a("JS-Reward-Communication", "notifyCloseBtn,state:" + str);
                this.f31200a.getIJSRewardVideoV1().notifyCloseBtn(optInt);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "notifyCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        p0.b("JS-Reward-Communication", "openURL:" + str);
        Context d10 = c.m().d();
        if (!TextUtils.isEmpty(str)) {
            if (d10 == null) {
                try {
                    if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                        d10 = windVaneWebView.getContext();
                    }
                } catch (Exception e10) {
                    p0.b("JS-Reward-Communication", e10.getMessage());
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
            } catch (JSONException e11) {
                p0.b("JS-Reward-Communication", e11.getMessage());
            } catch (Throwable th2) {
                p0.b("JS-Reward-Communication", th2.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void setOrientation(Object obj, String str) {
        try {
            if (this.f31200a != null && !TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("state");
                p0.a("JS-Reward-Communication", "setOrientation,state:" + str);
                this.f31200a.getIJSRewardVideoV1().a(optString);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "setOrientation", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.f31200a != null && !TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                p0.a("JS-Reward-Communication", "toggleCloseBtn,state:" + str);
                this.f31200a.getIJSRewardVideoV1().toggleCloseBtn(optInt);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.f31200a != null && !TextUtils.isEmpty(str)) {
                f.a().b(obj, a(0));
                this.f31200a.getIJSRewardVideoV1().triggerCloseBtn(new JSONObject(str).optString("state"));
                p0.a("JS-Reward-Communication", "triggerCloseBtn,state:" + str);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Communication", "triggerCloseBtn", th2);
            f.a().b(obj, a(-1));
        }
    }

    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        if (obj instanceof IJSFactory) {
            this.f31200a = (IJSFactory) obj;
        }
    }
}

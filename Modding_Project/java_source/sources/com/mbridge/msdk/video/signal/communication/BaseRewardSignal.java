package com.mbridge.msdk.video.signal.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.impl.k;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BaseRewardSignal extends BaseRewardSignalDiff {

    /* renamed from: g  reason: collision with root package name */
    protected BaseIRewardCommunication f31199g;

    private String a(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(jSONObject2)) {
                return Base64.encodeToString(jSONObject2.getBytes(), 2);
            }
        } catch (Throwable unused) {
            p0.b("JS-Reward-Brigde", "code to string is error");
        }
        return "";
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void cai(Object obj, String str) {
        int i10;
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
        } else if (!TextUtils.isEmpty(str)) {
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
                        p0.a("JS-Reward-Brigde", e10.getMessage());
                    }
                } catch (JSONException e11) {
                    d.a(obj, "exception: " + e11.getLocalizedMessage());
                    p0.b("JS-Reward-Brigde", "cai", e11);
                }
            } catch (Throwable th2) {
                d.a(obj, "exception: " + th2.getLocalizedMessage());
                p0.b("JS-Reward-Brigde", "cai", th2);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        try {
            BaseIRewardCommunication baseIRewardCommunication = this.f31199g;
            if (baseIRewardCommunication != null) {
                baseIRewardCommunication.getEndScreenInfo(obj, str);
                p0.b("JS-Reward-Brigde", "getEndScreenInfo factory is true");
            } else {
                p0.b("JS-Reward-Brigde", "getEndScreenInfo factory is null");
                if (obj != null && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null && windVaneWebView.getWebViewListener() != null) {
                    ((com.mbridge.msdk.mbsignalcommon.listener.a) windVaneWebView.getWebViewListener()).a(obj);
                }
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "getEndScreenInfo", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        try {
            if (this.f31199g != null && !TextUtils.isEmpty(str)) {
                this.f31199g.handlerPlayableException(obj, str);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "handlerPlayableException", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        boolean z10;
        super.initialize(context, windVaneWebView);
        try {
            z10 = IJSFactory.class.isInstance(context);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            z10 = false;
        }
        try {
            if (z10) {
                this.f31199g = (BaseIRewardCommunication) BaseRewardSignalH5.class.newInstance();
                BaseRewardSignalH5.class.getMethod(MobileAdsBridgeBase.initializeMethodName, Context.class, WindVaneWebView.class).invoke(this.f31199g, context, windVaneWebView);
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof BaseIRewardCommunication)) {
                this.f31199g = (BaseIRewardCommunication) windVaneWebView.getObject();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void install(Object obj, String str) {
        try {
            BaseIRewardCommunication baseIRewardCommunication = this.f31199g;
            if (baseIRewardCommunication != null) {
                baseIRewardCommunication.install(obj, str);
            } else if (TextUtils.isEmpty(str)) {
            } else {
                if (obj != null) {
                    com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
                    if (aVar.f28239b.getObject() instanceof k) {
                        ((k) aVar.f28239b.getObject()).click(1, str);
                        p0.b("JS-Reward-Brigde", "JSCommon install jump success");
                    }
                }
                p0.b("JS-Reward-Brigde", "JSCommon install failed");
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "install", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.f31199g != null && !TextUtils.isEmpty(str)) {
                this.f31199g.notifyCloseBtn(obj, str);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "notifyCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void openURL(Object obj, String str) {
        p0.b("JS-Reward-Brigde", "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
        } else if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("url");
                int optInt = jSONObject.optInt("type");
                if (optInt == 1) {
                    com.mbridge.msdk.click.c.c(this.f28262a, optString);
                } else if (optInt == 2) {
                    com.mbridge.msdk.click.c.e(this.f28262a, optString);
                }
            } catch (JSONException e10) {
                p0.b("JS-Reward-Brigde", e10.getMessage());
            } catch (Throwable th2) {
                p0.b("JS-Reward-Brigde", th2.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void setOrientation(Object obj, String str) {
        try {
            if (this.f31199g != null && !TextUtils.isEmpty(str)) {
                this.f31199g.setOrientation(obj, str);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "setOrientation", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.f31199g != null && !TextUtils.isEmpty(str)) {
                this.f31199g.toggleCloseBtn(obj, str);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.f31199g != null && !TextUtils.isEmpty(str)) {
                this.f31199g.triggerCloseBtn(obj, str);
            }
        } catch (Throwable th2) {
            p0.b("JS-Reward-Brigde", "triggerCloseBtn", th2);
            f.a().b(obj, a(-1));
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        boolean z10;
        super.initialize(obj, windVaneWebView);
        try {
            z10 = IJSFactory.class.isInstance(obj);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            z10 = false;
        }
        try {
            if (z10) {
                this.f31199g = (BaseIRewardCommunication) BaseRewardSignalH5.class.newInstance();
                BaseRewardSignalH5.class.getMethod(MobileAdsBridgeBase.initializeMethodName, Object.class, WindVaneWebView.class).invoke(this.f31199g, obj, windVaneWebView);
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof BaseIRewardCommunication)) {
                this.f31199g = (BaseIRewardCommunication) windVaneWebView.getObject();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }
}

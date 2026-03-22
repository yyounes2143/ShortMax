package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class MraidSignalCommunication extends BaseMraidSignalCommunication {

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ int f28201h = 0;

    /* renamed from: g  reason: collision with root package name */
    private b f28202g;

    public void close(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b, "close");
        }
        try {
            p0.b("MraidSignalCommunication", "MRAID close");
            b bVar = this.f28202g;
            if (bVar != null) {
                bVar.close();
            }
        } catch (Throwable th2) {
            p0.b("MraidSignalCommunication", "MRAID close", th2);
        }
    }

    public void expand(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
            windVaneWebView = aVar.f28239b;
            a.a().b(aVar.f28239b, "expand");
        } else {
            windVaneWebView = null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("url");
            String optString2 = jSONObject.optString("shouldUseCustomClose");
            p0.b("MraidSignalCommunication", "MRAID expand " + optString + " " + optString2);
            if ((windVaneWebView == null || System.currentTimeMillis() - windVaneWebView.lastTouchTime <= com.mbridge.msdk.click.utils.a.f26135d || !com.mbridge.msdk.click.utils.a.a(this.f28202g.getMraidCampaign(), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f26134c)) && !TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && this.f28202g != null) {
                this.f28202g.expand(optString, optString2.toLowerCase().equals("true"));
            }
        } catch (Throwable th2) {
            p0.b("MraidSignalCommunication", "MRAID expand", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (context instanceof b) {
                this.f28202g = (b) context;
                return;
            }
            if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof b)) {
                this.f28202g = (b) windVaneWebView.getObject();
            }
            if (windVaneWebView.getMraidObject() != null && (windVaneWebView.getMraidObject() instanceof b)) {
                this.f28202g = (b) windVaneWebView.getMraidObject();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void open(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
            windVaneWebView = aVar.f28239b;
            a.a().b(aVar.f28239b, MRAIDPresenter.OPEN);
        } else {
            windVaneWebView = null;
        }
        try {
            String optString = new JSONObject(str).optString("url");
            p0.b("MraidSignalCommunication", "MRAID Open " + optString);
            if (this.f28202g != null && !TextUtils.isEmpty(optString)) {
                if (windVaneWebView != null && System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f26135d && com.mbridge.msdk.click.utils.a.a(this.f28202g.getMraidCampaign(), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f26132a)) {
                    return;
                }
                this.f28202g.open(optString);
            }
        } catch (Throwable th2) {
            p0.b("MraidSignalCommunication", "MRAID Open", th2);
        }
    }

    public void setOrientationProperties(Object obj, String str) {
        String str2;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b, MRAIDPresenter.SET_ORIENTATION_PROPERTIES);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("allowOrientationChange");
            String optString2 = jSONObject.optString("forceOrientation");
            p0.b("MraidSignalCommunication", "MRAID setOrientationProperties");
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2) && this.f28202g != null) {
                optString.toLowerCase().equals("true");
                String lowerCase = optString2.toLowerCase();
                int hashCode = lowerCase.hashCode();
                if (hashCode != 729267099) {
                    if (hashCode == 1430647483) {
                        str2 = "landscape";
                    } else {
                        return;
                    }
                } else {
                    str2 = "portrait";
                }
                lowerCase.equals(str2);
            }
        } catch (Throwable th2) {
            p0.b("MraidSignalCommunication", "MRAID setOrientationProperties", th2);
        }
    }

    public void unload(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b, "unload");
        }
        try {
            p0.b("MraidSignalCommunication", "MRAID unload");
            b bVar = this.f28202g;
            if (bVar != null) {
                bVar.unload();
            }
        } catch (Throwable th2) {
            p0.b("MraidSignalCommunication", "MRAID unload", th2);
        }
    }

    public void useCustomClose(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.a().b(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b, "useCustomClose");
        }
        try {
            String optString = new JSONObject(str).optString("shouldUseCustomClose");
            p0.b("MraidSignalCommunication", "MRAID useCustomClose " + optString);
            if (!TextUtils.isEmpty(optString) && this.f28202g != null) {
                this.f28202g.useCustomClose(optString.toLowerCase().equals("true"));
            }
        } catch (Throwable th2) {
            p0.b("MraidSignalCommunication", "MRAID useCustomClose", th2);
        }
    }
}

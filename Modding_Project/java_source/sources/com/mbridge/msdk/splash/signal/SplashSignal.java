package com.mbridge.msdk.splash.signal;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SplashSignal extends AbsFeedBackForH5 {

    /* renamed from: h  reason: collision with root package name */
    private static String f29300h = "SplashSignal";

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f29301i = 0;

    /* renamed from: g  reason: collision with root package name */
    private b f29302g;

    public void getFileInfo(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                c.a(obj, new JSONObject(str));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void handlerH5Exception(Object obj, String str) {
        if (obj != null) {
            try {
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
                if (windVaneWebView != null && windVaneWebView.getWebViewListener() != null) {
                    windVaneWebView.getWebViewListener().a(windVaneWebView, 0, str.toString(), windVaneWebView.getUrl());
                }
            } catch (Throwable th2) {
                p0.b(f29300h, "handlerH5Exception", th2);
            }
        }
    }

    public void increaseOfferFrequence(Object obj, String str) {
        try {
            c.b(obj, new JSONObject(str));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void init(Object obj, String str) {
        String str2 = f29300h;
        p0.b(str2, MobileAdsBridgeBase.initializeMethodName + str);
        b bVar = this.f29302g;
        if (bVar != null) {
            bVar.init(obj, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.g
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof b)) {
                this.f29302g = (b) windVaneWebView.getObject();
            }
        } catch (Throwable th2) {
            p0.b(f29300h, MobileAdsBridgeBase.initializeMethodName, th2);
        }
    }

    public void install(Object obj, String str) {
        b bVar = this.f29302g;
        if (bVar != null) {
            bVar.install(obj, str);
        }
    }

    public void onSignalCommunication(Object obj, String str) {
        try {
            p0.b(f29300h, "onSignalCommunication");
            b bVar = this.f29302g;
            if (bVar != null) {
                bVar.c(obj, str);
            }
        } catch (Throwable th2) {
            p0.b(f29300h, "onSignalCommunication", th2);
        }
    }

    public void openURL(Object obj, String str) {
        String str2 = f29300h;
        p0.b(str2, "openURL" + str);
        b bVar = this.f29302g;
        if (bVar != null) {
            bVar.openURL(obj, str);
        }
    }

    public void pauseCountDown(Object obj, String str) {
        try {
            p0.b(f29300h, "pauseCountDown");
            b bVar = this.f29302g;
            if (bVar != null) {
                bVar.e(obj, str);
            }
        } catch (Throwable th2) {
            p0.b(f29300h, "pauseCountDown", th2);
        }
    }

    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                int optInt = new JSONObject(str).optInt("isReady", 1);
                WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
                if (windVaneWebView != null && windVaneWebView.getWebViewListener() != null) {
                    windVaneWebView.getWebViewListener().a(windVaneWebView, optInt);
                }
            } catch (Throwable th2) {
                p0.b(f29300h, "readyStatus", th2);
            }
        }
    }

    public void reportUrls(Object obj, String str) {
        try {
            p0.b(f29300h, "reportUrls");
            b bVar = this.f29302g;
            if (bVar != null) {
                bVar.reportUrls(obj, str);
            }
        } catch (Throwable th2) {
            p0.b(f29300h, "reportUrls", th2);
        }
    }

    public void resetCountdown(Object obj, String str) {
        String str2 = f29300h;
        p0.b(str2, "resetCountdown" + str);
        b bVar = this.f29302g;
        if (bVar != null) {
            bVar.a(obj, str);
        }
    }

    public void resumeCountDown(Object obj, String str) {
        try {
            p0.b(f29300h, "resumeCountDown");
            b bVar = this.f29302g;
            if (bVar != null) {
                bVar.f(obj, str);
            }
        } catch (Throwable th2) {
            p0.b(f29300h, "resumeCountDown", th2);
        }
    }

    public void sendImpressions(Object obj, String str) {
        try {
            p0.b(f29300h, "sendImpressions");
            b bVar = this.f29302g;
            if (bVar != null) {
                bVar.d(obj, str);
            }
        } catch (Throwable th2) {
            p0.b(f29300h, "sendImpressions", th2);
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        String str2 = f29300h;
        p0.b(str2, "toggleCloseBtn" + str);
        b bVar = this.f29302g;
        if (bVar != null) {
            bVar.toggleCloseBtn(obj, str);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        String str2 = f29300h;
        p0.b(str2, "triggerCloseBtn" + str);
        b bVar = this.f29302g;
        if (bVar != null) {
            bVar.triggerCloseBtn(obj, str);
        }
    }
}

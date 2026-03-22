package com.mbridge.msdk.mbbanner.common.communication;

import android.util.Base64;
import android.webkit.WebView;
import com.google.android.gms.ads.AdError;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: BannerCallJS.java */
/* loaded from: classes5.dex */
public class a {
    public static void a(WebView webView) {
        p0.b("BannerCallJS", "fireOnJSBridgeConnected");
        f.a().a(webView);
    }

    public static void a(WebView webView, float f10, float f11) {
        p0.b("BannerCallJS", "fireOnBannerWebViewShow");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("startX", f10);
            jSONObject.put("startY", f11);
            jSONObject.put(TextureRenderKeys.KEY_IS_SCALE, u0.d(c.m().d()));
            f.a().a(webView, "webviewshow", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            p0.b("BannerCallJS", "fireOnBannerWebViewShow", th2);
        }
    }

    public static void a(WebView webView, int i10, int i11) {
        p0.b("BannerCallJS", "fireOnBannerViewSizeChange");
        try {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(webView, i10, i11);
        } catch (Throwable th2) {
            p0.b("BannerCallJS", "fireOnBannerViewSizeChange", th2);
        }
    }

    public static void a(WebView webView, int i10, int i11, int i12, int i13) {
        String str;
        p0.b("BannerCallJS", "transInfoForMraid");
        try {
            int i14 = c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i14 == 2) {
                str = "landscape";
            } else {
                str = i14 == 1 ? "portrait" : AdError.UNDEFINED_DOMAIN;
            }
            jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, str);
            jSONObject.put("locked", "true");
            float n10 = l0.n(c.m().d());
            float m10 = l0.m(c.m().d());
            HashMap v10 = l0.v(c.m().d());
            int intValue = ((Integer) v10.get("width")).intValue();
            int intValue2 = ((Integer) v10.get("height")).intValue();
            HashMap hashMap = new HashMap();
            hashMap.put("placementType", "inline");
            hashMap.put("state", DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
            hashMap.put("viewable", "true");
            hashMap.put("currentAppOrientation", jSONObject);
            float f10 = i10;
            float f11 = i11;
            float f12 = i12;
            float f13 = i13;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, n10, m10);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, intValue, intValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, hashMap);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th2) {
            p0.b("BannerCallJS", "transInfoForMraid", th2);
        }
    }
}

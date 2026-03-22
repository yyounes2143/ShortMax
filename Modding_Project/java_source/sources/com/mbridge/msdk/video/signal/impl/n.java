package com.mbridge.msdk.video.signal.impl;

import android.util.Base64;
import android.webkit.WebView;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import org.json.JSONObject;
/* compiled from: JSNotifyProxy.java */
/* loaded from: classes6.dex */
public class n extends f {

    /* renamed from: a  reason: collision with root package name */
    private WebView f31553a;

    public n(WebView webView) {
        this.f31553a = webView;
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(int i10) {
        super.a(i10);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", i10);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31553a, "onVideoStatusNotify", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(int i10, String str) {
        super.a(i10, str);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", i10);
            jSONObject.put("pt", str);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31553a, "onJSClick", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(MBridgeVideoView.v vVar) {
        super.a(vVar);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("progress", a(vVar.f31129a, vVar.f31130b));
            jSONObject.put(CrashHianalyticsData.TIME, String.valueOf(vVar.f31129a));
            jSONObject.put("duration", String.valueOf(vVar.f31130b));
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31553a, "onVideoProgressNotify", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private String a(int i10, int i11) {
        if (i11 != 0) {
            double d10 = i10 / i11;
            try {
                return u0.a(Double.valueOf(d10)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i11 + "";
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(Object obj) {
        String str;
        super.a(obj);
        if (obj != null && (obj instanceof String)) {
            str = Base64.encodeToString(obj.toString().getBytes(), 2);
        } else {
            str = "";
        }
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31553a, "webviewshow", str);
    }

    @Override // com.mbridge.msdk.video.signal.impl.f, com.mbridge.msdk.video.signal.g
    public void a(int i10, int i11, int i12, int i13) {
        super.a(i10, i11, i12, i13);
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String str = "landscape";
            if (i10 != 2 ? i11 != 2 : i11 == 1) {
                str = "portrait";
            }
            jSONObject2.put(AdUnitActivity.EXTRA_ORIENTATION, str);
            jSONObject2.put("screen_width", i12);
            jSONObject2.put("screen_height", i13);
            jSONObject.put("data", jSONObject2);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31553a, "showDataInfo", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }
}

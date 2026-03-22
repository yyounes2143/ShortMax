package com.mbridge.msdk.video.signal.impl;

import android.content.res.Configuration;
import android.util.Base64;
import android.webkit.WebView;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import org.json.JSONObject;
/* compiled from: JSActivityProxy.java */
/* loaded from: classes6.dex */
public class i extends b {

    /* renamed from: a  reason: collision with root package name */
    private WebView f31534a;

    /* renamed from: b  reason: collision with root package name */
    private int f31535b = 0;

    public i(WebView webView) {
        this.f31534a = webView;
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void a(Configuration configuration) {
        super.a(configuration);
        try {
            JSONObject jSONObject = new JSONObject();
            if (configuration.orientation == 2) {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "landscape");
            } else {
                jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "portrait");
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31534a, AdUnitActivity.EXTRA_ORIENTATION, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void b() {
        super.b();
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31534a, "onSystemDestory", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void d() {
        super.d();
        this.f31535b = 0;
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31534a, "onSystemResume", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void e() {
        super.e();
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31534a, "onSystemBackPressed", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void g() {
        super.g();
        this.f31535b = 1;
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(this.f31534a, "onSystemPause", "");
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public void a(int i10) {
        super.a(i10);
        this.f31535b = i10;
    }

    @Override // com.mbridge.msdk.video.signal.impl.b, com.mbridge.msdk.video.signal.b
    public int a() {
        return this.f31535b;
    }
}

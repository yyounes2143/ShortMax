package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebView;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.video.bt.component.d;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeBTLayout extends BTBaseView {

    /* renamed from: p  reason: collision with root package name */
    private WebView f30586p;

    public MBridgeBTLayout(Context context) {
        super(context);
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.f30586p != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                jSONObject2.put("id", getInstanceId());
                jSONObject2.put(CallAppDataKey.KEY_TRACKING_EVENT_NAME, str);
                jSONObject2.put("data", jSONObject);
                f.a().a(this.f30586p, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                d.c().a(this.f30586p, "broadcast", getInstanceId());
            }
        }
    }

    public WebView getBtWebView() {
        return this.f30586p;
    }

    public void notifyEvent(String str) {
        WebView webView = this.f30586p;
        if (webView != null) {
            BTBaseView.a(webView, str, this.f30514d);
        }
    }

    public void onBackPressed() {
        if (this.f30586p != null) {
            d.c().a(this.f30586p, "onSystemBackPressed", this.f30514d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (this.f30586p != null) {
            try {
                CampaignEx campaignEx = this.f30512b;
                if (campaignEx != null && campaignEx.isDynamicView()) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                if (configuration.orientation == 2) {
                    jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "landscape");
                } else {
                    jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, "portrait");
                }
                jSONObject.put("instanceId", this.f30514d);
                f.a().a(this.f30586p, AdUnitActivity.EXTRA_ORIENTATION, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void setWebView(WebView webView) {
        this.f30586p = webView;
    }

    public MBridgeBTLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
    }
}

package com.bytedance.sdk.openadsdk.dLZ.oJ;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private final UN ZYk;
    private final String oJ;

    public cFZ(String str, UN un2) {
        this.ZYk = un2;
        this.oJ = str;
    }

    public static void oJ(si siVar, UN un2) {
        siVar.oJ("appInfo", new cFZ("appInfo", un2));
        siVar.oJ("adInfo", new cFZ("adInfo", un2));
        siVar.oJ("sendLog", new cFZ("sendLog", un2));
        siVar.oJ("playable_style", new cFZ("playable_style", un2));
        siVar.oJ("getTemplateInfo", new cFZ("getTemplateInfo", un2));
        siVar.oJ("getTeMaiAds", new cFZ("getTeMaiAds", un2));
        siVar.oJ("isViewable", new cFZ("isViewable", un2));
        siVar.oJ("getScreenSize", new cFZ("getScreenSize", un2));
        siVar.oJ("getCloseButtonInfo", new cFZ("getCloseButtonInfo", un2));
        siVar.oJ("getVolume", new cFZ("getVolume", un2));
        siVar.oJ("removeLoading", new cFZ("removeLoading", un2));
        siVar.oJ("sendReward", new cFZ("sendReward", un2));
        siVar.oJ("subscribe_app_ad", new cFZ("subscribe_app_ad", un2));
        siVar.oJ("download_app_ad", new cFZ("download_app_ad", un2));
        siVar.oJ("cancel_download_app_ad", new cFZ("cancel_download_app_ad", un2));
        siVar.oJ("unsubscribe_app_ad", new cFZ("unsubscribe_app_ad", un2));
        siVar.oJ("landscape_click", new cFZ("landscape_click", un2));
        siVar.oJ("clickEvent", new cFZ("clickEvent", un2));
        siVar.oJ("renderDidFinish", new cFZ("renderDidFinish", un2));
        siVar.oJ("dynamicTrack", new cFZ("dynamicTrack", un2));
        siVar.oJ("skipVideo", new cFZ("skipVideo", un2));
        siVar.oJ("muteVideo", new cFZ("muteVideo", un2));
        siVar.oJ("changeVideoState", new cFZ("changeVideoState", un2));
        siVar.oJ("getCurrentVideoState", new cFZ("getCurrentVideoState", un2));
        siVar.oJ("send_temai_product_ids", new cFZ("send_temai_product_ids", un2));
        siVar.oJ("getMaterialMeta", new cFZ("getMaterialMeta", un2));
        siVar.oJ("endcard_load", new cFZ("endcard_load", un2));
        siVar.oJ("pauseWebView", new cFZ("pauseWebView", un2));
        siVar.oJ("pauseWebViewTimers", new cFZ("pauseWebViewTimers", un2));
        siVar.oJ("webview_time_track", new cFZ("webview_time_track", un2));
        siVar.oJ("openPrivacy", new cFZ("openPrivacy", un2));
        siVar.oJ("openAdLandPageLinks", new cFZ("openAdLandPageLinks", un2));
        siVar.oJ("getNativeSiteCustomData", new cFZ("getNativeSiteCustomData", un2));
        siVar.oJ("close", new cFZ("close", un2));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    @Nullable
    public JSONObject oJ(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        UN.ZYk zYk = new UN.ZYk();
        zYk.oJ = NotificationCompat.CATEGORY_CALL;
        zYk.tB = this.oJ;
        zYk.ex = jSONObject;
        return this.ZYk.oJ(zYk, 3);
    }
}

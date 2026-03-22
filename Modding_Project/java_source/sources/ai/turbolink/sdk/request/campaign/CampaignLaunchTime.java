package ai.turbolink.sdk.request.campaign;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.properties.CampaignInfoProperties;
import ai.turbolink.sdk.device.SystemObserver;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerRequestPath;
import ai.turbolink.sdk.request.ServerRequestSync;
import ai.turbolink.sdk.request.campaign.CampaignInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: CampaignLaunchTime.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignLaunchTime {
    @NotNull
    public static final CampaignLaunchTime INSTANCE = new CampaignLaunchTime();
    @NotNull
    private static final String url = AppPrefHelper.Companion.getTURBOLINK_BASE_URL_V2() + ServerRequestPath.GET_CAMPAIGN_LAUNCH_TIME.getPath();

    private CampaignLaunchTime() {
    }

    public final void launch(@NotNull String campaignId, long j10, long j11) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("project_id", AppPrefHelper.Companion.getPROJECT_ID());
        jSONObject.put("campaign_hash", campaignId);
        jSONObject.put("static_used_time", j10);
        jSONObject.put("render_used_time", j11);
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_USERID, TurboLink.Companion.getUserId());
        jSONObject.put("session_id", TurboLink.SessionObj.INSTANCE.setAndGetSessionId());
        TurboLink.SDKAccessInfo sDKAccessInfo = TurboLink.SDKAccessInfo.INSTANCE;
        jSONObject.put("campaign_event_callback", sDKAccessInfo.getCampaignEventCallback());
        jSONObject.put("campaign_login_callback", sDKAccessInfo.getCampaignLoginCallback());
        jSONObject.put("campaign_redirect_callback", sDKAccessInfo.getCampaignRedirectCallback());
        jSONObject.put("campaign_set_delay", sDKAccessInfo.getCampaignSetDelay());
        jSONObject.put("campaign_social_click_callback", sDKAccessInfo.getCampaignSocialClickCallback());
        jSONObject.put("navigation_bar_type", sDKAccessInfo.getNavigationBarType());
        jSONObject.put("campaign_load_url", sDKAccessInfo.getCampaignLoadUrl());
        jSONObject.put("os", SystemObserver.Companion.getOS());
        ServerRequestSync.INSTANCE.doFreedomReq(url, jSONObject, new CampaignInfo.TurboLinkCampaignCallback() { // from class: ai.turbolink.sdk.request.campaign.CampaignLaunchTime$launch$1
            @Override // ai.turbolink.sdk.request.campaign.CampaignInfo.TurboLinkCampaignCallback
            public void onFailure(int i10, @NotNull String msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
            }

            @Override // ai.turbolink.sdk.request.campaign.CampaignInfo.TurboLinkCampaignCallback
            public void onSuccess(@NotNull CampaignInfoProperties response) {
                Intrinsics.checkNotNullParameter(response, "response");
            }
        });
    }
}

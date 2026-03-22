package ai.turbolink.sdk.request.campaign;

import ai.turbolink.sdk.campaign.properties.CampaignInfoProperties;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerRequestPath;
import ai.turbolink.sdk.request.ServerRequestSync;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: CampaignInfo.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignInfo {
    @Nullable
    private TurboLinkCampaignCallback callback;
    @NotNull
    private String campaignId;
    @Nullable
    private String linkHashId;
    @NotNull
    private final String url;

    /* compiled from: CampaignInfo.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface TurboLinkCampaignCallback {
        void onFailure(int i10, @NotNull String str);

        void onSuccess(@NotNull CampaignInfoProperties campaignInfoProperties);
    }

    public CampaignInfo(@NotNull String campaignId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.url = AppPrefHelper.Companion.getTURBOLINK_BASE_URL_V2() + ServerRequestPath.GET_CAMPAIGN_INFO.getPath();
        this.campaignId = campaignId;
        this.linkHashId = str;
    }

    public final void build(@Nullable TurboLinkCampaignCallback turboLinkCampaignCallback) {
        if (turboLinkCampaignCallback != null) {
            this.callback = turboLinkCampaignCallback;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("project_id", AppPrefHelper.Companion.getPROJECT_ID());
        jSONObject.put("campaign_id", this.campaignId);
        String str = this.linkHashId;
        if (str == null) {
            str = "";
        }
        jSONObject.put("link_hash", str);
        ServerRequestSync.INSTANCE.doFreedomReq(this.url, jSONObject, this.callback);
    }
}

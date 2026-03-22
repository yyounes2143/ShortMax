package ai.turbolink.sdk.campaign.properties;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CampaignInfoProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignInfoProperties {
    private int end;
    private int start;
    private int status;
    private int utm;
    @NotNull
    private String campaignId = "";
    @NotNull
    private String title = "";
    @NotNull
    private JSONArray langs = new JSONArray();
    @NotNull
    private String link = "";

    @NotNull
    public final String getCampaignId() {
        return this.campaignId;
    }

    public final int getEnd() {
        return this.end;
    }

    @NotNull
    public final JSONArray getLangs() {
        return this.langs;
    }

    @NotNull
    public final String getLink() {
        return this.link;
    }

    public final int getStart() {
        return this.start;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getUtm() {
        return this.utm;
    }

    public final void responseDataToProperties(@NotNull JSONObject responseData) {
        Intrinsics.checkNotNullParameter(responseData, "responseData");
        try {
            if (!responseData.isNull("data")) {
                JSONObject data = responseData.getJSONObject("data");
                if (data.has("campaign_id")) {
                    String string = data.getString("campaign_id");
                    Intrinsics.checkNotNullExpressionValue(string, "data.getString(\"campaign_id\")");
                    this.campaignId = string;
                }
                if (data.has("title")) {
                    String string2 = data.getString("title");
                    Intrinsics.checkNotNullExpressionValue(string2, "data.getString(\"title\")");
                    this.title = string2;
                }
                if (data.has("langs")) {
                    JSONArray jSONArray = data.getJSONArray("langs");
                    Intrinsics.checkNotNullExpressionValue(jSONArray, "data.getJSONArray(\"langs\")");
                    this.langs = jSONArray;
                }
                if (data.has("link")) {
                    String string3 = data.getString("link");
                    Intrinsics.checkNotNullExpressionValue(string3, "data.getString(\"link\")");
                    this.link = string3;
                }
                TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
                Intrinsics.checkNotNullExpressionValue(data, "data");
                this.start = turboLinkUtil.getJsonValueInt(data, "start");
                Intrinsics.checkNotNullExpressionValue(data, "data");
                this.end = turboLinkUtil.getJsonValueInt(data, "end");
                Intrinsics.checkNotNullExpressionValue(data, "data");
                this.utm = turboLinkUtil.getJsonValueInt(data, "utm");
                Intrinsics.checkNotNullExpressionValue(data, "data");
                this.status = turboLinkUtil.getJsonValueInt(data, "status");
            }
        } catch (JSONException e10) {
            TurboLinkLogger.w("The parser request returns occurred exception." + e10.getMessage());
        } catch (Exception e11) {
            TurboLinkLogger.w("parser request returns occurred exception." + e11.getMessage());
        }
    }

    @NotNull
    public final CampaignInfoProperties setCampaignId(@NotNull String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.campaignId = campaignId;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setEnd(int i10) {
        this.end = i10;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setLangs(@NotNull JSONArray langs) {
        Intrinsics.checkNotNullParameter(langs, "langs");
        this.langs = langs;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setLink(@NotNull String link) {
        Intrinsics.checkNotNullParameter(link, "link");
        this.link = link;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setStart(int i10) {
        this.start = i10;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setStatus(int i10) {
        this.status = i10;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setTitle(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        return this;
    }

    @NotNull
    public final CampaignInfoProperties setUtm(int i10) {
        this.utm = i10;
        return this;
    }
}

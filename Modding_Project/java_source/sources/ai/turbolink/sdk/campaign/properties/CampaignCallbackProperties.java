package ai.turbolink.sdk.campaign.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CampaignCallbackProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class CampaignCallbackProperties {
    @NotNull
    private String campaignTitle = "";
    @NotNull
    private String campaignUrl = "";
    @NotNull
    private String campaignUser = "";
    @NotNull
    private String campaignLang = "";

    @NotNull
    public final String getCampaignLang() {
        return this.campaignLang;
    }

    @NotNull
    public final String getCampaignTitle() {
        return this.campaignTitle;
    }

    @NotNull
    public final String getCampaignUrl() {
        return this.campaignUrl;
    }

    @NotNull
    public final String getCampaignUser() {
        return this.campaignUser;
    }

    @NotNull
    public final CampaignCallbackProperties setCampaignLang(@NotNull String campaignLang) {
        Intrinsics.checkNotNullParameter(campaignLang, "campaignLang");
        this.campaignLang = campaignLang;
        return this;
    }

    @NotNull
    public final CampaignCallbackProperties setCampaignTitle(@NotNull String campaignTitle) {
        Intrinsics.checkNotNullParameter(campaignTitle, "campaignTitle");
        this.campaignTitle = campaignTitle;
        return this;
    }

    @NotNull
    public final CampaignCallbackProperties setCampaignUrl(@NotNull String campaignUrl) {
        Intrinsics.checkNotNullParameter(campaignUrl, "campaignUrl");
        this.campaignUrl = campaignUrl;
        return this;
    }

    @NotNull
    public final CampaignCallbackProperties setCampaignUser(@NotNull String campaignUser) {
        Intrinsics.checkNotNullParameter(campaignUser, "campaignUser");
        this.campaignUser = campaignUser;
        return this;
    }
}

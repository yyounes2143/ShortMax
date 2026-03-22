package ai.turbolink.sdk.campaign.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ListenerRedirectProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListenerRedirectProperties {
    @Nullable
    private RewardInfoProperties rewardInfo;
    @NotNull
    private String campaignId = "";
    @NotNull
    private String campaignTitle = "";
    @NotNull
    private String campaignLang = "";
    @NotNull
    private String campaignUrl = "";
    @NotNull
    private String user = "";
    private int type = 1;
    @NotNull
    private String transId = "";
    @NotNull
    private String appUrl = "";

    @NotNull
    public final String getAppUrl() {
        return this.appUrl;
    }

    @NotNull
    public final String getCampaignId() {
        return this.campaignId;
    }

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

    @Nullable
    public final RewardInfoProperties getRewardInfo() {
        return this.rewardInfo;
    }

    @NotNull
    public final String getTransId() {
        return this.transId;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getUser() {
        return this.user;
    }

    @NotNull
    public final ListenerRedirectProperties setAppUrl(@NotNull String appUrl) {
        Intrinsics.checkNotNullParameter(appUrl, "appUrl");
        this.appUrl = appUrl;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setCampaignId(@NotNull String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.campaignId = campaignId;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setCampaignLang(@NotNull String campaignLang) {
        Intrinsics.checkNotNullParameter(campaignLang, "campaignLang");
        this.campaignLang = campaignLang;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setCampaignTitle(@NotNull String campaignTitle) {
        Intrinsics.checkNotNullParameter(campaignTitle, "campaignTitle");
        this.campaignTitle = campaignTitle;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setCampaignUrl(@NotNull String campaignUrl) {
        Intrinsics.checkNotNullParameter(campaignUrl, "campaignUrl");
        this.campaignUrl = campaignUrl;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setRewardInfo(@Nullable RewardInfoProperties rewardInfoProperties) {
        this.rewardInfo = rewardInfoProperties;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setTransId(@NotNull String transId) {
        Intrinsics.checkNotNullParameter(transId, "transId");
        this.transId = transId;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setType(int i10) {
        this.type = i10;
        return this;
    }

    @NotNull
    public final ListenerRedirectProperties setUser(@NotNull String user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
        return this;
    }
}

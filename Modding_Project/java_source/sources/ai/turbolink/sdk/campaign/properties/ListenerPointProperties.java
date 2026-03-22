package ai.turbolink.sdk.campaign.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListenerPointProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListenerPointProperties {
    private int position;
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

    public final int getPosition() {
        return this.position;
    }

    @NotNull
    public final String getUser() {
        return this.user;
    }

    @NotNull
    public final ListenerPointProperties setCampaignId(@NotNull String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.campaignId = campaignId;
        return this;
    }

    @NotNull
    public final ListenerPointProperties setCampaignLang(@NotNull String campaignLang) {
        Intrinsics.checkNotNullParameter(campaignLang, "campaignLang");
        this.campaignLang = campaignLang;
        return this;
    }

    @NotNull
    public final ListenerPointProperties setCampaignTitle(@NotNull String campaignTitle) {
        Intrinsics.checkNotNullParameter(campaignTitle, "campaignTitle");
        this.campaignTitle = campaignTitle;
        return this;
    }

    @NotNull
    public final ListenerPointProperties setCampaignUrl(@NotNull String campaignUrl) {
        Intrinsics.checkNotNullParameter(campaignUrl, "campaignUrl");
        this.campaignUrl = campaignUrl;
        return this;
    }

    @NotNull
    public final ListenerPointProperties setPosition(int i10) {
        this.position = i10;
        return this;
    }

    @NotNull
    public final ListenerPointProperties setUser(@NotNull String user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
        return this;
    }
}

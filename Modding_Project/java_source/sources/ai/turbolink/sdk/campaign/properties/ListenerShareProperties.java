package ai.turbolink.sdk.campaign.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListenerShareProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListenerShareProperties {
    @NotNull
    private String campaignTitle = "";
    @NotNull
    private String campaignLang = "";
    @NotNull
    private String campaignUrl = "";
    @NotNull
    private String user = "";
    @NotNull
    private String campaignId = "";
    @NotNull
    private String targetScheme = "";
    @NotNull
    private String sharingText = "";
    @NotNull
    private String noInstallPrompt = "";
    @NotNull
    private String shareLink = "";
    @NotNull
    private String shareText = "";

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

    @NotNull
    public final String getNoInstallPrompt() {
        return this.noInstallPrompt;
    }

    @NotNull
    public final String getShareLink() {
        return this.shareLink;
    }

    @NotNull
    public final String getShareText() {
        return this.shareText;
    }

    @NotNull
    public final String getSharingText() {
        return this.sharingText;
    }

    @NotNull
    public final String getTargetScheme() {
        return this.targetScheme;
    }

    @NotNull
    public final String getUser() {
        return this.user;
    }

    @NotNull
    public final ListenerShareProperties setCampaignId(@NotNull String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.campaignId = campaignId;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setCampaignLang(@NotNull String campaignLang) {
        Intrinsics.checkNotNullParameter(campaignLang, "campaignLang");
        this.campaignLang = campaignLang;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setCampaignTitle(@NotNull String campaignTitle) {
        Intrinsics.checkNotNullParameter(campaignTitle, "campaignTitle");
        this.campaignTitle = campaignTitle;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setCampaignUrl(@NotNull String campaignUrl) {
        Intrinsics.checkNotNullParameter(campaignUrl, "campaignUrl");
        this.campaignUrl = campaignUrl;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setNoInstallPrompt(@NotNull String noInstallPrompt) {
        Intrinsics.checkNotNullParameter(noInstallPrompt, "noInstallPrompt");
        this.noInstallPrompt = noInstallPrompt;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setShareLink(@NotNull String shareLink) {
        Intrinsics.checkNotNullParameter(shareLink, "shareLink");
        this.shareLink = shareLink;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setShareText(@NotNull String shareText) {
        Intrinsics.checkNotNullParameter(shareText, "shareText");
        this.shareText = shareText;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setSharingText(@NotNull String sharingText) {
        Intrinsics.checkNotNullParameter(sharingText, "sharingText");
        this.sharingText = sharingText;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setTargetScheme(@NotNull String targetScheme) {
        Intrinsics.checkNotNullParameter(targetScheme, "targetScheme");
        this.targetScheme = targetScheme;
        return this;
    }

    @NotNull
    public final ListenerShareProperties setUser(@NotNull String user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
        return this;
    }
}

package ai.turbolink.sdk.campaign.properties;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListenerEventProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class ListenerEventProperties {
    @NotNull
    private String campaignId = "";
    @NotNull
    private String campaignTitle = "";
    @NotNull
    private String campaignLang = "";
    @NotNull
    private String user = "";
    @NotNull
    private String additionalParam = "";
    @NotNull
    private String arguments = "";
    @NotNull
    private String scheme = "";
    @NotNull
    private String campaignUrl = "";

    @NotNull
    public final String getAdditionalParam() {
        return this.additionalParam;
    }

    @NotNull
    public final String getArguments() {
        return this.arguments;
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

    @NotNull
    public final String getScheme() {
        return this.scheme;
    }

    @NotNull
    public final String getUser() {
        return this.user;
    }

    @NotNull
    public final ListenerEventProperties setAdditionalParam(@NotNull String additionalParam) {
        Intrinsics.checkNotNullParameter(additionalParam, "additionalParam");
        this.additionalParam = additionalParam;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setArguments(@NotNull String arguments) {
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        this.arguments = arguments;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setCampaignId(@NotNull String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        this.campaignId = campaignId;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setCampaignLang(@NotNull String campaignLang) {
        Intrinsics.checkNotNullParameter(campaignLang, "campaignLang");
        this.campaignLang = campaignLang;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setCampaignTitle(@NotNull String campaignTitle) {
        Intrinsics.checkNotNullParameter(campaignTitle, "campaignTitle");
        this.campaignTitle = campaignTitle;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setCampaignUrl(@NotNull String campaignUrl) {
        Intrinsics.checkNotNullParameter(campaignUrl, "campaignUrl");
        this.campaignUrl = campaignUrl;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setScheme(@NotNull String scheme) {
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        this.scheme = scheme;
        return this;
    }

    @NotNull
    public final ListenerEventProperties setUser(@NotNull String user) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
        return this;
    }
}

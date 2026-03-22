package ai.turbolink.sdk.request;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ServerDefines.kt */
@Metadata
/* loaded from: classes.dex */
public enum TurboLinkCampaignEventType {
    PRECAMPAIGN("$campaign_reward_url"),
    CODECAMPAIGN("$campaign_code_url");
    
    @NotNull
    private String type;

    TurboLinkCampaignEventType(String str) {
        this.type = str;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }
}

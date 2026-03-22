package ai.turbolink.sdk.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CampaignDefines.kt */
@Metadata
/* loaded from: classes.dex */
public enum WebviewListener {
    LINK_SHARE_LISTENER("linkShareListener"),
    LINK_LOGIN_LISTENER("linkLoginListener"),
    LINK_EVENT_LISTENER("linkEventListener"),
    LINK_POINTS_LISTENER("linkPointsListener"),
    LINK_REG_LISTENER("linkRegListener"),
    LINK_REDIRECT_LISTENER("linkRedirectListener"),
    LINK_USE_BROWSER_OPEN_LISTENER("linkUseBrowserOpenListener"),
    LINK_CLIENT_REWARDS_LISTENER("linkClientRewardsListener");
    
    @NotNull
    private String listener;

    WebviewListener(String str) {
        this.listener = str;
    }

    @NotNull
    public final String getListener() {
        return this.listener;
    }

    public final void setListener(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.listener = str;
    }
}

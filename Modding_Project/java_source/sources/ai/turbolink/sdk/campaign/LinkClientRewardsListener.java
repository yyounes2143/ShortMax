package ai.turbolink.sdk.campaign;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignBuilder;
import ai.turbolink.sdk.campaign.properties.ClientRewardsProperties;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import android.webkit.JavascriptInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LinkClientRewardsListener.kt */
@Metadata
/* loaded from: classes.dex */
public final class LinkClientRewardsListener {
    @NotNull
    private Context context;

    public LinkClientRewardsListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @JavascriptInterface
    public final void postMessage(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        ClientRewardsProperties clientRewardsProperties = new ClientRewardsProperties();
        try {
            clientRewardsProperties.responseDataToProperties(new JSONObject(message));
        } catch (JSONException e10) {
            TurboLinkLogger.w("Parsing client rewards listener content is occurs exception." + e10.getMessage());
        }
        CampaignBuilder.ClientRewardsListener clientRewardsListener = TurboLink.Companion.getClientRewardsListener();
        if (clientRewardsListener != null) {
            clientRewardsListener.onSuccess(this.context, clientRewardsProperties);
        }
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }
}

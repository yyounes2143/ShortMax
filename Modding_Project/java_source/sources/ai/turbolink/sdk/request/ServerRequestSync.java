package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.deeplink.LinkProperties;
import ai.turbolink.sdk.request.assistance.ClientDistributeRewards;
import ai.turbolink.sdk.request.campaign.CampaignInfo;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import gt.g;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: ServerRequestSync.kt */
@Metadata
/* loaded from: classes.dex */
public final class ServerRequestSync {
    @NotNull
    public static final ServerRequestSync INSTANCE = new ServerRequestSync();

    private ServerRequestSync() {
    }

    public final void doFreedomReq(@NotNull String url, @NotNull JSONObject reqBody, @Nullable CampaignInfo.TurboLinkCampaignCallback turboLinkCampaignCallback) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(reqBody, "reqBody");
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion != null) {
            g.d(i.a(q0.b()), null, null, new ServerRequestSync$doFreedomReq$1(companion, url, reqBody, turboLinkCampaignCallback, null), 3, null);
        } else {
            TurboLinkLogger.v("TurboLink is not setup properly. make sure to call autoInstance.");
        }
    }

    public final void doFreedomReqDeepLink(@NotNull String url, @NotNull JSONObject reqBody, @NotNull LinkProperties.LinkPropertiesCallback callback) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(reqBody, "reqBody");
        Intrinsics.checkNotNullParameter(callback, "callback");
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion != null) {
            g.d(i.a(q0.b()), null, null, new ServerRequestSync$doFreedomReqDeepLink$1(companion, url, reqBody, callback, null), 3, null);
        } else {
            TurboLinkLogger.v("TurboLink is not setup properly. make sure to call autoInstance.");
        }
    }

    public final void doFreedomReqRewards(@NotNull String url, @NotNull JSONObject reqBody, @NotNull ClientDistributeRewards.TurboLinkClientRewardsCallback callback) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(reqBody, "reqBody");
        Intrinsics.checkNotNullParameter(callback, "callback");
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion != null) {
            g.d(i.a(q0.b()), null, null, new ServerRequestSync$doFreedomReqRewards$1(companion, url, reqBody, callback, null), 3, null);
        } else {
            TurboLinkLogger.v("TurboLink is not setup properly. make sure to call autoInstance.");
        }
    }

    public final void doReq(@NotNull ServerRequestURL req) {
        Intrinsics.checkNotNullParameter(req, "req");
        TurboLink companion = TurboLink.Companion.getInstance();
        if (companion != null) {
            g.d(i.a(q0.b()), null, null, new ServerRequestSync$doReq$1(companion, req, null), 3, null);
        } else {
            TurboLinkLogger.v("TurboLink is not setup properly. make sure to call autoInstance.");
        }
    }
}

package ai.turbolink.sdk.request.event;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignLoadURL;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.request.ServerRequestURL;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.assistance.SDKVerify;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: EventReopen.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventReopen extends ServerRequestURL {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventReopen(@NotNull Context context, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        super(context, TurboLinkDefaultEvent.REOPEN.getEvent());
        Intrinsics.checkNotNullParameter(context, "context");
        setAsync();
        setPost(new JSONObject());
        setCallback(turboLinkEventCallback);
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleErrors(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.handleErrors(context);
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleFailure(int i10, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        super.handleFailure(i10, msg);
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onFailure(i10, msg);
        }
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleSuccess(@NotNull ServerResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        super.handleSuccess(response);
        TurboLink.SDKAccessInfo sDKAccessInfo = TurboLink.SDKAccessInfo.INSTANCE;
        JSONArray sdkLaunchEventSequence = sDKAccessInfo.getSdkLaunchEventSequence();
        TurboLinkUtil turboLinkUtil = TurboLinkUtil.INSTANCE;
        sdkLaunchEventSequence.put(turboLinkUtil.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.RUN_CALLBACK_FUNC.getEventSeq()));
        if (response.getEventResponse().getUseVerify() == 1) {
            if (response.getEventResponse().getLinkHashId().length() > 0) {
                sDKAccessInfo.getSdkLaunchEventSequence().put(turboLinkUtil.insertObjectToArray(SDKVerify.SDKLaunchEventSeq.MATCH_LINK.getEventSeq()));
            }
            SDKVerify.INSTANCE.launchCheck();
        }
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onSuccess(response.getEventResponse());
        }
        CampaignLoadURL.appLaunch$default(CampaignLoadURL.INSTANCE, response, false, 2, null);
    }
}

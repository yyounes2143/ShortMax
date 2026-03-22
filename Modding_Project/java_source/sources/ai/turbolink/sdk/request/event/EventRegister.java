package ai.turbolink.sdk.request.event;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignWebviewActivity;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.ServerRequestURL;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.assistance.ClientDistributeRewards;
import ai.turbolink.sdk.request.assistance.SDKVerify;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: EventRegister.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventRegister extends ServerRequestURL {
    @NotNull
    private final Activity activity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventRegister(@NotNull Context context, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, @NotNull Activity activity) {
        super(context, TurboLinkDefaultEvent.REGISTER.getEvent());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activity, "activity");
        setAsync();
        setPost(new JSONObject());
        this.activity = activity;
        setCallback(turboLinkEventCallback);
    }

    private final void openWebview() {
        TurboLink.Companion companion = TurboLink.Companion;
        if (!TextUtils.isEmpty(companion.getLastNoLoginWebviewUrl())) {
            Intent intent = new Intent(this.activity, CampaignWebviewActivity.class);
            String lastNoLoginWebviewUrl = companion.getLastNoLoginWebviewUrl();
            intent.putExtra(AppPrefHelper.Companion.getWEBVIEW_INTENT_EXTRA_KEY(), lastNoLoginWebviewUrl);
            companion.setLastOpenWebViewUrl(lastNoLoginWebviewUrl);
            intent.setFlags(67108864);
            this.activity.startActivity(intent);
        }
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
        openWebview();
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onFailure(i10, msg);
        }
    }

    @Override // ai.turbolink.sdk.request.ServerRequestURL, ai.turbolink.sdk.request.ServerRequest
    public void handleSuccess(@NotNull ServerResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        super.handleSuccess(response);
        openWebview();
        ClientDistributeRewards.INSTANCE.doDistribute();
        if (TurboLink.SessionObj.INSTANCE.getSessionUseVerify() == 1) {
            SDKVerify.INSTANCE.launchCheck();
        }
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onSuccess(response.getEventResponse());
        }
    }
}

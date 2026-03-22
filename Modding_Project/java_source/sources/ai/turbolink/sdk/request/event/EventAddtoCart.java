package ai.turbolink.sdk.request.event;

import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.request.ServerRequestURL;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import ai.turbolink.sdk.request.assistance.ClientDistributeRewards;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventAddtoCart.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventAddtoCart extends ServerRequestURL {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventAddtoCart(@NotNull Context context, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback, @NotNull EventAddtoCartProperties addtoCartProperties) {
        super(context, TurboLinkDefaultEvent.ADDTOCART.getEvent());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(addtoCartProperties, "addtoCartProperties");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event_data", addtoCartProperties);
        } catch (JSONException e10) {
            TurboLinkLogger.w("Occurred exception when add addtoCartProperties to the event_data." + e10.getMessage());
        }
        setPost(jSONObject);
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
        ClientDistributeRewards.INSTANCE.doDistribute();
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onSuccess(response.getEventResponse());
        }
    }
}

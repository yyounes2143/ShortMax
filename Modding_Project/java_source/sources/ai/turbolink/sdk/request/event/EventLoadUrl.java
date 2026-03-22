package ai.turbolink.sdk.request.event;

import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.request.ServerRequestURL;
import ai.turbolink.sdk.request.ServerResponse;
import ai.turbolink.sdk.request.TurboLinkDefaultEvent;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: EventLoadUrl.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventLoadUrl extends ServerRequestURL {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventLoadUrl(@NotNull Context context, @Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        super(context, TurboLinkDefaultEvent.LOADURL.getEvent());
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
        TurboLinkEvent.TurboLinkEventCallback callback = getCallback();
        if (callback != null) {
            callback.onSuccess(response.getEventResponse());
        }
    }
}

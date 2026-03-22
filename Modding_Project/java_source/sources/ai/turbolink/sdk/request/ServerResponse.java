package ai.turbolink.sdk.request;

import ai.turbolink.sdk.request.response.EventResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: ServerResponose.kt */
@Metadata
/* loaded from: classes.dex */
public final class ServerResponse {
    @Nullable
    private EventResponse eventResponse;
    @NotNull
    private final String message;
    @NotNull
    private final String requestId;
    @Nullable
    private JSONObject responseBody;
    private final int responseStatus;
    @NotNull
    private final String tag;

    public ServerResponse(@NotNull String tag, int i10, @NotNull String requestId, @NotNull String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(message, "message");
        this.responseStatus = i10;
        this.tag = tag;
        this.requestId = requestId;
        this.message = message;
    }

    @NotNull
    public final EventResponse getEventResponse() {
        EventResponse eventResponse = this.eventResponse;
        if (eventResponse == null) {
            JSONObject jSONObject = this.responseBody;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            eventResponse = new EventResponse(jSONObject);
        }
        return eventResponse;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final JSONObject getResponseBody() {
        return this.responseBody;
    }

    public final int getResponseStatus() {
        return this.responseStatus;
    }

    public final void setResponseBody(@NotNull JSONObject post) {
        Intrinsics.checkNotNullParameter(post, "post");
        this.responseBody = post;
        this.eventResponse = new EventResponse(post);
    }
}

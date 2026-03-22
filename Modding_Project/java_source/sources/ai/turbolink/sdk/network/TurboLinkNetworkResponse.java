package ai.turbolink.sdk.network;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkNetworkResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkNetworkResponse {
    @NotNull
    private String requestID;
    private final int responseCode;
    @NotNull
    private final String responseData;

    public TurboLinkNetworkResponse(int i10, @NotNull String responseData) {
        Intrinsics.checkNotNullParameter(responseData, "responseData");
        this.requestID = "";
        this.responseCode = i10;
        this.responseData = responseData;
    }

    @NotNull
    public final String getRequestID() {
        return this.requestID;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    @NotNull
    public final String getResponseData() {
        return this.responseData;
    }

    public final void setRequestId(@NotNull String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.requestID = requestId;
    }
}

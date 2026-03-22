package androidx.credentials.provider;

import androidx.credentials.CreateCredentialRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProviderCreateCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public final class ProviderCreateCredentialRequest {
    @NotNull
    private final CallingAppInfo callingAppInfo;
    @NotNull
    private final CreateCredentialRequest callingRequest;

    public ProviderCreateCredentialRequest(@NotNull CreateCredentialRequest callingRequest, @NotNull CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(callingRequest, "callingRequest");
        Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
        this.callingRequest = callingRequest;
        this.callingAppInfo = callingAppInfo;
    }

    @NotNull
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }

    @NotNull
    public final CreateCredentialRequest getCallingRequest() {
        return this.callingRequest;
    }
}

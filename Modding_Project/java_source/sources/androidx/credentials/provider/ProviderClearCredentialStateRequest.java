package androidx.credentials.provider;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProviderClearCredentialStateRequest.kt */
@Metadata
/* loaded from: classes.dex */
public final class ProviderClearCredentialStateRequest {
    @NotNull
    private final CallingAppInfo callingAppInfo;

    public ProviderClearCredentialStateRequest(@NotNull CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
        this.callingAppInfo = callingAppInfo;
    }

    @NotNull
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }
}

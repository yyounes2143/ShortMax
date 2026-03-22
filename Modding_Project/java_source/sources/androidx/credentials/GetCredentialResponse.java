package androidx.credentials;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetCredentialResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetCredentialResponse {
    @NotNull
    private final Credential credential;

    public GetCredentialResponse(@NotNull Credential credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        this.credential = credential;
    }

    @NotNull
    public final Credential getCredential() {
        return this.credential;
    }
}

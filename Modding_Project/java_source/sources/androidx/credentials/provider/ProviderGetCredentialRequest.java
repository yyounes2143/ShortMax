package androidx.credentials.provider;

import androidx.credentials.CredentialOption;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProviderGetCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public final class ProviderGetCredentialRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final CallingAppInfo callingAppInfo;
    @NotNull
    private final List<CredentialOption> credentialOptions;

    /* compiled from: ProviderGetCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProviderGetCredentialRequest createFrom$credentials_release(@NotNull List<? extends CredentialOption> options, @NotNull CallingAppInfo callingAppInfo) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
            return new ProviderGetCredentialRequest(options, callingAppInfo);
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProviderGetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @NotNull CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
        Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
        this.credentialOptions = credentialOptions;
        this.callingAppInfo = callingAppInfo;
    }

    @NotNull
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }

    @NotNull
    public final List<CredentialOption> getCredentialOptions() {
        return this.credentialOptions;
    }
}

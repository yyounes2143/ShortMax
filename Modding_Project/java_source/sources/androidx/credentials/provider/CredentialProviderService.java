package androidx.credentials.provider;

import android.os.CancellationSignal;
import android.os.OutcomeReceiver;
import android.service.credentials.ClearCredentialStateRequest;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.provider.utils.BeginCreateCredentialUtil;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import androidx.credentials.provider.utils.ClearCredentialUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProviderService.kt */
@RequiresApi(34)
@Metadata
/* loaded from: classes.dex */
public abstract class CredentialProviderService extends android.service.credentials.CredentialProviderService {
    private boolean isTestMode;
    @Nullable
    private ProviderClearCredentialStateRequest lastClearRequest;
    @Nullable
    private BeginCreateCredentialRequest lastCreateRequest;
    @Nullable
    private BeginGetCredentialRequest lastGetRequest;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    @Nullable
    public final ProviderClearCredentialStateRequest getLastClearRequest() {
        return this.lastClearRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    @Nullable
    public final BeginCreateCredentialRequest getLastCreateRequest() {
        return this.lastCreateRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    @Nullable
    public final BeginGetCredentialRequest getLastGetRequest() {
        return this.lastGetRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final boolean isTestMode() {
        return this.isTestMode;
    }

    public final void onBeginCreateCredential(@NotNull android.service.credentials.BeginCreateCredentialRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull final OutcomeReceiver callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        Intrinsics.checkNotNullParameter(callback, "callback");
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.provider.CredentialProviderService$onBeginCreateCredential$outcome$1
            public void onError(@NotNull CreateCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                OutcomeReceiver outcomeReceiver2 = OutcomeReceiver.this;
                w.a();
                outcomeReceiver2.onError(v.a(error.getType(), error.getMessage()));
            }

            public void onResult(@NotNull BeginCreateCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                OutcomeReceiver.this.onResult(BeginCreateCredentialUtil.Companion.convertToFrameworkResponse(response));
            }
        };
        BeginCreateCredentialRequest convertToJetpackRequest$credentials_release = BeginCreateCredentialUtil.Companion.convertToJetpackRequest$credentials_release(request);
        if (this.isTestMode) {
            this.lastCreateRequest = convertToJetpackRequest$credentials_release;
        }
        onBeginCreateCredentialRequest(convertToJetpackRequest$credentials_release, cancellationSignal, androidx.core.os.b.a(outcomeReceiver));
    }

    public abstract void onBeginCreateCredentialRequest(@NotNull BeginCreateCredentialRequest beginCreateCredentialRequest, @NotNull CancellationSignal cancellationSignal, @NotNull OutcomeReceiver outcomeReceiver);

    public final void onBeginGetCredential(@NotNull android.service.credentials.BeginGetCredentialRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull final OutcomeReceiver callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BeginGetCredentialRequest convertToJetpackRequest$credentials_release = BeginGetCredentialUtil.Companion.convertToJetpackRequest$credentials_release(request);
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.provider.CredentialProviderService$onBeginGetCredential$outcome$1
            public void onError(@NotNull GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                OutcomeReceiver outcomeReceiver2 = OutcomeReceiver.this;
                y.a();
                outcomeReceiver2.onError(x.a(error.getType(), error.getMessage()));
            }

            public void onResult(@NotNull BeginGetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                OutcomeReceiver.this.onResult(BeginGetCredentialUtil.Companion.convertToFrameworkResponse(response));
            }
        };
        if (this.isTestMode) {
            this.lastGetRequest = convertToJetpackRequest$credentials_release;
        }
        onBeginGetCredentialRequest(convertToJetpackRequest$credentials_release, cancellationSignal, androidx.core.os.b.a(outcomeReceiver));
    }

    public abstract void onBeginGetCredentialRequest(@NotNull BeginGetCredentialRequest beginGetCredentialRequest, @NotNull CancellationSignal cancellationSignal, @NotNull OutcomeReceiver outcomeReceiver);

    public final void onClearCredentialState(@NotNull ClearCredentialStateRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull final OutcomeReceiver callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        Intrinsics.checkNotNullParameter(callback, "callback");
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.provider.CredentialProviderService$onClearCredentialState$outcome$1
            public void onError(@NotNull ClearCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                OutcomeReceiver outcomeReceiver2 = OutcomeReceiver.this;
                a0.a();
                outcomeReceiver2.onError(z.a(error.getType(), error.getMessage()));
            }

            public void onResult(@Nullable Void r22) {
                OutcomeReceiver.this.onResult(r22);
            }
        };
        ProviderClearCredentialStateRequest convertToJetpackRequest$credentials_release = ClearCredentialUtil.Companion.convertToJetpackRequest$credentials_release(request);
        if (this.isTestMode) {
            this.lastClearRequest = convertToJetpackRequest$credentials_release;
        }
        onClearCredentialStateRequest(convertToJetpackRequest$credentials_release, cancellationSignal, androidx.core.os.b.a(outcomeReceiver));
    }

    public abstract void onClearCredentialStateRequest(@NotNull ProviderClearCredentialStateRequest providerClearCredentialStateRequest, @NotNull CancellationSignal cancellationSignal, @NotNull OutcomeReceiver outcomeReceiver);

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setLastClearRequest(@Nullable ProviderClearCredentialStateRequest providerClearCredentialStateRequest) {
        this.lastClearRequest = providerClearCredentialStateRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setLastCreateRequest(@Nullable BeginCreateCredentialRequest beginCreateCredentialRequest) {
        this.lastCreateRequest = beginCreateCredentialRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setLastGetRequest(@Nullable BeginGetCredentialRequest beginGetCredentialRequest) {
        this.lastGetRequest = beginGetCredentialRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setTestMode(boolean z10) {
        this.isTestMode = z10;
    }
}

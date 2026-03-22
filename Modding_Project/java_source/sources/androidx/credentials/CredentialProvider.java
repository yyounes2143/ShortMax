package androidx.credentials;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.annotation.RequiresApi;
import androidx.credentials.PrepareGetCredentialResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProvider.kt */
@Metadata
/* loaded from: classes.dex */
public interface CredentialProvider {
    boolean isAvailableOnDevice();

    void onClearCredential(@NotNull ClearCredentialStateRequest clearCredentialStateRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<Void, ClearCredentialException> credentialManagerCallback);

    void onCreateCredential(@NotNull Context context, @NotNull CreateCredentialRequest createCredentialRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> credentialManagerCallback);

    void onGetCredential(@NotNull Context context, @NotNull GetCredentialRequest getCredentialRequest, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback);

    @RequiresApi(34)
    default void onGetCredential(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pendingGetCredentialHandle, "pendingGetCredentialHandle");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    @RequiresApi(34)
    default void onPrepareCredential(@NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<PrepareGetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }
}

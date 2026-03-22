package androidx.credentials;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.annotation.RequiresApi;
import androidx.credentials.PrepareGetCredentialResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialProviderConfigurationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialProviderConfigurationException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialManagerImpl.kt */
@RequiresApi(16)
@Metadata
@SuppressLint({"ObsoleteSdkInt"})
/* loaded from: classes.dex */
public final class CredentialManagerImpl implements CredentialManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String INTENT_ACTION_FOR_CREDENTIAL_PROVIDER_SETTINGS = "android.settings.CREDENTIAL_PROVIDER";
    @NotNull
    private final Context context;

    /* compiled from: CredentialManagerImpl.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CredentialManagerImpl(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // androidx.credentials.CredentialManager
    public void clearCredentialStateAsync(@NotNull ClearCredentialStateRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<Void, ClearCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CredentialProvider bestAvailableProvider = CredentialProviderFactory.Companion.getBestAvailableProvider(this.context);
        if (bestAvailableProvider == null) {
            callback.onError(new ClearCredentialProviderConfigurationException("clearCredentialStateAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
        } else {
            bestAvailableProvider.onClearCredential(request, cancellationSignal, executor, callback);
        }
    }

    @Override // androidx.credentials.CredentialManager
    public void createCredentialAsync(@NotNull Context context, @NotNull CreateCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CredentialProvider bestAvailableProvider = CredentialProviderFactory.Companion.getBestAvailableProvider(this.context);
        if (bestAvailableProvider == null) {
            callback.onError(new CreateCredentialProviderConfigurationException("createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
        } else {
            bestAvailableProvider.onCreateCredential(context, request, cancellationSignal, executor, callback);
        }
    }

    @Override // androidx.credentials.CredentialManager
    @RequiresApi(34)
    @NotNull
    public PendingIntent createSettingsPendingIntent() {
        Intent intent = new Intent(INTENT_ACTION_FOR_CREDENTIAL_PROVIDER_SETTINGS);
        intent.setData(Uri.parse("package:" + this.context.getPackageName()));
        PendingIntent activity = PendingIntent.getActivity(this.context, 0, intent, 67108864);
        Intrinsics.checkNotNullExpressionValue(activity, "getActivity(context, 0, …ingIntent.FLAG_IMMUTABLE)");
        return activity;
    }

    @Override // androidx.credentials.CredentialManager
    public void getCredentialAsync(@NotNull Context context, @NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CredentialProvider bestAvailableProvider = CredentialProviderFactory.Companion.getBestAvailableProvider(this.context);
        if (bestAvailableProvider == null) {
            callback.onError(new GetCredentialProviderConfigurationException("getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
        } else {
            bestAvailableProvider.onGetCredential(context, request, cancellationSignal, executor, callback);
        }
    }

    @Override // androidx.credentials.CredentialManager
    @RequiresApi(34)
    public void prepareGetCredentialAsync(@NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<PrepareGetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CredentialProviderFactory.Companion.getUAndAboveProvider(this.context).onPrepareCredential(request, cancellationSignal, executor, callback);
    }

    @Override // androidx.credentials.CredentialManager
    @RequiresApi(34)
    public void getCredentialAsync(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pendingGetCredentialHandle, "pendingGetCredentialHandle");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        CredentialProviderFactory.Companion.getUAndAboveProvider(context).onGetCredential(context, pendingGetCredentialHandle, cancellationSignal, executor, callback);
    }
}

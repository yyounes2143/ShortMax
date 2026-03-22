package androidx.credentials;

import android.annotation.SuppressLint;
import android.content.Context;
import android.credentials.ClearCredentialStateException;
import android.credentials.CreateCredentialRequest;
import android.credentials.CredentialOption;
import android.credentials.GetCredentialRequest;
import android.credentials.PrepareGetCredentialResponse;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.OutcomeReceiver;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.Credential;
import androidx.credentials.PrepareGetCredentialResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.ClearCredentialUnsupportedException;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialNoCreateOptionException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialUnsupportedException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialCustomException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialException;
import androidx.credentials.exceptions.publickeycredential.GetPublicKeyCredentialException;
import androidx.credentials.internal.FrameworkImplHelper;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProviderFrameworkImpl.kt */
@RequiresApi(34)
@Metadata
@SourceDebugExtension({"SMAP\nCredentialProviderFrameworkImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,397:1\n1855#2,2:398\n*S KotlinDebug\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n*L\n243#1:398,2\n*E\n"})
/* loaded from: classes.dex */
public final class CredentialProviderFrameworkImpl implements CredentialProvider {
    @NotNull
    private static final String CREATE_DOM_EXCEPTION_PREFIX = "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION";
    @NotNull
    private static final Companion Companion = new Companion(null);
    @NotNull
    private static final String GET_DOM_EXCEPTION_PREFIX = "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION";
    @NotNull
    private static final String TAG = "CredManProvService";
    @Nullable
    private final android.credentials.CredentialManager credentialManager;

    /* compiled from: CredentialProviderFrameworkImpl.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CredentialProviderFrameworkImpl(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.credentialManager = k.a(context.getSystemService("credential"));
    }

    private final android.credentials.CreateCredentialRequest convertCreateRequestToFrameworkClass(CreateCredentialRequest createCredentialRequest, Context context) {
        CreateCredentialRequest.Builder isSystemProviderRequired;
        CreateCredentialRequest.Builder alwaysSendAppInfoToProvider;
        android.credentials.CreateCredentialRequest build;
        a0.a();
        isSystemProviderRequired = z.a(createCredentialRequest.getType(), FrameworkImplHelper.Companion.getFinalCreateCredentialData(createCredentialRequest, context), createCredentialRequest.getCandidateQueryData()).setIsSystemProviderRequired(createCredentialRequest.isSystemProviderRequired());
        alwaysSendAppInfoToProvider = isSystemProviderRequired.setAlwaysSendAppInfoToProvider(true);
        Intrinsics.checkNotNullExpressionValue(alwaysSendAppInfoToProvider, "Builder(request.type,\n  …ndAppInfoToProvider(true)");
        setOriginForCreateRequest(createCredentialRequest, alwaysSendAppInfoToProvider);
        build = alwaysSendAppInfoToProvider.build();
        Intrinsics.checkNotNullExpressionValue(build, "createCredentialRequestBuilder.build()");
        return build;
    }

    private final android.credentials.GetCredentialRequest convertGetRequestToFrameworkClass(GetCredentialRequest getCredentialRequest) {
        android.credentials.GetCredentialRequest build;
        CredentialOption.Builder isSystemProviderRequired;
        CredentialOption.Builder allowedProviders;
        android.credentials.CredentialOption build2;
        w.a();
        GetCredentialRequest.Builder a10 = u.a(GetCredentialRequest.Companion.toRequestDataBundle(getCredentialRequest));
        for (CredentialOption credentialOption : getCredentialRequest.getCredentialOptions()) {
            x.a();
            isSystemProviderRequired = v.a(credentialOption.getType(), credentialOption.getRequestData(), credentialOption.getCandidateQueryData()).setIsSystemProviderRequired(credentialOption.isSystemProviderRequired());
            allowedProviders = isSystemProviderRequired.setAllowedProviders(credentialOption.getAllowedProviders());
            build2 = allowedProviders.build();
            a10.addCredentialOption(build2);
        }
        setOriginForGetRequest(getCredentialRequest, a10);
        build = a10.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }

    private final android.credentials.ClearCredentialStateRequest createFrameworkClearCredentialRequest() {
        t.a();
        return s.a(new Bundle());
    }

    private final boolean isCredmanDisabled(Function0<Unit> function0) {
        if (this.credentialManager == null) {
            function0.invoke();
            return true;
        }
        return false;
    }

    @SuppressLint({"MissingPermission"})
    private final void setOriginForCreateRequest(CreateCredentialRequest createCredentialRequest, CreateCredentialRequest.Builder builder) {
        if (createCredentialRequest.getOrigin() != null) {
            builder.setOrigin(createCredentialRequest.getOrigin());
        }
    }

    @SuppressLint({"MissingPermission"})
    private final void setOriginForGetRequest(GetCredentialRequest getCredentialRequest, GetCredentialRequest.Builder builder) {
        if (getCredentialRequest.getOrigin() != null) {
            builder.setOrigin(getCredentialRequest.getOrigin());
        }
    }

    @NotNull
    public final GetCredentialResponse convertGetResponseToJetpackClass$credentials_release(@NotNull android.credentials.GetCredentialResponse response) {
        android.credentials.Credential credential;
        String type;
        Bundle data;
        Intrinsics.checkNotNullParameter(response, "response");
        credential = response.getCredential();
        Intrinsics.checkNotNullExpressionValue(credential, "response.credential");
        Credential.Companion companion = Credential.Companion;
        type = credential.getType();
        Intrinsics.checkNotNullExpressionValue(type, "credential.type");
        data = credential.getData();
        Intrinsics.checkNotNullExpressionValue(data, "credential.data");
        return new GetCredentialResponse(companion.createFrom(type, data));
    }

    @NotNull
    public final PrepareGetCredentialResponse convertPrepareGetResponseToJetpackClass$credentials_release(@NotNull android.credentials.PrepareGetCredentialResponse response) {
        PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle;
        Intrinsics.checkNotNullParameter(response, "response");
        pendingGetCredentialHandle = response.getPendingGetCredentialHandle();
        return new PrepareGetCredentialResponse.Builder().setFrameworkResponse(response).setPendingGetCredentialHandle(new PrepareGetCredentialResponse.PendingGetCredentialHandle(pendingGetCredentialHandle)).build();
    }

    @NotNull
    public final CreateCredentialException convertToJetpackCreateException$credentials_release(@NotNull android.credentials.CreateCredentialException error) {
        String type;
        String type2;
        String type3;
        String message;
        String type4;
        String message2;
        String message3;
        String message4;
        String message5;
        String message6;
        Intrinsics.checkNotNullParameter(error, "error");
        type = error.getType();
        switch (type.hashCode()) {
            case -2055374133:
                if (type.equals(CreateCredentialCancellationException.TYPE_CREATE_CREDENTIAL_CANCELLATION_EXCEPTION)) {
                    message3 = error.getMessage();
                    return new CreateCredentialCancellationException(message3);
                }
                break;
            case 1316905704:
                if (type.equals(CreateCredentialUnknownException.TYPE_CREATE_CREDENTIAL_UNKNOWN_EXCEPTION)) {
                    message4 = error.getMessage();
                    return new CreateCredentialUnknownException(message4);
                }
                break;
            case 2092588512:
                if (type.equals(CreateCredentialInterruptedException.TYPE_CREATE_CREDENTIAL_INTERRUPTED_EXCEPTION)) {
                    message5 = error.getMessage();
                    return new CreateCredentialInterruptedException(message5);
                }
                break;
            case 2131915191:
                if (type.equals(CreateCredentialNoCreateOptionException.TYPE_CREATE_CREDENTIAL_NO_CREATE_OPTION)) {
                    message6 = error.getMessage();
                    return new CreateCredentialNoCreateOptionException(message6);
                }
                break;
        }
        type2 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type2, "error.type");
        if (!StringsKt.V(type2, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, null)) {
            type3 = error.getType();
            Intrinsics.checkNotNullExpressionValue(type3, "error.type");
            message = error.getMessage();
            return new CreateCredentialCustomException(type3, message);
        }
        CreatePublicKeyCredentialException.Companion companion = CreatePublicKeyCredentialException.Companion;
        type4 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type4, "error.type");
        message2 = error.getMessage();
        return companion.createFrom(type4, message2);
    }

    @NotNull
    public final GetCredentialException convertToJetpackGetException$credentials_release(@NotNull android.credentials.GetCredentialException error) {
        String type;
        String type2;
        String type3;
        String message;
        String type4;
        String message2;
        String message3;
        String message4;
        String message5;
        String message6;
        Intrinsics.checkNotNullParameter(error, "error");
        type = error.getType();
        switch (type.hashCode()) {
            case -781118336:
                if (type.equals(GetCredentialUnknownException.TYPE_GET_CREDENTIAL_UNKNOWN_EXCEPTION)) {
                    message3 = error.getMessage();
                    return new GetCredentialUnknownException(message3);
                }
                break;
            case -45448328:
                if (type.equals(GetCredentialInterruptedException.TYPE_GET_CREDENTIAL_INTERRUPTED_EXCEPTION)) {
                    message4 = error.getMessage();
                    return new GetCredentialInterruptedException(message4);
                }
                break;
            case 580557411:
                if (type.equals(GetCredentialCancellationException.TYPE_GET_CREDENTIAL_CANCELLATION_EXCEPTION)) {
                    message5 = error.getMessage();
                    return new GetCredentialCancellationException(message5);
                }
                break;
            case 627896683:
                if (type.equals(NoCredentialException.TYPE_FRAMEWORK_TYPE_NO_CREDENTIAL)) {
                    message6 = error.getMessage();
                    return new NoCredentialException(message6);
                }
                break;
        }
        type2 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type2, "error.type");
        if (!StringsKt.V(type2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, null)) {
            type3 = error.getType();
            Intrinsics.checkNotNullExpressionValue(type3, "error.type");
            message = error.getMessage();
            return new GetCredentialCustomException(type3, message);
        }
        GetPublicKeyCredentialException.Companion companion = GetPublicKeyCredentialException.Companion;
        type4 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type4, "error.type");
        message2 = error.getMessage();
        return companion.createFrom(type4, message2);
    }

    @Override // androidx.credentials.CredentialProvider
    public boolean isAvailableOnDevice() {
        if (Build.VERSION.SDK_INT >= 34) {
            return true;
        }
        return false;
    }

    @Override // androidx.credentials.CredentialProvider
    public void onClearCredential(@NotNull ClearCredentialStateRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<Void, ClearCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Log.i(TAG, "In CredentialProviderFrameworkImpl onClearCredential");
        if (isCredmanDisabled(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onClearCredential$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new ClearCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onClearCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th2) {
                onError(i0.a(th2));
            }

            public void onError(@NotNull ClearCredentialStateException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i("CredManProvService", "ClearCredentialStateException error returned from framework");
                callback.onError(new ClearCredentialUnknownException(null, 1, null));
            }

            public void onResult(@NotNull Void response) {
                Intrinsics.checkNotNullParameter(response, "response");
                Log.i("CredManProvService", "Clear result returned from framework: ");
                callback.onResult(response);
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.clearCredentialState(createFrameworkClearCredentialRequest(), cancellationSignal, executor, androidx.core.os.b.a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onCreateCredential(@NotNull Context context, @NotNull final CreateCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (isCredmanDisabled(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onCreateCredential$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new CreateCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onCreateCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th2) {
                onError(j0.a(th2));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(l0.a(obj));
            }

            public void onError(@NotNull android.credentials.CreateCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i("CredManProvService", "CreateCredentialResponse error returned from framework");
                callback.onError(this.convertToJetpackCreateException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.CreateCredentialResponse response) {
                Bundle data;
                Intrinsics.checkNotNullParameter(response, "response");
                Log.i("CredManProvService", "Create Result returned from framework: ");
                CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = callback;
                CreateCredentialResponse.Companion companion = CreateCredentialResponse.Companion;
                String type = request.getType();
                data = response.getData();
                Intrinsics.checkNotNullExpressionValue(data, "response.data");
                credentialManagerCallback.onResult(companion.createFrom(type, data));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.createCredential(context, convertCreateRequestToFrameworkClass(request, context), cancellationSignal, executor, androidx.core.os.b.a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pendingGetCredentialHandle, "pendingGetCredentialHandle");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (isCredmanDisabled(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th2) {
                onError(n0.a(th2));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(m0.a(obj));
            }

            public void onError(@NotNull android.credentials.GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                callback.onError(this.convertToJetpackGetException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.GetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                callback.onResult(this.convertGetResponseToJetpackClass$credentials_release(response));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        PrepareGetCredentialResponse.PendingGetCredentialHandle frameworkHandle = pendingGetCredentialHandle.getFrameworkHandle();
        Intrinsics.checkNotNull(frameworkHandle);
        credentialManager.getCredential(context, frameworkHandle, cancellationSignal, executor, androidx.core.os.b.a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onPrepareCredential(@NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<PrepareGetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (isCredmanDisabled(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onPrepareCredential$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th2) {
                onError(n0.a(th2));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(o0.a(obj));
            }

            public void onError(@NotNull android.credentials.GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                callback.onError(this.convertToJetpackGetException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.PrepareGetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                callback.onResult(this.convertPrepareGetResponseToJetpackClass$credentials_release(response));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.prepareGetCredential(convertGetRequestToFrameworkClass(request), cancellationSignal, executor, androidx.core.os.b.a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(@NotNull Context context, @NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (isCredmanDisabled(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$outcome$2
            public /* bridge */ /* synthetic */ void onError(Throwable th2) {
                onError(n0.a(th2));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(m0.a(obj));
            }

            public void onError(@NotNull android.credentials.GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i("CredManProvService", "GetCredentialResponse error returned from framework");
                callback.onError(this.convertToJetpackGetException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.GetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                Log.i("CredManProvService", "GetCredentialResponse returned from framework");
                callback.onResult(this.convertGetResponseToJetpackClass$credentials_release(response));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.getCredential(context, convertGetRequestToFrameworkClass(request), cancellationSignal, executor, androidx.core.os.b.a(outcomeReceiver));
    }
}

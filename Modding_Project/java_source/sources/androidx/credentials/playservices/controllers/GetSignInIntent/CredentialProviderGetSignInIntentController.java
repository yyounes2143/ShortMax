package androidx.credentials.playservices.controllers.GetSignInIntent;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.common.api.ApiException;
import com.google.android.libraries.identity.googleid.GetSignInWithGoogleOption;
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProviderGetSignInIntentController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderGetSignInIntentController extends CredentialProviderController<GetCredentialRequest, GetSignInIntentRequest, SignInCredential, GetCredentialResponse, GetCredentialException> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "GetSignInIntent";
    @Nullable
    private static CredentialProviderGetSignInIntentController controller;
    public CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback;
    @Nullable
    private CancellationSignal cancellationSignal;
    @NotNull
    private final Context context;
    public Executor executor;
    @NotNull
    private final CredentialProviderGetSignInIntentController$resultReceiver$1 resultReceiver;

    /* compiled from: CredentialProviderGetSignInIntentController.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CredentialProviderGetSignInIntentController getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (CredentialProviderGetSignInIntentController.controller == null) {
                CredentialProviderGetSignInIntentController.controller = new CredentialProviderGetSignInIntentController(context);
            }
            CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController = CredentialProviderGetSignInIntentController.controller;
            Intrinsics.checkNotNull(credentialProviderGetSignInIntentController);
            return credentialProviderGetSignInIntentController;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$resultReceiver$1] */
    public CredentialProviderGetSignInIntentController(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i10, @NotNull Bundle resultData) {
                CancellationSignal cancellationSignal;
                boolean maybeReportErrorFromResultReceiver;
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController = CredentialProviderGetSignInIntentController.this;
                CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 credentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
                Executor executor = CredentialProviderGetSignInIntentController.this.getExecutor();
                CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback = CredentialProviderGetSignInIntentController.this.getCallback();
                cancellationSignal = CredentialProviderGetSignInIntentController.this.cancellationSignal;
                maybeReportErrorFromResultReceiver = credentialProviderGetSignInIntentController.maybeReportErrorFromResultReceiver(resultData, credentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1, executor, callback, cancellationSignal);
                if (maybeReportErrorFromResultReceiver) {
                    return;
                }
                CredentialProviderGetSignInIntentController.this.handleResponse$credentials_play_services_auth_release(resultData.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i10, (Intent) resultData.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    @NotNull
    public static final CredentialProviderGetSignInIntentController getInstance(@NotNull Context context) {
        return Companion.getInstance(context);
    }

    @VisibleForTesting
    @NotNull
    public final GoogleIdTokenCredential createGoogleIdCredential(@NotNull SignInCredential response) {
        Intrinsics.checkNotNullParameter(response, "response");
        GoogleIdTokenCredential.a aVar = new GoogleIdTokenCredential.a();
        String id2 = response.getId();
        Intrinsics.checkNotNullExpressionValue(id2, "response.id");
        GoogleIdTokenCredential.a e10 = aVar.e(id2);
        try {
            String googleIdToken = response.getGoogleIdToken();
            Intrinsics.checkNotNull(googleIdToken);
            e10.f(googleIdToken);
            if (response.getDisplayName() != null) {
                e10.b(response.getDisplayName());
            }
            if (response.getGivenName() != null) {
                e10.d(response.getGivenName());
            }
            if (response.getFamilyName() != null) {
                e10.c(response.getFamilyName());
            }
            if (response.getPhoneNumber() != null) {
                e10.g(response.getPhoneNumber());
            }
            if (response.getProfilePictureUri() != null) {
                e10.h(response.getProfilePictureUri());
            }
            return e10.a();
        } catch (Exception unused) {
            throw new GetCredentialUnknownException("When attempting to convert get response, null Google ID Token found");
        }
    }

    @NotNull
    public final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> getCallback() {
        CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback = this.callback;
        if (credentialManagerCallback != null) {
            return credentialManagerCallback;
        }
        Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
        return null;
    }

    @NotNull
    public final Executor getExecutor() {
        Executor executor = this.executor;
        if (executor != null) {
            return executor;
        }
        Intrinsics.throwUninitializedPropertyAccessException("executor");
        return null;
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
    /* JADX WARN: Type inference failed for: r5v7, types: [androidx.credentials.exceptions.GetCredentialInterruptedException, T] */
    /* JADX WARN: Type inference failed for: r5v9, types: [androidx.credentials.exceptions.GetCredentialCancellationException, T] */
    public final void handleResponse$credentials_play_services_auth_release(int i10, int i11, @Nullable Intent intent) {
        if (i10 != CredentialProviderBaseController.getCONTROLLER_REQUEST_CODE()) {
            Log.w(TAG, "Returned request code " + CredentialProviderBaseController.getCONTROLLER_REQUEST_CODE() + " which  does not match what was given " + i10);
        } else if (CredentialProviderController.maybeReportErrorResultCodeGet(i11, new Function2<CancellationSignal, Function0<? extends Unit>, Unit>() { // from class: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$handleResponse$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(CancellationSignal cancellationSignal, Function0<? extends Unit> function0) {
                invoke2(cancellationSignal, (Function0<Unit>) function0);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable CancellationSignal cancellationSignal, @NotNull Function0<Unit> f10) {
                Intrinsics.checkNotNullParameter(f10, "f");
                CredentialProviderController.Companion companion = CredentialProviderController.Companion;
                CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, f10);
            }
        }, new CredentialProviderGetSignInIntentController$handleResponse$2(this), this.cancellationSignal)) {
        } else {
            try {
                SignInCredential signInCredentialFromIntent = Identity.getSignInClient(this.context).getSignInCredentialFromIntent(intent);
                Intrinsics.checkNotNullExpressionValue(signInCredentialFromIntent, "getSignInClient(context)…redentialFromIntent(data)");
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderGetSignInIntentController$handleResponse$3(this, convertResponseToCredentialManager(signInCredentialFromIntent)));
            } catch (GetCredentialException e10) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderGetSignInIntentController$handleResponse$5(this, e10));
            } catch (ApiException e11) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new GetCredentialUnknownException(e11.getMessage());
                if (e11.getStatusCode() == 16) {
                    objectRef.element = new GetCredentialCancellationException(e11.getMessage());
                } else if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(e11.getStatusCode()))) {
                    objectRef.element = new GetCredentialInterruptedException(e11.getMessage());
                }
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderGetSignInIntentController$handleResponse$4(this, objectRef));
            } catch (Throwable th2) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderGetSignInIntentController$handleResponse$6(this, new GetCredentialUnknownException(th2.getMessage())));
            }
        }
    }

    public final void setCallback(@NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback) {
        Intrinsics.checkNotNullParameter(credentialManagerCallback, "<set-?>");
        this.callback = credentialManagerCallback;
    }

    public final void setExecutor(@NotNull Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "<set-?>");
        this.executor = executor;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @VisibleForTesting
    @NotNull
    public GetSignInIntentRequest convertRequestToPlayServices(@NotNull GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (request.getCredentialOptions().size() == 1) {
            CredentialOption credentialOption = request.getCredentialOptions().get(0);
            Intrinsics.checkNotNull(credentialOption, "null cannot be cast to non-null type com.google.android.libraries.identity.googleid.GetSignInWithGoogleOption");
            GetSignInWithGoogleOption getSignInWithGoogleOption = (GetSignInWithGoogleOption) credentialOption;
            GetSignInIntentRequest build = GetSignInIntentRequest.builder().setServerClientId(getSignInWithGoogleOption.c()).filterByHostedDomain(getSignInWithGoogleOption.a()).setNonce(getSignInWithGoogleOption.b()).build();
            Intrinsics.checkNotNullExpressionValue(build, "builder()\n            .s…nce)\n            .build()");
            return build;
        }
        throw new GetCredentialUnsupportedException("GetSignInWithGoogleOption cannot be combined with other options.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @NotNull
    public GetCredentialResponse convertResponseToCredentialManager(@NotNull SignInCredential response) {
        GoogleIdTokenCredential googleIdTokenCredential;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getGoogleIdToken() != null) {
            googleIdTokenCredential = createGoogleIdCredential(response);
        } else {
            Log.w(TAG, "Credential returned but no google Id found");
            googleIdTokenCredential = null;
        }
        if (googleIdTokenCredential != null) {
            return new GetCredentialResponse(googleIdTokenCredential);
        }
        throw new GetCredentialUnknownException("When attempting to convert get response, null credential found");
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(@NotNull GetCredentialRequest request, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback, @NotNull Executor executor, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.cancellationSignal = cancellationSignal;
        setCallback(callback);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return;
        }
        try {
            GetSignInIntentRequest convertRequestToPlayServices = convertRequestToPlayServices(request);
            Intent intent = new Intent(this.context, HiddenActivity.class);
            intent.putExtra(CredentialProviderBaseController.REQUEST_TAG, convertRequestToPlayServices);
            generateHiddenActivityIntent(this.resultReceiver, intent, CredentialProviderBaseController.SIGN_IN_INTENT_TAG);
            this.context.startActivity(intent);
        } catch (Exception e10) {
            if (e10 instanceof GetCredentialUnsupportedException) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderGetSignInIntentController$invokePlayServices$1(this, e10));
            } else {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderGetSignInIntentController$invokePlayServices$2(this));
            }
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getCallback$annotations() {
    }

    @VisibleForTesting
    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getExecutor$annotations() {
    }
}

package androidx.credentials.playservices.controllers.BeginSignIn;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.PublicKeyCredentialControllerUtility;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.common.api.ApiException;
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
/* compiled from: CredentialProviderBeginSignInController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderBeginSignInController extends CredentialProviderController<GetCredentialRequest, BeginSignInRequest, SignInCredential, GetCredentialResponse, GetCredentialException> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "BeginSignIn";
    @Nullable
    private static CredentialProviderBeginSignInController controller;
    public CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback;
    @Nullable
    private CancellationSignal cancellationSignal;
    @NotNull
    private final Context context;
    public Executor executor;
    @NotNull
    private final CredentialProviderBeginSignInController$resultReceiver$1 resultReceiver;

    /* compiled from: CredentialProviderBeginSignInController.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CredentialProviderBeginSignInController getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (CredentialProviderBeginSignInController.controller == null) {
                CredentialProviderBeginSignInController.controller = new CredentialProviderBeginSignInController(context);
            }
            CredentialProviderBeginSignInController credentialProviderBeginSignInController = CredentialProviderBeginSignInController.controller;
            Intrinsics.checkNotNull(credentialProviderBeginSignInController);
            return credentialProviderBeginSignInController;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$resultReceiver$1] */
    public CredentialProviderBeginSignInController(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i10, @NotNull Bundle resultData) {
                CancellationSignal cancellationSignal;
                boolean maybeReportErrorFromResultReceiver;
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderBeginSignInController credentialProviderBeginSignInController = CredentialProviderBeginSignInController.this;
                CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1 credentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
                Executor executor = CredentialProviderBeginSignInController.this.getExecutor();
                CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback = CredentialProviderBeginSignInController.this.getCallback();
                cancellationSignal = CredentialProviderBeginSignInController.this.cancellationSignal;
                maybeReportErrorFromResultReceiver = credentialProviderBeginSignInController.maybeReportErrorFromResultReceiver(resultData, credentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1, executor, callback, cancellationSignal);
                if (maybeReportErrorFromResultReceiver) {
                    return;
                }
                CredentialProviderBeginSignInController.this.handleResponse$credentials_play_services_auth_release(resultData.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i10, (Intent) resultData.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    private final GoogleIdTokenCredential createGoogleIdCredential(SignInCredential signInCredential) {
        GoogleIdTokenCredential.a aVar = new GoogleIdTokenCredential.a();
        String id2 = signInCredential.getId();
        Intrinsics.checkNotNullExpressionValue(id2, "response.id");
        GoogleIdTokenCredential.a e10 = aVar.e(id2);
        String googleIdToken = signInCredential.getGoogleIdToken();
        Intrinsics.checkNotNull(googleIdToken);
        GoogleIdTokenCredential.a f10 = e10.f(googleIdToken);
        if (signInCredential.getDisplayName() != null) {
            f10.b(signInCredential.getDisplayName());
        }
        if (signInCredential.getGivenName() != null) {
            f10.d(signInCredential.getGivenName());
        }
        if (signInCredential.getFamilyName() != null) {
            f10.c(signInCredential.getFamilyName());
        }
        if (signInCredential.getPhoneNumber() != null) {
            f10.g(signInCredential.getPhoneNumber());
        }
        if (signInCredential.getProfilePictureUri() != null) {
            f10.h(signInCredential.getProfilePictureUri());
        }
        return f10.a();
    }

    @NotNull
    public static final CredentialProviderBeginSignInController getInstance(@NotNull Context context) {
        return Companion.getInstance(context);
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
        } else if (CredentialProviderController.maybeReportErrorResultCodeGet(i11, new Function2<CancellationSignal, Function0<? extends Unit>, Unit>() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$1
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
        }, new CredentialProviderBeginSignInController$handleResponse$2(this), this.cancellationSignal)) {
        } else {
            try {
                SignInCredential signInCredentialFromIntent = Identity.getSignInClient(this.context).getSignInCredentialFromIntent(intent);
                Intrinsics.checkNotNullExpressionValue(signInCredentialFromIntent, "getSignInClient(context)…redentialFromIntent(data)");
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderBeginSignInController$handleResponse$3(this, convertResponseToCredentialManager(signInCredentialFromIntent)));
            } catch (GetCredentialException e10) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderBeginSignInController$handleResponse$5(this, e10));
            } catch (ApiException e11) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new GetCredentialUnknownException(e11.getMessage());
                if (e11.getStatusCode() == 16) {
                    objectRef.element = new GetCredentialCancellationException(e11.getMessage());
                } else if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(e11.getStatusCode()))) {
                    objectRef.element = new GetCredentialInterruptedException(e11.getMessage());
                }
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderBeginSignInController$handleResponse$4(this, objectRef));
            } catch (Throwable th2) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderBeginSignInController$handleResponse$6(this, new GetCredentialUnknownException(th2.getMessage())));
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
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public BeginSignInRequest convertRequestToPlayServices(@NotNull GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return BeginSignInControllerUtility.Companion.constructBeginSignInRequest$credentials_play_services_auth_release(request, this.context);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public GetCredentialResponse convertResponseToCredentialManager(@NotNull SignInCredential response) {
        Credential credential;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getPassword() != null) {
            String id2 = response.getId();
            Intrinsics.checkNotNullExpressionValue(id2, "response.id");
            String password = response.getPassword();
            Intrinsics.checkNotNull(password);
            credential = new PasswordCredential(id2, password);
        } else if (response.getGoogleIdToken() != null) {
            credential = createGoogleIdCredential(response);
        } else if (response.getPublicKeyCredential() != null) {
            credential = new PublicKeyCredential(PublicKeyCredentialControllerUtility.Companion.toAssertPasskeyResponse(response));
        } else {
            Log.w(TAG, "Credential returned but no google Id or password or passkey found");
            credential = null;
        }
        if (credential != null) {
            return new GetCredentialResponse(credential);
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
        BeginSignInRequest convertRequestToPlayServices = convertRequestToPlayServices(request);
        Intent intent = new Intent(this.context, HiddenActivity.class);
        intent.putExtra(CredentialProviderBaseController.REQUEST_TAG, convertRequestToPlayServices);
        generateHiddenActivityIntent(this.resultReceiver, intent, CredentialProviderBaseController.BEGIN_SIGN_IN_TAG);
        try {
            this.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderBeginSignInController$invokePlayServices$1(this));
        }
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getCallback$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getExecutor$annotations() {
    }
}

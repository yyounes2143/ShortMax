package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
/* compiled from: CredentialProviderCreatePublicKeyCredentialController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderCreatePublicKeyCredentialController extends CredentialProviderController<CreatePublicKeyCredentialRequest, PublicKeyCredentialCreationOptions, PublicKeyCredential, CreateCredentialResponse, CreateCredentialException> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "CreatePublicKey";
    @Nullable
    private static CredentialProviderCreatePublicKeyCredentialController controller;
    private CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback;
    @Nullable
    private CancellationSignal cancellationSignal;
    @NotNull
    private final Context context;
    private Executor executor;
    @NotNull
    private final CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1 resultReceiver;

    /* compiled from: CredentialProviderCreatePublicKeyCredentialController.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CredentialProviderCreatePublicKeyCredentialController getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (CredentialProviderCreatePublicKeyCredentialController.controller == null) {
                CredentialProviderCreatePublicKeyCredentialController.controller = new CredentialProviderCreatePublicKeyCredentialController(context);
            }
            CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = CredentialProviderCreatePublicKeyCredentialController.controller;
            Intrinsics.checkNotNull(credentialProviderCreatePublicKeyCredentialController);
            return credentialProviderCreatePublicKeyCredentialController;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1] */
    public CredentialProviderCreatePublicKeyCredentialController(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i10, @NotNull Bundle resultData) {
                Executor executor;
                Executor executor2;
                CredentialManagerCallback credentialManagerCallback;
                CredentialManagerCallback credentialManagerCallback2;
                CancellationSignal cancellationSignal;
                boolean maybeReportErrorFromResultReceiver;
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = CredentialProviderCreatePublicKeyCredentialController.this;
                CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 credentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
                executor = CredentialProviderCreatePublicKeyCredentialController.this.executor;
                if (executor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                    executor2 = null;
                } else {
                    executor2 = executor;
                }
                credentialManagerCallback = CredentialProviderCreatePublicKeyCredentialController.this.callback;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
                    credentialManagerCallback2 = null;
                } else {
                    credentialManagerCallback2 = credentialManagerCallback;
                }
                cancellationSignal = CredentialProviderCreatePublicKeyCredentialController.this.cancellationSignal;
                maybeReportErrorFromResultReceiver = credentialProviderCreatePublicKeyCredentialController.maybeReportErrorFromResultReceiver(resultData, credentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1, executor2, credentialManagerCallback2, cancellationSignal);
                if (maybeReportErrorFromResultReceiver) {
                    return;
                }
                CredentialProviderCreatePublicKeyCredentialController.this.handleResponse$credentials_play_services_auth_release(resultData.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i10, (Intent) resultData.getParcelable(CredentialProviderBaseController.RESULT_DATA_TAG));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreatePublicKeyCredentialDomException JSONExceptionToPKCError(JSONException jSONException) {
        String message = jSONException.getMessage();
        if (message != null && message.length() > 0) {
            return new CreatePublicKeyCredentialDomException(new EncodingError(), message);
        }
        return new CreatePublicKeyCredentialDomException(new EncodingError(), "Unknown error");
    }

    @NotNull
    public static final CredentialProviderCreatePublicKeyCredentialController getInstance(@NotNull Context context) {
        return Companion.getInstance(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$0(CredentialProviderCreatePublicKeyCredentialController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = this$0.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreatePublicKeyCredentialDomException(new UnknownError(), "Upon handling create public key credential response, fido module giving null bytes indicating internal error"));
    }

    public final void handleResponse$credentials_play_services_auth_release(int i10, int i11, @Nullable Intent intent) {
        byte[] bArr;
        if (i10 != CredentialProviderBaseController.getCONTROLLER_REQUEST_CODE()) {
            Log.w(TAG, "Returned request code " + CredentialProviderBaseController.getCONTROLLER_REQUEST_CODE() + " does not match what was given " + i10);
        } else if (CredentialProviderController.maybeReportErrorResultCodeCreate(i11, new Function2<CancellationSignal, Function0<? extends Unit>, Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$1
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
        }, new CredentialProviderCreatePublicKeyCredentialController$handleResponse$2(this), this.cancellationSignal)) {
        } else {
            Executor executor = null;
            if (intent != null) {
                bArr = intent.getByteArrayExtra(Fido.FIDO2_KEY_CREDENTIAL_EXTRA);
            } else {
                bArr = null;
            }
            if (bArr == null) {
                if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(this.cancellationSignal)) {
                    return;
                }
                Executor executor2 = this.executor;
                if (executor2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                } else {
                    executor = executor2;
                }
                executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$0(CredentialProviderCreatePublicKeyCredentialController.this);
                    }
                });
                return;
            }
            PublicKeyCredential deserializeFromBytes = PublicKeyCredential.deserializeFromBytes(bArr);
            Intrinsics.checkNotNullExpressionValue(deserializeFromBytes, "deserializeFromBytes(bytes)");
            CreateCredentialException publicKeyCredentialResponseContainsError = PublicKeyCredentialControllerUtility.Companion.publicKeyCredentialResponseContainsError(deserializeFromBytes);
            if (publicKeyCredentialResponseContainsError != null) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$handleResponse$4(this, publicKeyCredentialResponseContainsError));
                return;
            }
            try {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$handleResponse$5(this, convertResponseToCredentialManager(deserializeFromBytes)));
            } catch (JSONException e10) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$handleResponse$6(this, e10));
            } catch (Throwable th2) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$handleResponse$7(this, th2));
            }
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public PublicKeyCredentialCreationOptions convertRequestToPlayServices(@NotNull CreatePublicKeyCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return PublicKeyCredentialControllerUtility.Companion.convert(request);
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public CreateCredentialResponse convertResponseToCredentialManager(@NotNull PublicKeyCredential response) {
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            String json = response.toJson();
            Intrinsics.checkNotNullExpressionValue(json, "response.toJson()");
            return new CreatePublicKeyCredentialResponse(json);
        } catch (Throwable th2) {
            throw new CreateCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th2.getMessage());
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(@NotNull CreatePublicKeyCredentialRequest request, @NotNull CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback, @NotNull Executor executor, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.cancellationSignal = cancellationSignal;
        this.callback = callback;
        this.executor = executor;
        try {
            PublicKeyCredentialCreationOptions convertRequestToPlayServices = convertRequestToPlayServices(request);
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
                return;
            }
            Intent intent = new Intent(this.context, HiddenActivity.class);
            intent.putExtra(CredentialProviderBaseController.REQUEST_TAG, convertRequestToPlayServices);
            generateHiddenActivityIntent(this.resultReceiver, intent, CredentialProviderBaseController.CREATE_PUBLIC_KEY_CREDENTIAL_TAG);
            try {
                this.context.startActivity(intent);
            } catch (Exception unused) {
                CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3(this));
            }
        } catch (JSONException e10) {
            CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1(this, e10));
        } catch (Throwable th2) {
            CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$2(this, th2));
        }
    }

    @VisibleForTesting(otherwise = 2)
    private static /* synthetic */ void getCallback$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    private static /* synthetic */ void getCancellationSignal$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    private static /* synthetic */ void getExecutor$annotations() {
    }
}

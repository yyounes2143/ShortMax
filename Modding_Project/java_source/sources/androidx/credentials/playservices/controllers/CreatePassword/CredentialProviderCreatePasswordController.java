package androidx.credentials.playservices.controllers.CreatePassword;

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
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.CreatePasswordResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SignInPassword;
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
/* compiled from: CredentialProviderCreatePasswordController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderCreatePasswordController extends CredentialProviderController<CreatePasswordRequest, SavePasswordRequest, Unit, CreateCredentialResponse, CreateCredentialException> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "CreatePassword";
    @Nullable
    private static CredentialProviderCreatePasswordController controller;
    private CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback;
    @Nullable
    private CancellationSignal cancellationSignal;
    @NotNull
    private final Context context;
    private Executor executor;
    @NotNull
    private final CredentialProviderCreatePasswordController$resultReceiver$1 resultReceiver;

    /* compiled from: CredentialProviderCreatePasswordController.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CredentialProviderCreatePasswordController getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (CredentialProviderCreatePasswordController.controller == null) {
                CredentialProviderCreatePasswordController.controller = new CredentialProviderCreatePasswordController(context);
            }
            CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = CredentialProviderCreatePasswordController.controller;
            Intrinsics.checkNotNull(credentialProviderCreatePasswordController);
            return credentialProviderCreatePasswordController;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1] */
    public CredentialProviderCreatePasswordController(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i10, @NotNull Bundle resultData) {
                Executor executor;
                Executor executor2;
                CredentialManagerCallback credentialManagerCallback;
                CredentialManagerCallback credentialManagerCallback2;
                CancellationSignal cancellationSignal;
                boolean maybeReportErrorFromResultReceiver;
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = CredentialProviderCreatePasswordController.this;
                CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 credentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 = new CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion);
                executor = CredentialProviderCreatePasswordController.this.executor;
                if (executor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                    executor2 = null;
                } else {
                    executor2 = executor;
                }
                credentialManagerCallback = CredentialProviderCreatePasswordController.this.callback;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
                    credentialManagerCallback2 = null;
                } else {
                    credentialManagerCallback2 = credentialManagerCallback;
                }
                cancellationSignal = CredentialProviderCreatePasswordController.this.cancellationSignal;
                maybeReportErrorFromResultReceiver = credentialProviderCreatePasswordController.maybeReportErrorFromResultReceiver(resultData, credentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1, executor2, credentialManagerCallback2, cancellationSignal);
                if (maybeReportErrorFromResultReceiver) {
                    return;
                }
                CredentialProviderCreatePasswordController.this.handleResponse$credentials_play_services_auth_release(resultData.getInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG), i10);
            }
        };
    }

    @NotNull
    public static final CredentialProviderCreatePasswordController getInstance(@NotNull Context context) {
        return Companion.getInstance(context);
    }

    public final void handleResponse$credentials_play_services_auth_release(int i10, int i11) {
        if (i10 != CredentialProviderBaseController.getCONTROLLER_REQUEST_CODE()) {
            Log.w(TAG, "Returned request code " + CredentialProviderBaseController.getCONTROLLER_REQUEST_CODE() + " which does not match what was given " + i10);
        } else if (CredentialProviderController.maybeReportErrorResultCodeCreate(i11, new Function2<CancellationSignal, Function0<? extends Unit>, Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$handleResponse$1
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
        }, new CredentialProviderCreatePasswordController$handleResponse$2(this), this.cancellationSignal)) {
        } else {
            CredentialProviderController.cancelOrCallbackExceptionOrResult(this.cancellationSignal, new CredentialProviderCreatePasswordController$handleResponse$3(this, convertResponseToCredentialManager(Unit.f60915a)));
        }
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public SavePasswordRequest convertRequestToPlayServices(@NotNull CreatePasswordRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SavePasswordRequest build = SavePasswordRequest.builder().setSignInPassword(new SignInPassword(request.getId(), request.getPassword())).build();
        Intrinsics.checkNotNullExpressionValue(build, "builder().setSignInPassw…ssword)\n        ).build()");
        return build;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public CreateCredentialResponse convertResponseToCredentialManager(@NotNull Unit response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return new CreatePasswordResponse();
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(@NotNull CreatePasswordRequest request, @NotNull CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback, @NotNull Executor executor, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.cancellationSignal = cancellationSignal;
        this.callback = callback;
        this.executor = executor;
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return;
        }
        SavePasswordRequest convertRequestToPlayServices = convertRequestToPlayServices(request);
        Intent intent = new Intent(this.context, HiddenActivity.class);
        intent.putExtra(CredentialProviderBaseController.REQUEST_TAG, convertRequestToPlayServices);
        generateHiddenActivityIntent(this.resultReceiver, intent, CredentialProviderBaseController.CREATE_PASSWORD_TAG);
        try {
            this.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderCreatePasswordController$invokePlayServices$1(this));
        }
    }

    @VisibleForTesting(otherwise = 2)
    private static /* synthetic */ void getCallback$annotations() {
    }

    @VisibleForTesting(otherwise = 2)
    private static /* synthetic */ void getCancellationSignal$annotations() {
    }
}

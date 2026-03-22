package androidx.credentials.playservices.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProviderController.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class CredentialProviderController<T1, T2, R2, R1, E1> extends CredentialProviderBaseController {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String ERROR_MESSAGE_START_ACTIVITY_FAILED = "Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context.";
    @NotNull
    private final Context context;

    /* compiled from: CredentialProviderController.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        protected final void cancelOrCallbackExceptionOrResult(@Nullable CancellationSignal cancellationSignal, @NotNull Function0<Unit> onResultOrException) {
            Intrinsics.checkNotNullParameter(onResultOrException, "onResultOrException");
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
                return;
            }
            onResultOrException.invoke();
        }

        @NotNull
        public final String generateErrorStringCanceled$credentials_play_services_auth_release() {
            return "activity is cancelled by the user.";
        }

        @NotNull
        public final String generateErrorStringUnknown$credentials_play_services_auth_release(int i10) {
            return "activity with result code: " + i10 + " indicating not RESULT_OK";
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [androidx.credentials.exceptions.CreateCredentialUnknownException, T] */
        /* JADX WARN: Type inference failed for: r4v4, types: [androidx.credentials.exceptions.CreateCredentialCancellationException, T] */
        protected final boolean maybeReportErrorResultCodeCreate(int i10, @NotNull Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> cancelOnError, @NotNull final Function1<? super CreateCredentialException, Unit> onError, @Nullable CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(cancelOnError, "cancelOnError");
            Intrinsics.checkNotNullParameter(onError, "onError");
            if (i10 != -1) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new CreateCredentialUnknownException(generateErrorStringUnknown$credentials_play_services_auth_release(i10));
                if (i10 == 0) {
                    objectRef.element = new CreateCredentialCancellationException(generateErrorStringCanceled$credentials_play_services_auth_release());
                }
                cancelOnError.invoke(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$maybeReportErrorResultCodeCreate$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
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
                        onError.invoke(objectRef.element);
                    }
                });
                return true;
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
        /* JADX WARN: Type inference failed for: r4v4, types: [androidx.credentials.exceptions.GetCredentialCancellationException, T] */
        protected final boolean maybeReportErrorResultCodeGet(int i10, @NotNull Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> cancelOnError, @NotNull final Function1<? super GetCredentialException, Unit> onError, @Nullable CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(cancelOnError, "cancelOnError");
            Intrinsics.checkNotNullParameter(onError, "onError");
            if (i10 != -1) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new GetCredentialUnknownException(generateErrorStringUnknown$credentials_play_services_auth_release(i10));
                if (i10 == 0) {
                    objectRef.element = new GetCredentialCancellationException(generateErrorStringCanceled$credentials_play_services_auth_release());
                }
                cancelOnError.invoke(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$maybeReportErrorResultCodeGet$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
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
                        onError.invoke(objectRef.element);
                    }
                });
                return true;
            }
            return false;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderController(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final void cancelOrCallbackExceptionOrResult(@Nullable CancellationSignal cancellationSignal, @NotNull Function0<Unit> function0) {
        Companion.cancelOrCallbackExceptionOrResult(cancellationSignal, function0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean maybeReportErrorResultCodeCreate(int i10, @NotNull Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> function2, @NotNull Function1<? super CreateCredentialException, Unit> function1, @Nullable CancellationSignal cancellationSignal) {
        return Companion.maybeReportErrorResultCodeCreate(i10, function2, function1, cancellationSignal);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final boolean maybeReportErrorResultCodeGet(int i10, @NotNull Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> function2, @NotNull Function1<? super GetCredentialException, Unit> function1, @Nullable CancellationSignal cancellationSignal) {
        return Companion.maybeReportErrorResultCodeGet(i10, function2, function1, cancellationSignal);
    }

    @NotNull
    protected abstract T2 convertRequestToPlayServices(@NotNull T1 t12);

    @NotNull
    protected abstract R1 convertResponseToCredentialManager(@NotNull R2 r22);

    public abstract void invokePlayServices(@NotNull T1 t12, @NotNull CredentialManagerCallback<R1, E1> credentialManagerCallback, @NotNull Executor executor, @Nullable CancellationSignal cancellationSignal);

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean maybeReportErrorFromResultReceiver(@NotNull Bundle resultData, @NotNull Function2<? super String, ? super String, ? extends E1> conversionFn, @NotNull Executor executor, @NotNull CredentialManagerCallback<R1, E1> callback, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(resultData, "resultData");
        Intrinsics.checkNotNullParameter(conversionFn, "conversionFn");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!resultData.getBoolean(CredentialProviderBaseController.FAILURE_RESPONSE_TAG)) {
            return false;
        }
        cancelOrCallbackExceptionOrResult(cancellationSignal, new CredentialProviderController$maybeReportErrorFromResultReceiver$1(executor, callback, conversionFn.invoke(resultData.getString(CredentialProviderBaseController.EXCEPTION_TYPE_TAG), resultData.getString(CredentialProviderBaseController.EXCEPTION_MESSAGE_TAG))));
        return true;
    }
}

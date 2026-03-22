package androidx.credentials.playservices.controllers;

import androidx.credentials.CredentialManagerCallback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CredentialProviderController.kt */
@Metadata
/* loaded from: classes.dex */
final class CredentialProviderController$maybeReportErrorFromResultReceiver$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CredentialManagerCallback<R1, E1> $callback;
    final /* synthetic */ E1 $exception;
    final /* synthetic */ Executor $executor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderController$maybeReportErrorFromResultReceiver$1(Executor executor, CredentialManagerCallback<R1, E1> credentialManagerCallback, E1 e12) {
        super(0);
        this.$executor = executor;
        this.$callback = credentialManagerCallback;
        this.$exception = e12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CredentialManagerCallback callback, Object exception) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(exception, "$exception");
        callback.onError(exception);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Executor executor = this.$executor;
        final CredentialManagerCallback<R1, E1> credentialManagerCallback = this.$callback;
        final E1 e12 = this.$exception;
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$maybeReportErrorFromResultReceiver$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderController$maybeReportErrorFromResultReceiver$1.invoke$lambda$0(CredentialManagerCallback.this, e12);
            }
        });
    }
}

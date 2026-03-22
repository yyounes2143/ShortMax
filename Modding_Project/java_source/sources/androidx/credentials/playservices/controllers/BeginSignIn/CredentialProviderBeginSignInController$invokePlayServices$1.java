package androidx.credentials.playservices.controllers.BeginSignIn;

import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CredentialProviderBeginSignInController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderBeginSignInController$invokePlayServices$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CredentialProviderBeginSignInController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderBeginSignInController$invokePlayServices$1(CredentialProviderBeginSignInController credentialProviderBeginSignInController) {
        super(0);
        this.this$0 = credentialProviderBeginSignInController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CredentialProviderBeginSignInController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getCallback().onError(new GetCredentialUnknownException(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Executor executor = this.this$0.getExecutor();
        final CredentialProviderBeginSignInController credentialProviderBeginSignInController = this.this$0;
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$invokePlayServices$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController$invokePlayServices$1.invoke$lambda$0(CredentialProviderBeginSignInController.this);
            }
        });
    }
}

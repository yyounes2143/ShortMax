package androidx.credentials.playservices.controllers.BeginSignIn;

import androidx.credentials.GetCredentialResponse;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CredentialProviderBeginSignInController.kt */
@Metadata
/* loaded from: classes.dex */
final class CredentialProviderBeginSignInController$handleResponse$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ GetCredentialResponse $response;
    final /* synthetic */ CredentialProviderBeginSignInController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderBeginSignInController$handleResponse$3(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialResponse getCredentialResponse) {
        super(0);
        this.this$0 = credentialProviderBeginSignInController;
        this.$response = getCredentialResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CredentialProviderBeginSignInController this$0, GetCredentialResponse response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "$response");
        this$0.getCallback().onResult(response);
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
        final GetCredentialResponse getCredentialResponse = this.$response;
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController$handleResponse$3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController$handleResponse$3.invoke$lambda$0(CredentialProviderBeginSignInController.this, getCredentialResponse);
            }
        });
    }
}

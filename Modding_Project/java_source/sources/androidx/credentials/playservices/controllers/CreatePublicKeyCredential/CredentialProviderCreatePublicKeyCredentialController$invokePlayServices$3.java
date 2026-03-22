package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CredentialProviderCreatePublicKeyCredentialController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        super(0);
        this.this$0 = credentialProviderCreatePublicKeyCredentialController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CredentialProviderCreatePublicKeyCredentialController this$0) {
        CredentialManagerCallback credentialManagerCallback;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        credentialManagerCallback = this$0.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreateCredentialUnknownException(CredentialProviderController.ERROR_MESSAGE_START_ACTIVITY_FAILED));
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Executor executor;
        executor = this.this$0.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.this$0;
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3.invoke$lambda$0(CredentialProviderCreatePublicKeyCredentialController.this);
            }
        });
    }
}

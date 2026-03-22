package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CredentialProviderCreatePublicKeyCredentialController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderCreatePublicKeyCredentialController$handleResponse$2 extends Lambda implements Function1<CreateCredentialException, Unit> {
    final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderCreatePublicKeyCredentialController$handleResponse$2(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        super(1);
        this.this$0 = credentialProviderCreatePublicKeyCredentialController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CredentialProviderCreatePublicKeyCredentialController this$0, CreateCredentialException e10) {
        CredentialManagerCallback credentialManagerCallback;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e10, "$e");
        credentialManagerCallback = this$0.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(e10);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CreateCredentialException createCredentialException) {
        invoke2(createCredentialException);
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull final CreateCredentialException e10) {
        Executor executor;
        Intrinsics.checkNotNullParameter(e10, "e");
        executor = this.this$0.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.this$0;
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController$handleResponse$2.invoke$lambda$0(CredentialProviderCreatePublicKeyCredentialController.this, e10);
            }
        });
    }
}

package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CredentialProviderCreatePublicKeyCredentialController.kt */
@Metadata
/* loaded from: classes.dex */
public final class CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ JSONException $e;
    final /* synthetic */ CredentialProviderCreatePublicKeyCredentialController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        super(0);
        this.this$0 = credentialProviderCreatePublicKeyCredentialController;
        this.$e = jSONException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CredentialProviderCreatePublicKeyCredentialController this$0, JSONException e10) {
        CredentialManagerCallback credentialManagerCallback;
        CreatePublicKeyCredentialDomException JSONExceptionToPKCError;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e10, "$e");
        credentialManagerCallback = this$0.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TextureRenderKeys.KEY_IS_CALLBACK);
            credentialManagerCallback = null;
        }
        JSONExceptionToPKCError = this$0.JSONExceptionToPKCError(e10);
        credentialManagerCallback.onError(JSONExceptionToPKCError);
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
        final JSONException jSONException = this.$e;
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1.invoke$lambda$0(CredentialProviderCreatePublicKeyCredentialController.this, jSONException);
            }
        });
    }
}

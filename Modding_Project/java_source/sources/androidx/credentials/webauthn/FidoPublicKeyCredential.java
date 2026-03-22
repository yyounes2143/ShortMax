package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: FidoPublicKeyCredential.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class FidoPublicKeyCredential {
    @NotNull
    private final String authenticatorAttachment;
    @NotNull
    private final byte[] rawId;
    @NotNull
    private final AuthenticatorResponse response;

    public FidoPublicKeyCredential(@NotNull byte[] rawId, @NotNull AuthenticatorResponse response, @NotNull String authenticatorAttachment) {
        Intrinsics.checkNotNullParameter(rawId, "rawId");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(authenticatorAttachment, "authenticatorAttachment");
        this.rawId = rawId;
        this.response = response;
        this.authenticatorAttachment = authenticatorAttachment;
    }

    @NotNull
    public final String getAuthenticatorAttachment() {
        return this.authenticatorAttachment;
    }

    @NotNull
    public final byte[] getRawId() {
        return this.rawId;
    }

    @NotNull
    public final AuthenticatorResponse getResponse() {
        return this.response;
    }

    @NotNull
    public final String json() {
        String b64Encode = WebAuthnUtils.Companion.b64Encode(this.rawId);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", b64Encode);
        jSONObject.put("rawId", b64Encode);
        jSONObject.put("type", "public-key");
        jSONObject.put("authenticatorAttachment", this.authenticatorAttachment);
        jSONObject.put("response", this.response.json());
        jSONObject.put("clientExtensionResults", new JSONObject());
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "ret.toString()");
        return jSONObject2;
    }
}

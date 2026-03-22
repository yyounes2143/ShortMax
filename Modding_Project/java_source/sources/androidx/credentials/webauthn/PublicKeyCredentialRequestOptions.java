package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import androidx.credentials.webauthn.WebAuthnUtils;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: PublicKeyCredentialRequestOptions.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class PublicKeyCredentialRequestOptions {
    @NotNull
    private final byte[] challenge;
    @NotNull
    private final JSONObject json;
    @NotNull
    private final String rpId;
    private final long timeout;
    @NotNull
    private final String userVerification;

    public PublicKeyCredentialRequestOptions(@NotNull String requestJson) {
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        JSONObject jSONObject = new JSONObject(requestJson);
        this.json = jSONObject;
        String challengeString = jSONObject.getString(ClientData.KEY_CHALLENGE);
        WebAuthnUtils.Companion companion = WebAuthnUtils.Companion;
        Intrinsics.checkNotNullExpressionValue(challengeString, "challengeString");
        this.challenge = companion.b64Decode(challengeString);
        this.timeout = jSONObject.optLong("timeout", 0L);
        String optString = jSONObject.optString("rpId", "");
        Intrinsics.checkNotNullExpressionValue(optString, "json.optString(\"rpId\", \"\")");
        this.rpId = optString;
        String optString2 = jSONObject.optString("userVerification", "preferred");
        Intrinsics.checkNotNullExpressionValue(optString2, "json.optString(\"userVerification\", \"preferred\")");
        this.userVerification = optString2;
    }

    @NotNull
    public final byte[] getChallenge() {
        return this.challenge;
    }

    @NotNull
    public final JSONObject getJson() {
        return this.json;
    }

    @NotNull
    public final String getRpId() {
        return this.rpId;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    @NotNull
    public final String getUserVerification() {
        return this.userVerification;
    }
}

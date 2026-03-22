package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import androidx.credentials.webauthn.WebAuthnUtils;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: AuthenticatorAssertionResponse.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AuthenticatorAssertionResponse implements AuthenticatorResponse {
    @NotNull
    private byte[] authenticatorData;

    /* renamed from: be  reason: collision with root package name */
    private final boolean f1412be;

    /* renamed from: bs  reason: collision with root package name */
    private final boolean f1413bs;
    @Nullable
    private final byte[] clientDataHash;
    @NotNull
    private JSONObject clientJson;
    @NotNull
    private final byte[] credentialId;
    @NotNull
    private final String origin;
    @Nullable
    private final String packageName;
    @NotNull
    private final PublicKeyCredentialRequestOptions requestOptions;
    @NotNull
    private byte[] signature;

    /* renamed from: up  reason: collision with root package name */
    private final boolean f1414up;
    @NotNull
    private byte[] userHandle;
    private final boolean uv;

    public AuthenticatorAssertionResponse(@NotNull PublicKeyCredentialRequestOptions requestOptions, @NotNull byte[] credentialId, @NotNull String origin, boolean z10, boolean z11, boolean z12, boolean z13, @NotNull byte[] userHandle, @Nullable String str, @Nullable byte[] bArr) {
        Intrinsics.checkNotNullParameter(requestOptions, "requestOptions");
        Intrinsics.checkNotNullParameter(credentialId, "credentialId");
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(userHandle, "userHandle");
        this.requestOptions = requestOptions;
        this.credentialId = credentialId;
        this.origin = origin;
        this.f1414up = z10;
        this.uv = z11;
        this.f1412be = z12;
        this.f1413bs = z13;
        this.userHandle = userHandle;
        this.packageName = str;
        this.clientDataHash = bArr;
        this.clientJson = new JSONObject();
        this.signature = new byte[0];
        getClientJson().put("type", "webauthn.get");
        getClientJson().put(ClientData.KEY_CHALLENGE, WebAuthnUtils.Companion.b64Encode(requestOptions.getChallenge()));
        getClientJson().put("origin", origin);
        if (str != null) {
            getClientJson().put("androidPackageName", str);
        }
        this.authenticatorData = defaultAuthenticatorData();
    }

    @NotNull
    public final byte[] dataToSign() {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bArr = this.clientDataHash;
        if (bArr == null) {
            String jSONObject = getClientJson().toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "clientJson.toString()");
            byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            bArr = messageDigest.digest(bytes);
            Intrinsics.checkNotNullExpressionValue(bArr, "md.digest(clientJson.toString().toByteArray())");
        }
        return n.J(this.authenticatorData, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final byte[] defaultAuthenticatorData() {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = this.requestOptions.getRpId().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] rpHash = messageDigest.digest(bytes);
        boolean z10 = this.f1414up;
        boolean z11 = z10;
        if (this.uv) {
            z11 = (z10 ? 1 : 0) | true;
        }
        boolean z12 = z11;
        if (this.f1412be) {
            z12 = (z11 ? 1 : 0) | true;
        }
        int i10 = z12;
        if (this.f1413bs) {
            i10 = (z12 ? 1 : 0) | true;
        }
        Intrinsics.checkNotNullExpressionValue(rpHash, "rpHash");
        return n.J(n.J(rpHash, new byte[]{(byte) i10}), new byte[]{0, 0, 0, 0});
    }

    @NotNull
    public final byte[] getAuthenticatorData() {
        return this.authenticatorData;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject getClientJson() {
        return this.clientJson;
    }

    @NotNull
    public final byte[] getSignature() {
        return this.signature;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject json() {
        String jSONObject = getClientJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "clientJson.toString()");
        byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        JSONObject jSONObject2 = new JSONObject();
        if (this.clientDataHash == null) {
            jSONObject2.put("clientDataJSON", WebAuthnUtils.Companion.b64Encode(bytes));
        }
        WebAuthnUtils.Companion companion = WebAuthnUtils.Companion;
        jSONObject2.put("authenticatorData", companion.b64Encode(this.authenticatorData));
        jSONObject2.put(InAppPurchaseMetaData.KEY_SIGNATURE, companion.b64Encode(this.signature));
        jSONObject2.put("userHandle", companion.b64Encode(this.userHandle));
        return jSONObject2;
    }

    public final void setAuthenticatorData(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.authenticatorData = bArr;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    public void setClientJson(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<set-?>");
        this.clientJson = jSONObject;
    }

    public final void setSignature(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.signature = bArr;
    }

    public /* synthetic */ AuthenticatorAssertionResponse(PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions, byte[] bArr, String str, boolean z10, boolean z11, boolean z12, boolean z13, byte[] bArr2, String str2, byte[] bArr3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(publicKeyCredentialRequestOptions, bArr, str, z10, z11, z12, z13, bArr2, (i10 & 256) != 0 ? null : str2, (i10 & 512) != 0 ? null : bArr3);
    }
}

package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AuthenticatorAttestationResponse.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AuthenticatorAttestationResponse implements AuthenticatorResponse {
    @NotNull
    private byte[] attestationObject;

    /* renamed from: be  reason: collision with root package name */
    private final boolean f1415be;

    /* renamed from: bs  reason: collision with root package name */
    private final boolean f1416bs;
    @Nullable
    private final byte[] clientDataHash;
    @NotNull
    private JSONObject clientJson;
    @NotNull
    private final byte[] credentialId;
    @NotNull
    private final byte[] credentialPublicKey;
    @NotNull
    private final String origin;
    @Nullable
    private final String packageName;
    @NotNull
    private final PublicKeyCredentialCreationOptions requestOptions;

    /* renamed from: up  reason: collision with root package name */
    private final boolean f1417up;
    private final boolean uv;

    public AuthenticatorAttestationResponse(@NotNull PublicKeyCredentialCreationOptions requestOptions, @NotNull byte[] credentialId, @NotNull byte[] credentialPublicKey, @NotNull String origin, boolean z10, boolean z11, boolean z12, boolean z13, @Nullable String str, @Nullable byte[] bArr) {
        Intrinsics.checkNotNullParameter(requestOptions, "requestOptions");
        Intrinsics.checkNotNullParameter(credentialId, "credentialId");
        Intrinsics.checkNotNullParameter(credentialPublicKey, "credentialPublicKey");
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.requestOptions = requestOptions;
        this.credentialId = credentialId;
        this.credentialPublicKey = credentialPublicKey;
        this.origin = origin;
        this.f1417up = z10;
        this.uv = z11;
        this.f1415be = z12;
        this.f1416bs = z13;
        this.packageName = str;
        this.clientDataHash = bArr;
        this.clientJson = new JSONObject();
        getClientJson().put("type", "webauthn.create");
        getClientJson().put(ClientData.KEY_CHALLENGE, WebAuthnUtils.Companion.b64Encode(requestOptions.getChallenge()));
        getClientJson().put("origin", origin);
        if (str != null) {
            getClientJson().put("androidPackageName", str);
        }
        this.attestationObject = defaultAttestationObject$credentials_release();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final byte[] authData() {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = this.requestOptions.getRp().getId().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] rpHash = messageDigest.digest(bytes);
        boolean z10 = this.f1417up;
        boolean z11 = z10;
        if (this.uv) {
            z11 = (z10 ? 1 : 0) | true;
        }
        boolean z12 = z11;
        if (this.f1415be) {
            z12 = (z11 ? 1 : 0) | true;
        }
        boolean z13 = z12;
        if (this.f1416bs) {
            z13 = (z12 ? 1 : 0) | true;
        }
        int i10 = z13 | 64;
        byte[] bArr = new byte[16];
        for (int i11 = 0; i11 < 16; i11++) {
            bArr[i11] = 0;
        }
        byte[] bArr2 = this.credentialId;
        byte[] bArr3 = {(byte) (bArr2.length >> 8), (byte) bArr2.length};
        Intrinsics.checkNotNullExpressionValue(rpHash, "rpHash");
        return n.J(n.J(n.J(n.J(n.J(n.J(rpHash, new byte[]{(byte) i10}), new byte[]{0, 0, 0, 0}), bArr), bArr3), this.credentialId), this.credentialPublicKey);
    }

    @NotNull
    public final byte[] defaultAttestationObject$credentials_release() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("fmt", DevicePublicKeyStringDef.NONE);
        linkedHashMap.put("attStmt", p0.i());
        linkedHashMap.put("authData", authData());
        return new Cbor().encode(linkedHashMap);
    }

    @NotNull
    public final byte[] getAttestationObject() {
        return this.attestationObject;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    @NotNull
    public JSONObject getClientJson() {
        return this.clientJson;
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
        jSONObject2.put("attestationObject", WebAuthnUtils.Companion.b64Encode(this.attestationObject));
        jSONObject2.put("transports", new JSONArray((Collection) CollectionsKt.q(IVideoEventLogger.SET_SURFACE_TYPE_INTERNAL, "hybrid")));
        return jSONObject2;
    }

    public final void setAttestationObject(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.attestationObject = bArr;
    }

    @Override // androidx.credentials.webauthn.AuthenticatorResponse
    public void setClientJson(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<set-?>");
        this.clientJson = jSONObject;
    }

    public /* synthetic */ AuthenticatorAttestationResponse(PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions, byte[] bArr, byte[] bArr2, String str, boolean z10, boolean z11, boolean z12, boolean z13, String str2, byte[] bArr3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(publicKeyCredentialCreationOptions, bArr, bArr2, str, z10, z11, z12, z13, (i10 & 256) != 0 ? null : str2, (i10 & 512) != 0 ? null : bArr3);
    }
}

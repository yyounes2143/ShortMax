package androidx.credentials.webauthn;

import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.credentials.webauthn.WebAuthnUtils;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.huawei.hms.support.feature.result.CommonConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: PublicKeyCredentialCreationOptions.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class PublicKeyCredentialCreationOptions {
    @NotNull
    private String attestation;
    @NotNull
    private AuthenticatorSelectionCriteria authenticatorSelection;
    @NotNull
    private final byte[] challenge;
    @NotNull
    private List<PublicKeyCredentialDescriptor> excludeCredentials;
    @NotNull
    private final JSONObject json;
    @NotNull
    private final List<PublicKeyCredentialParameters> pubKeyCredParams;
    @NotNull

    /* renamed from: rp  reason: collision with root package name */
    private final PublicKeyCredentialRpEntity f1418rp;
    private long timeout;
    @NotNull
    private final PublicKeyCredentialUserEntity user;

    public PublicKeyCredentialCreationOptions(@NotNull String requestJson) {
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        JSONObject jSONObject = new JSONObject(requestJson);
        this.json = jSONObject;
        String challengeString = jSONObject.getString(ClientData.KEY_CHALLENGE);
        WebAuthnUtils.Companion companion = WebAuthnUtils.Companion;
        Intrinsics.checkNotNullExpressionValue(challengeString, "challengeString");
        this.challenge = companion.b64Decode(challengeString);
        JSONObject jSONObject2 = jSONObject.getJSONObject("rp");
        String string = jSONObject2.getString("name");
        Intrinsics.checkNotNullExpressionValue(string, "rpJson.getString(\"name\")");
        String string2 = jSONObject2.getString("id");
        Intrinsics.checkNotNullExpressionValue(string2, "rpJson.getString(\"id\")");
        this.f1418rp = new PublicKeyCredentialRpEntity(string, string2);
        JSONObject jSONObject3 = jSONObject.getJSONObject("user");
        String string3 = jSONObject3.getString("id");
        Intrinsics.checkNotNullExpressionValue(string3, "rpUser.getString(\"id\")");
        byte[] b64Decode = companion.b64Decode(string3);
        String string4 = jSONObject3.getString("name");
        Intrinsics.checkNotNullExpressionValue(string4, "rpUser.getString(\"name\")");
        String string5 = jSONObject3.getString(CommonConstant.KEY_DISPLAY_NAME);
        Intrinsics.checkNotNullExpressionValue(string5, "rpUser.getString(\"displayName\")");
        this.user = new PublicKeyCredentialUserEntity(string4, b64Decode, string5);
        JSONArray jSONArray = jSONObject.getJSONArray("pubKeyCredParams");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject4 = jSONArray.getJSONObject(i10);
            String string6 = jSONObject4.getString("type");
            Intrinsics.checkNotNullExpressionValue(string6, "e.getString(\"type\")");
            arrayList.add(new PublicKeyCredentialParameters(string6, jSONObject4.getLong("alg")));
        }
        List<PublicKeyCredentialParameters> d12 = CollectionsKt.d1(arrayList);
        this.pubKeyCredParams = d12;
        this.timeout = this.json.optLong("timeout", 0L);
        this.excludeCredentials = CollectionsKt.n();
        this.authenticatorSelection = new AuthenticatorSelectionCriteria("platform", "required", false, null, 12, null);
        String optString = this.json.optString("attestation", DevicePublicKeyStringDef.NONE);
        Intrinsics.checkNotNullExpressionValue(optString, "json.optString(\"attestation\", \"none\")");
        this.attestation = optString;
        Log.i("WebAuthn", "Challenge " + this.challenge + "()");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("rp ");
        sb2.append(this.f1418rp);
        Log.i("WebAuthn", sb2.toString());
        Log.i("WebAuthn", "user " + this.user);
        Log.i("WebAuthn", "pubKeyCredParams " + d12);
        Log.i("WebAuthn", "timeout " + this.timeout);
        Log.i("WebAuthn", "excludeCredentials " + this.excludeCredentials);
        Log.i("WebAuthn", "authenticatorSelection " + this.authenticatorSelection);
        Log.i("WebAuthn", "attestation " + this.attestation);
    }

    @NotNull
    public final String getAttestation() {
        return this.attestation;
    }

    @NotNull
    public final AuthenticatorSelectionCriteria getAuthenticatorSelection() {
        return this.authenticatorSelection;
    }

    @NotNull
    public final byte[] getChallenge() {
        return this.challenge;
    }

    @NotNull
    public final List<PublicKeyCredentialDescriptor> getExcludeCredentials() {
        return this.excludeCredentials;
    }

    @NotNull
    public final JSONObject getJson() {
        return this.json;
    }

    @NotNull
    public final List<PublicKeyCredentialParameters> getPubKeyCredParams() {
        return this.pubKeyCredParams;
    }

    @NotNull
    public final PublicKeyCredentialRpEntity getRp() {
        return this.f1418rp;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    @NotNull
    public final PublicKeyCredentialUserEntity getUser() {
        return this.user;
    }

    public final void setAttestation(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.attestation = str;
    }

    public final void setAuthenticatorSelection(@NotNull AuthenticatorSelectionCriteria authenticatorSelectionCriteria) {
        Intrinsics.checkNotNullParameter(authenticatorSelectionCriteria, "<set-?>");
        this.authenticatorSelection = authenticatorSelectionCriteria;
    }

    public final void setExcludeCredentials(@NotNull List<PublicKeyCredentialDescriptor> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.excludeCredentials = list;
    }

    public final void setTimeout(long j10) {
        this.timeout = j10;
    }
}

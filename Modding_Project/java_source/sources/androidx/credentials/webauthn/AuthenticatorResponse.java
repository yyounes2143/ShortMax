package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: AuthenticatorResponse.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface AuthenticatorResponse {
    @NotNull
    JSONObject getClientJson();

    @NotNull
    JSONObject json();

    void setClientJson(@NotNull JSONObject jSONObject);
}

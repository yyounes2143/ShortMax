package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagm  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzagm {
    private final String zza;

    public zzagm(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
    }

    public final JSONObject zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appSignatureHash", this.zza);
        return jSONObject;
    }
}

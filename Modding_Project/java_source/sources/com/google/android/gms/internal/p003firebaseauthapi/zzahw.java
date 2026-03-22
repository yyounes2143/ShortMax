package com.google.android.gms.internal.p003firebaseauthapi;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzahw {
    private Long zza;
    private Long zzb;

    public static zzahw zza(String str) throws UnsupportedEncodingException {
        try {
            zzahw zzahwVar = new zzahw();
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString("iss");
            jSONObject.optString("aud");
            jSONObject.optString("sub");
            zzahwVar.zza = Long.valueOf(jSONObject.optLong("iat"));
            zzahwVar.zzb = Long.valueOf(jSONObject.optLong("exp"));
            jSONObject.optBoolean("is_anonymous");
            return zzahwVar;
        } catch (JSONException e10) {
            if (Log.isLoggable("JwtToken", 3)) {
                String valueOf = String.valueOf(e10);
                Log.d("JwtToken", "Failed to read JwtToken from JSONObject. " + valueOf);
            }
            String valueOf2 = String.valueOf(e10);
            throw new UnsupportedEncodingException("Failed to read JwtToken from JSONObject. " + valueOf2);
        }
    }

    public final Long zzb() {
        return this.zza;
    }

    public final Long zza() {
        return this.zzb;
    }
}

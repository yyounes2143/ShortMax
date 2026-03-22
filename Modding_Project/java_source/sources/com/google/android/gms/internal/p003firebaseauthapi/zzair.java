package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzair  reason: invalid package */
/* loaded from: classes4.dex */
public class zzair implements zzaez<zzair> {
    private static final String zza = "zzair";

    @Nullable
    public String zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public zzair zza(String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optJSONObject("phoneSessionInfo") != null) {
                return (zzaiv) ((zzair) new zzaiv().zza(str));
            }
            if (jSONObject.optJSONObject("totpSessionInfo") != null) {
                return (zzaix) ((zzair) new zzaix().zza(str));
            }
            throw new IllegalArgumentException("Missing phoneSessionInfo or totpSessionInfo.");
        } catch (NullPointerException e10) {
            e = e10;
            throw zzajk.zza(e, zza, str);
        } catch (JSONException e11) {
            e = e11;
            throw zzajk.zza(e, zza, str);
        }
    }
}

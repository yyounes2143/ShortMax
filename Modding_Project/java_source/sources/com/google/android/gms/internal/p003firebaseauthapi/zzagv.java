package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagv  reason: invalid package */
/* loaded from: classes4.dex */
public class zzagv implements zzaez<zzagv> {
    private static final String zza = "zzagv";
    private List<String> zzb;

    public zzagv() {
        zzaiw.zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzagv zza(String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString("authUri", null);
            jSONObject.optBoolean("registered", false);
            jSONObject.optString("providerId", null);
            jSONObject.optBoolean("forExistingProvider", false);
            if (!jSONObject.has("allProviders")) {
                zzaiw.zza();
            } else {
                new zzaiw(1, zzajk.zza(jSONObject.optJSONArray("allProviders")));
            }
            this.zzb = zzajk.zza(jSONObject.optJSONArray("signinMethods"));
            return this;
        } catch (NullPointerException e10) {
            e = e10;
            throw zzajk.zza(e, zza, str);
        } catch (JSONException e11) {
            e = e11;
            throw zzajk.zza(e, zza, str);
        }
    }

    @Nullable
    public final List<String> zza() {
        return this.zzb;
    }
}

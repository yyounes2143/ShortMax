package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaht  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaht implements zzafa {
    @Nullable
    private final String zza;
    private final String zzb = "CLIENT_TYPE_ANDROID";
    private final String zzc;

    private zzaht(@Nullable String str, String str2) {
        this.zza = str;
        this.zzc = str2;
    }

    public static zzaht zza(@Nullable String str, String str2) {
        return new zzaht(str, str2);
    }

    public final String zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzc;
    }

    @Nullable
    public final String zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(this.zza)) {
            jSONObject.put("tenantId", this.zza);
        }
        if (!TextUtils.isEmpty(this.zzb)) {
            jSONObject.put("clientType", this.zzb);
        }
        if (!TextUtils.isEmpty(this.zzc)) {
            jSONObject.put("recaptchaVersion", this.zzc);
        }
        return jSONObject.toString();
    }
}

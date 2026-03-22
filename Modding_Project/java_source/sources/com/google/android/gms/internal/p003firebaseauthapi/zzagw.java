package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.huawei.hms.support.feature.result.CommonConstant;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagw  reason: invalid package */
/* loaded from: classes4.dex */
public class zzagw implements zzaez<zzagw> {
    private static final String zza = "zzagw";
    private String zzb;
    private String zzc;
    private boolean zzd;
    private long zze;
    @Nullable
    private List<zzahy> zzf;
    @Nullable
    private String zzg;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzagw zza(String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString("localId", null);
            jSONObject.optString("email", null);
            this.zzb = jSONObject.optString(CommonConstant.KEY_ID_TOKEN, null);
            this.zzc = jSONObject.optString("refreshToken", null);
            this.zzd = jSONObject.optBoolean("isNewUser", false);
            this.zze = jSONObject.optLong("expiresIn", 0L);
            this.zzf = zzahy.zza(jSONObject.optJSONArray("mfaInfo"));
            this.zzg = jSONObject.optString("mfaPendingCredential", null);
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    public final long zza() {
        return this.zze;
    }

    @Nullable
    public final String zzc() {
        return this.zzg;
    }

    @NonNull
    public final String zzd() {
        return this.zzc;
    }

    @Nullable
    public final List<zzahy> zze() {
        return this.zzf;
    }

    public final boolean zzf() {
        if (!TextUtils.isEmpty(this.zzg)) {
            return true;
        }
        return false;
    }

    public final boolean zzg() {
        return this.zzd;
    }

    @NonNull
    public final String zzb() {
        return this.zzb;
    }
}

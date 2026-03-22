package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
import com.huawei.hms.support.feature.result.CommonConstant;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaik  reason: invalid package */
/* loaded from: classes4.dex */
public class zzaik implements zzaez<zzaik> {
    private static final String zza = "zzaik";
    @Nullable
    private String zzb;
    private zzaia zzc;
    @Nullable
    private String zzd;
    @Nullable
    private String zze;
    private long zzf;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzaik zza(String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = Strings.emptyToNull(jSONObject.optString("email"));
            Strings.emptyToNull(jSONObject.optString("passwordHash"));
            jSONObject.optBoolean("emailVerified", false);
            Strings.emptyToNull(jSONObject.optString(CommonConstant.KEY_DISPLAY_NAME));
            Strings.emptyToNull(jSONObject.optString("photoUrl"));
            this.zzc = zzaia.zza(jSONObject.optJSONArray("providerUserInfo"));
            this.zzd = Strings.emptyToNull(jSONObject.optString(CommonConstant.KEY_ID_TOKEN));
            this.zze = Strings.emptyToNull(jSONObject.optString("refreshToken"));
            this.zzf = jSONObject.optLong("expiresIn", 0L);
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    public final long zza() {
        return this.zzf;
    }

    @Nullable
    public final String zzc() {
        return this.zzd;
    }

    @Nullable
    public final String zzd() {
        return this.zze;
    }

    @Nullable
    public final List<zzaib> zze() {
        zzaia zzaiaVar = this.zzc;
        if (zzaiaVar != null) {
            return zzaiaVar.zza();
        }
        return null;
    }

    @Nullable
    public final String zzb() {
        return this.zzb;
    }
}

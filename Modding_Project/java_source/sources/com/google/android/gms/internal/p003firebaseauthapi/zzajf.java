package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.util.Strings;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajf  reason: invalid package */
/* loaded from: classes4.dex */
public class zzajf implements zzaez<zzajf> {
    private static final String zza = "zzajf";
    private String zzb;
    private String zzc;
    private long zzd;
    private boolean zze;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzajf zza(String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = Strings.emptyToNull(jSONObject.optString(CommonConstant.KEY_ID_TOKEN, null));
            this.zzc = Strings.emptyToNull(jSONObject.optString("refreshToken", null));
            this.zzd = jSONObject.optLong("expiresIn", 0L);
            this.zze = jSONObject.optBoolean("isNewUser", false);
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    public final long zza() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zzc;
    }

    public final boolean zzd() {
        return this.zze;
    }

    public final String zzb() {
        return this.zzb;
    }
}

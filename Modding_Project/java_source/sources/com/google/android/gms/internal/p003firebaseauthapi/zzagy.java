package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagy  reason: invalid package */
/* loaded from: classes4.dex */
public class zzagy implements zzaez<zzagy> {
    private static final String zza = "zzagy";
    @Nullable
    private String zzb;
    @Nullable
    private String zzc;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzagy zza(String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = Strings.emptyToNull(jSONObject.optString(CommonConstant.KEY_ID_TOKEN));
            this.zzc = Strings.emptyToNull(jSONObject.optString("refreshToken"));
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Nullable
    public final String zzb() {
        return this.zzc;
    }
}

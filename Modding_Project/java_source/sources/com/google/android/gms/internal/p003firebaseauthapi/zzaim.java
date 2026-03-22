package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaim  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaim implements zzafa {
    private String zza;
    private String zzb;
    @Nullable
    private String zzc;
    @Nullable
    private String zzd;
    @Nullable
    private String zze;

    public zzaim(@Nullable String str) {
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = this.zza;
        if (str != null) {
            jSONObject.put("email", str);
        }
        String str2 = this.zzb;
        if (str2 != null) {
            jSONObject.put(HintConstants.AUTOFILL_HINT_PASSWORD, str2);
        }
        String str3 = this.zzc;
        if (str3 != null) {
            jSONObject.put("tenantId", str3);
        }
        String str4 = this.zzd;
        if (str4 != null) {
            zzajk.zza(jSONObject, "captchaResponse", str4);
        } else {
            zzajk.zza(jSONObject);
        }
        String str5 = this.zze;
        if (str5 != null) {
            jSONObject.put(CommonConstant.KEY_ID_TOKEN, str5);
        }
        return jSONObject.toString();
    }

    public zzaim(String str, String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this.zza = Preconditions.checkNotEmpty(str);
        this.zzb = Preconditions.checkNotEmpty(str2);
        this.zzc = str4;
        this.zzd = str5;
        this.zze = str6;
    }
}

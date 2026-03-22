package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaiu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaiu implements zzaio {
    private final String zza;
    @Nullable
    private final String zzb;

    private zzaiu(String str, @Nullable String str2) {
        this.zza = Preconditions.checkNotEmpty(str);
        this.zzb = str2;
    }

    public static zzaiu zza(String str, @Nullable String str2) {
        return new zzaiu(str, str2);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(CommonConstant.KEY_ID_TOKEN, this.zza);
        if (!TextUtils.isEmpty(this.zzb)) {
            jSONObject.put("tenantId", this.zzb);
        }
        jSONObject.put("totpEnrollmentInfo", new JSONObject());
        return jSONObject.toString();
    }
}

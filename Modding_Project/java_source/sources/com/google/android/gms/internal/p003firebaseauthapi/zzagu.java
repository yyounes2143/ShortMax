package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzagu implements zzafa {
    private String zza;

    public zzagu(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(CommonConstant.KEY_ID_TOKEN, this.zza);
        return jSONObject.toString();
    }
}

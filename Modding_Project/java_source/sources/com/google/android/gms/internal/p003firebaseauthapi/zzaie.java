package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaie  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzaie implements zzafa {
    public static zzaih zzg() {
        return new zzagr();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(CommonConstant.KEY_ID_TOKEN, zzc());
        jSONObject.put(BidResponsed.KEY_TOKEN, zzf());
        jSONObject.put("providerId", zzd());
        jSONObject.put("tokenType", zzb().toString());
        jSONObject.put("tenantId", zze());
        return jSONObject.toString();
    }

    public abstract zzahg zzb();

    public abstract String zzc();

    public abstract String zzd();

    @Nullable
    public abstract String zze();

    public abstract String zzf();
}

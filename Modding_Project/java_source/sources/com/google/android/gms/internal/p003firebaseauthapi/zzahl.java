package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.autofill.HintConstants;
import com.google.android.gms.common.util.Strings;
import com.google.firebase.auth.zzan;
import com.huawei.hms.support.feature.result.CommonConstant;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahl  reason: invalid package */
/* loaded from: classes4.dex */
public class zzahl implements zzaez<zzahl> {
    private static final String zza = "zzahl";
    private zzahn zzb;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzahl zza(String str) throws zzacn {
        zzahn zzahnVar;
        int i10;
        zzahk zzahkVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("users")) {
                zzahnVar = new zzahn();
            } else {
                JSONArray optJSONArray = jSONObject.optJSONArray("users");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    ArrayList arrayList = new ArrayList(optJSONArray.length());
                    boolean z10 = false;
                    int i11 = 0;
                    while (i11 < optJSONArray.length()) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i11);
                        if (jSONObject2 == null) {
                            zzahkVar = new zzahk();
                            i10 = i11;
                        } else {
                            i10 = i11;
                            zzahkVar = new zzahk(Strings.emptyToNull(jSONObject2.optString("localId", null)), Strings.emptyToNull(jSONObject2.optString("email", null)), jSONObject2.optBoolean("emailVerified", z10), Strings.emptyToNull(jSONObject2.optString(CommonConstant.KEY_DISPLAY_NAME, null)), Strings.emptyToNull(jSONObject2.optString("photoUrl", null)), zzaia.zza(jSONObject2.optJSONArray("providerUserInfo")), Strings.emptyToNull(jSONObject2.optString("rawPassword", null)), Strings.emptyToNull(jSONObject2.optString(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, null)), jSONObject2.optLong("createdAt", 0L), jSONObject2.optLong("lastLoginAt", 0L), false, null, zzahy.zza(jSONObject2.optJSONArray("mfaInfo")), zzan.a(jSONObject2.optJSONArray("passkeyInfo")));
                        }
                        arrayList.add(zzahkVar);
                        i11 = i10 + 1;
                        z10 = false;
                    }
                    zzahnVar = new zzahn(arrayList);
                }
                zzahnVar = new zzahn(new ArrayList());
            }
            this.zzb = zzahnVar;
            return this;
        } catch (NullPointerException e10) {
            e = e10;
            throw zzajk.zza(e, zza, str);
        } catch (JSONException e11) {
            e = e11;
            throw zzajk.zza(e, zza, str);
        }
    }

    public final List<zzahk> zza() {
        return this.zzb.zza();
    }
}

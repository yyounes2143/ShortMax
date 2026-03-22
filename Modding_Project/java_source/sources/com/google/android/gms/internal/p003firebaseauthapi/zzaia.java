package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.util.Strings;
import com.huawei.hms.support.feature.result.CommonConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaia  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaia {
    private List<zzaib> zza;

    public zzaia() {
        this.zza = new ArrayList();
    }

    public static zzaia zza(@Nullable JSONArray jSONArray) throws JSONException {
        zzaib zzaibVar;
        if (jSONArray != null && jSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                if (jSONObject == null) {
                    zzaibVar = new zzaib();
                } else {
                    zzaibVar = new zzaib(Strings.emptyToNull(jSONObject.optString("federatedId")), Strings.emptyToNull(jSONObject.optString(CommonConstant.KEY_DISPLAY_NAME)), Strings.emptyToNull(jSONObject.optString("photoUrl")), Strings.emptyToNull(jSONObject.optString("providerId")), null, Strings.emptyToNull(jSONObject.optString(HintConstants.AUTOFILL_HINT_PHONE_NUMBER)), Strings.emptyToNull(jSONObject.optString("email")));
                }
                arrayList.add(zzaibVar);
            }
            return new zzaia(arrayList);
        }
        return new zzaia(new ArrayList());
    }

    private zzaia(List<zzaib> list) {
        if (!list.isEmpty()) {
            this.zza = Collections.unmodifiableList(list);
        } else {
            this.zza = Collections.emptyList();
        }
    }

    public final List<zzaib> zza() {
        return this.zza;
    }
}

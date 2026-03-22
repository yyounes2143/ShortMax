package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahs  reason: invalid package */
/* loaded from: classes4.dex */
public class zzahs implements zzaez<zzahs> {
    private static final String zza = "zzahs";
    @Nullable
    private String zzb;
    private zzah<zzaid> zzc;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzd */
    public final zzahs zza(String str) throws zzacn {
        zzah<zzaid> zzg;
        zzaid zza2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.zzb = Strings.emptyToNull(jSONObject.optString("recaptchaKey"));
            if (jSONObject.has("recaptchaEnforcementState")) {
                JSONArray optJSONArray = jSONObject.optJSONArray("recaptchaEnforcementState");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    zzak zzf = zzah.zzf();
                    for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i10);
                        if (jSONObject2 == null) {
                            zza2 = zzaid.zza(null, null);
                        } else {
                            zza2 = zzaid.zza(Strings.emptyToNull(jSONObject2.optString("provider")), Strings.emptyToNull(jSONObject2.optString("enforcementState")));
                        }
                        zzf.zza(zza2);
                    }
                    zzg = zzf.zza();
                    this.zzc = zzg;
                }
                zzg = zzah.zzg();
                this.zzc = zzg;
            }
            return this;
        } catch (NullPointerException e10) {
            e = e10;
            throw zzajk.zza(e, zza, str);
        } catch (JSONException e11) {
            e = e11;
            throw zzajk.zza(e, zza, str);
        }
    }

    @Nullable
    public final String zzb(String str) {
        Preconditions.checkNotEmpty(str);
        zzah<zzaid> zzahVar = this.zzc;
        if (zzahVar != null && !zzahVar.isEmpty()) {
            zzah<zzaid> zzahVar2 = this.zzc;
            int size = zzahVar2.size();
            int i10 = 0;
            while (i10 < size) {
                zzaid zzaidVar = zzahVar2.get(i10);
                i10++;
                zzaid zzaidVar2 = zzaidVar;
                String zza2 = zzaidVar2.zza();
                String zzb = zzaidVar2.zzb();
                if (zza2 != null && zzb != null && zzb.equals(str)) {
                    return zzaidVar2.zza();
                }
            }
        }
        return null;
    }

    public final boolean zzc(String str) {
        String zzb = zzb(str);
        if (zzb == null) {
            return false;
        }
        if (!zzb.equals("ENFORCE") && !zzb.equals("AUDIT")) {
            return false;
        }
        return true;
    }

    @Nullable
    public final String zza() {
        return this.zzb;
    }
}

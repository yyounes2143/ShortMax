package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaiv  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaiv extends zzair {
    private static final String zza = "zzaiv";
    @Nullable
    private String zzb;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzair
    /* renamed from: zzc */
    public final zzaiv zzb(String str) throws zzacn {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("phoneSessionInfo");
            if (optJSONObject != null) {
                this.zzb = zzac.zza(optJSONObject.optString("sessionInfo"));
            }
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzair, com.google.android.gms.internal.p003firebaseauthapi.zzaez
    public final /* synthetic */ zzair zza(String str) throws zzacn {
        return (zzaiv) zza(str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzair
    @Nullable
    public final String zza() {
        return this.zzb;
    }
}

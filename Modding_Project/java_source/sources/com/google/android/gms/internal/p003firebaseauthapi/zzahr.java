package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahr  reason: invalid package */
/* loaded from: classes4.dex */
public class zzahr implements zzaez<zzahr> {
    private static final String zza = "zzahr";
    @Nullable
    private String zzb;

    public zzahr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzahr zza(String str) throws zzacn {
        try {
            this.zzb = Strings.emptyToNull(new JSONObject(str).optString("producerProjectNumber"));
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    public zzahr(String str) {
        this.zzb = str;
    }

    @Nullable
    public final String zza() {
        return this.zzb;
    }
}

package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bytedance.vodsetting.Module;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagt  reason: invalid package */
/* loaded from: classes4.dex */
public class zzagt implements zzaez<zzagt> {
    private static final String zza = "com.google.android.gms.internal.firebase-auth-api.zzagt";
    private String zzb;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaez
    /* renamed from: zzb */
    public final zzagt zza(@NonNull String str) throws zzacn {
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(str).getString("error"));
            jSONObject.getInt(Module.ResponseKey.Code);
            this.zzb = jSONObject.getString("message");
            return this;
        } catch (NullPointerException | JSONException e10) {
            String str2 = zza;
            String message = e10.getMessage();
            Log.e(str2, "Failed to parse error for string [" + str + "] with exception: " + message);
            throw new zzacn("Failed to parse error for string [" + str + "]", e10);
        }
    }

    public final String zza() {
        return this.zzb;
    }

    public final boolean zzb() {
        return !TextUtils.isEmpty(this.zzb);
    }
}

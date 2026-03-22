package com.google.android.gms.internal.p003firebaseauthapi;

import android.util.Log;
import androidx.annotation.Nullable;
import java.text.ParseException;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaix  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaix extends zzair {
    private static final String zza = "zzaix";
    @Nullable
    private String zzb;
    @Nullable
    private String zzc;
    private int zzd;
    @Nullable
    private String zze;
    private int zzf;
    private long zzg;

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzair, com.google.android.gms.internal.p003firebaseauthapi.zzaez
    public final /* synthetic */ zzair zza(String str) throws zzacn {
        return (zzaix) zza(str);
    }

    public final int zzb() {
        return this.zzf;
    }

    public final int zzc() {
        return this.zzd;
    }

    public final long zzd() {
        return this.zzg;
    }

    @Nullable
    public final String zze() {
        return this.zze;
    }

    @Nullable
    public final String zzf() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzair
    /* renamed from: zzc */
    public final zzaix zzb(String str) throws zzacn {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("totpSessionInfo");
            if (optJSONObject != null) {
                this.zzc = zzac.zza(optJSONObject.optString("sharedSecretKey"));
                this.zzd = optJSONObject.optInt("verificationCodeLength");
                this.zze = zzac.zza(optJSONObject.optString("hashingAlgorithm"));
                this.zzf = optJSONObject.optInt("periodSec");
                this.zzb = zzac.zza(optJSONObject.optString("sessionInfo"));
                String optString = optJSONObject.optString("finalizeEnrollmentTime");
                try {
                    this.zzg = zzaoo.zza(zzaoo.zza(optString));
                } catch (ParseException unused) {
                    String str2 = zza;
                    Log.e(str2, "Failed to parse timestamp: " + optString);
                }
            }
            return this;
        } catch (NullPointerException | JSONException e10) {
            throw zzajk.zza(e10, zza, str);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzair
    @Nullable
    public final String zza() {
        return this.zzb;
    }
}

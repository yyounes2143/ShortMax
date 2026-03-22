package com.google.android.gms.internal.p003firebaseauthapi;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.io.IOException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznf  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznf implements zzby {
    private final SharedPreferences.Editor zza;
    private final String zzb;

    public zznf(Context context, String str, String str2) {
        if (str != null) {
            this.zzb = str;
            Context applicationContext = context.getApplicationContext();
            if (str2 == null) {
                this.zza = PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
                return;
            } else {
                this.zza = applicationContext.getSharedPreferences(str2, 0).edit();
                return;
            }
        }
        throw new IllegalArgumentException("keysetName cannot be null");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzby
    public final void zza(zzvv zzvvVar) throws IOException {
        if (!this.zza.putString(this.zzb, zzzx.zza(zzvvVar.zzk())).commit()) {
            throw new IOException("Failed to write to SharedPreferences");
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzby
    public final void zza(zzxh zzxhVar) throws IOException {
        if (!this.zza.putString(this.zzb, zzzx.zza(zzxhVar.zzk())).commit()) {
            throw new IOException("Failed to write to SharedPreferences");
        }
    }
}

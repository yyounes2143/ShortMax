package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzox  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzox {
    private static final zzox zza = new zzox();
    private final Map<String, zzcb> zzb = new HashMap();

    zzox() {
    }

    public static zzox zza() {
        return zza;
    }

    private final synchronized void zza(String str, zzcb zzcbVar) throws GeneralSecurityException {
        try {
            if (this.zzb.containsKey(str)) {
                if (this.zzb.get(str).equals(zzcbVar)) {
                    return;
                }
                String valueOf = String.valueOf(this.zzb.get(str));
                String valueOf2 = String.valueOf(zzcbVar);
                throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + valueOf + "), cannot insert " + valueOf2);
            }
            this.zzb.put(str, zzcbVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void zza(Map<String, zzcb> map) throws GeneralSecurityException {
        for (Map.Entry<String, zzcb> entry : map.entrySet()) {
            zza(entry.getKey(), entry.getValue());
        }
    }
}

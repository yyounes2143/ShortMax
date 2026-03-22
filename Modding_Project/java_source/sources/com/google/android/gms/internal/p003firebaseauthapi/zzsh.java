package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zziv;
import java.security.GeneralSecurityException;
import java.security.Provider;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzsh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzsh implements zzqw {
    private static final zziv.zza zza = zziv.zza.zza;

    private zzsh(zzqp zzqpVar) {
    }

    public static zzqw zza(zzqp zzqpVar) throws GeneralSecurityException {
        if (zza.zza()) {
            Provider zza2 = zznh.zza();
            if (zza2 != null) {
                try {
                    return zzse.zza(zzqpVar, zza2);
                } catch (GeneralSecurityException unused) {
                }
            }
            return new zzsh(zzqpVar);
        }
        throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
    }
}

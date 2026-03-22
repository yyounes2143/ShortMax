package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zziv;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzse  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzse implements zzqw {
    private static final zziv.zza zza = zziv.zza.zza;

    private zzse(zzqp zzqpVar, Provider provider) throws GeneralSecurityException {
        if (provider != null) {
            if (zza.zza()) {
                try {
                    Mac.getInstance("AESCMAC", provider);
                    zzqpVar.zze().zzb();
                    new SecretKeySpec(zzqpVar.zzf().zza(zzbf.zza()), "AES");
                    return;
                } catch (NoSuchAlgorithmException e10) {
                    throw new GeneralSecurityException("AES-CMAC not available.", e10);
                }
            }
            throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
        }
        throw new IllegalArgumentException("conscrypt is null");
    }

    public static zzqw zza(zzqp zzqpVar, Provider provider) throws GeneralSecurityException {
        return new zzse(zzqpVar, provider);
    }
}

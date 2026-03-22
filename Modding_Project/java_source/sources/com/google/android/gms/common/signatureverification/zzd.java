package com.google.android.gms.common.signatureverification;

import androidx.annotation.GuardedBy;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public final class zzd {
    @GuardedBy("Loader.class")
    private static SignatureVerificationConfiguration zza;

    public static synchronized void zza(SignatureVerificationConfiguration signatureVerificationConfiguration) {
        synchronized (zzd.class) {
            if (zza == null) {
                zza = signatureVerificationConfiguration;
            } else {
                throw new IllegalStateException("Redundantly setting SignatureVerificationConfiguration");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized SignatureVerificationConfiguration zzc() {
        SignatureVerificationConfiguration signatureVerificationConfiguration;
        synchronized (zzd.class) {
            try {
                if (zza == null) {
                    zza(new zzb());
                }
                signatureVerificationConfiguration = zza;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return signatureVerificationConfiguration;
    }
}

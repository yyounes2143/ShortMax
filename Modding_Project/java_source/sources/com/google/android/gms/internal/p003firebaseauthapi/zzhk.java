package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzhk  reason: invalid package */
/* loaded from: classes4.dex */
final class zzhk extends ThreadLocal<Cipher> {
    private static Cipher zza() {
        boolean zzb;
        try {
            Cipher zza = zzzj.zza.zza("ChaCha20-Poly1305");
            zzb = zzhh.zzb(zza);
            if (!zzb) {
                return null;
            }
            return zza;
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return zza();
    }
}

package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzir  reason: invalid package */
/* loaded from: classes4.dex */
final class zzir extends ThreadLocal<Cipher> {
    private static Cipher zza() {
        try {
            Cipher zza = zzzj.zza.zza("AES/GCM-SIV/NoPadding");
            if (!zzgz.zza(zza)) {
                return null;
            }
            return zza;
        } catch (GeneralSecurityException e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Cipher initialValue() {
        return zza();
    }
}

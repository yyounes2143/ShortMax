package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgmb extends ThreadLocal {
    protected static final Cipher zza() {
        try {
            Cipher cipher = (Cipher) zzgwm.zza.zza("AES/GCM-SIV/NoPadding");
            if (!zzgks.zzb(cipher)) {
                return null;
            }
            return cipher;
        } catch (GeneralSecurityException e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}

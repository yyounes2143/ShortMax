package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzcj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzcj {
    public static zzcb zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzxb zza = zzxb.zza(bArr, zzaku.zza());
            zzoz zza2 = zzoz.zza();
            zzqe zza3 = zzqe.zza(zza);
            if (!zza2.zzc(zza3)) {
                return new zzoi(zza3);
            }
            return zza2.zza((zzoz) zza3);
        } catch (IOException e10) {
            throw new GeneralSecurityException("Failed to parse proto", e10);
        }
    }

    public static byte[] zza(zzcb zzcbVar) throws GeneralSecurityException {
        if (zzcbVar instanceof zzoi) {
            return ((zzoi) zzcbVar).zzb().zza().zzk();
        }
        return ((zzqe) zzoz.zza().zza((zzoz) zzcbVar, (Class<zzqf>) zzqe.class)).zza().zzk();
    }
}

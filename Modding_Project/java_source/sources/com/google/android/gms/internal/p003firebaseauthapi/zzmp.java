package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzmp  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzmp implements zzbg {
    private zzmp(zzbg zzbgVar, byte[] bArr) {
    }

    public static zzbg zza(zzof zzofVar) throws GeneralSecurityException {
        byte[] zzb;
        zzqb zza = zzofVar.zza(zzbf.zza());
        zzbg zzbgVar = (zzbg) zznq.zza().zza(zza.zzf(), zzbg.class).zzb(zza.zzd());
        zzxz zzb2 = zza.zzb();
        int i10 = zzmo.zza[zzb2.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                if (i10 == 4) {
                    zzb = zzpe.zzb(zzofVar.zzb().intValue()).zzb();
                } else {
                    String valueOf = String.valueOf(zzb2);
                    throw new GeneralSecurityException("unknown output prefix type " + valueOf);
                }
            } else {
                zzb = zzpe.zza(zzofVar.zzb().intValue()).zzb();
            }
        } else {
            zzb = zzpe.zza.zzb();
        }
        return new zzmp(zzbgVar, zzb);
    }
}

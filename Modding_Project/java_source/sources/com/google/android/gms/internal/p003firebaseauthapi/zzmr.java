package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzmr  reason: invalid package */
/* loaded from: classes4.dex */
final class zzmr implements zzmf {
    private final zzzi zza;
    private final zzlz zzb;

    private zzmr(zzlz zzlzVar, zzzi zzziVar) {
        this.zzb = zzlzVar;
        this.zza = zzziVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzmr zza(zzzi zzziVar) throws GeneralSecurityException {
        int i10 = zzmq.zza[zzziVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return new zzmr(new zzlz("HmacSha512"), zzzi.NIST_P521);
                }
                String valueOf = String.valueOf(zzziVar);
                throw new GeneralSecurityException("invalid curve type: " + valueOf);
            }
            return new zzmr(new zzlz("HmacSha384"), zzzi.NIST_P384);
        }
        return new zzmr(new zzlz("HmacSha256"), zzzi.NIST_P256);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmf
    public final byte[] zza(byte[] bArr, zzme zzmeVar) throws GeneralSecurityException {
        ECPrivateKey zza = zzzf.zza(this.zza, zzmeVar.zza().zzb());
        zzzi zzziVar = this.zza;
        byte[] zza2 = zzzf.zza(zza, zzzf.zza(zzzf.zza(zzziVar), zzzh.UNCOMPRESSED, bArr));
        byte[] zza3 = zzyz.zza(bArr, zzmeVar.zzb().zzb());
        byte[] zza4 = zzmk.zza(zza());
        zzlz zzlzVar = this.zzb;
        return zzlzVar.zza(null, zza2, "eae_prk", zza3, "shared_secret", zza4, zzlzVar.zza());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzmf
    public final byte[] zza() throws GeneralSecurityException {
        int i10 = zzmq.zza[this.zza.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return zzmk.zze;
                }
                throw new GeneralSecurityException("Could not determine HPKE KEM ID");
            }
            return zzmk.zzd;
        }
        return zzmk.zzc;
    }
}

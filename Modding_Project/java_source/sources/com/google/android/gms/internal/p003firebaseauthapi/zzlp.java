package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzdx;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzlp  reason: invalid package */
/* loaded from: classes4.dex */
final class zzlp implements zzlr {
    private final int zza;

    public zzlp(zzdx zzdxVar) throws GeneralSecurityException {
        if (zzdxVar.zzb() == 12) {
            if (zzdxVar.zzd() == 16) {
                if (zzdxVar.zzf() == zzdx.zza.zzc) {
                    this.zza = zzdxVar.zzc();
                    return;
                }
                throw new GeneralSecurityException("invalid variant");
            }
            throw new GeneralSecurityException("invalid tag size");
        }
        throw new GeneralSecurityException("invalid IV size");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlr
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlr
    public final byte[] zza(byte[] bArr, byte[] bArr2, int i10) throws GeneralSecurityException {
        if (bArr2.length >= i10) {
            if (bArr.length == this.zza) {
                SecretKey zzb = zzgr.zzb(bArr);
                int i11 = i10 + 12;
                if (bArr2.length >= i10 + 28) {
                    AlgorithmParameterSpec zza = zzgr.zza(bArr2, i10, 12);
                    Cipher zza2 = zzgr.zza();
                    zza2.init(2, zzb, zza);
                    return zza2.doFinal(bArr2, i11, (bArr2.length - i10) - 12);
                }
                throw new GeneralSecurityException("ciphertext too short");
            }
            throw new GeneralSecurityException("invalid key size");
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}

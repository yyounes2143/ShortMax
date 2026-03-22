package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzglo implements zzget {
    private final byte[] zza;
    private final int zzb;
    private final zzgro zzc;

    private zzglo(byte[] bArr, zzgxe zzgxeVar, int i10) throws GeneralSecurityException {
        this.zzc = new zzgwy(bArr);
        this.zza = zzgxeVar.zzd();
        this.zzb = i10;
    }

    public static zzget zzb(zzgjo zzgjoVar) throws GeneralSecurityException {
        return new zzglo(zzgjoVar.zze().zzd(zzgey.zza()), zzgjoVar.zzb(), zzgjoVar.zzd().zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzget
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            byte[] bArr3 = this.zza;
            int i10 = this.zzb;
            int length = bArr.length;
            int length2 = bArr3.length;
            int i11 = i10 + length2;
            if (length >= i11 + 28) {
                if (zzgpj.zzc(bArr3, bArr)) {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, length2, i11);
                    byte[] bArr4 = {0, 1, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                    byte[] bArr5 = {0, 2, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                    int length3 = copyOfRange.length;
                    if (length3 <= 12 && length3 >= 8) {
                        System.arraycopy(copyOfRange, 0, bArr4, 4, length3);
                        System.arraycopy(copyOfRange, 0, bArr5, 4, length3);
                        zzgro zzgroVar = this.zzc;
                        byte[] bArr6 = new byte[32];
                        System.arraycopy(zzgroVar.zza(bArr4, 16), 0, bArr6, 0, 16);
                        System.arraycopy(zzgroVar.zza(bArr5, 16), 0, bArr6, 16, 16);
                        if (zzgmg.zza(2)) {
                            SecretKey zzc = zzgkm.zzc(bArr6);
                            int i12 = i11 + 12;
                            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i11, i12);
                            if (copyOfRange2.length == 12) {
                                if (length >= i11 + 28) {
                                    AlgorithmParameterSpec zza = zzgkm.zza(copyOfRange2, 0, 12);
                                    Cipher zzb = zzgkm.zzb();
                                    zzb.init(2, zzc, zza);
                                    if (bArr2 != null && bArr2.length != 0) {
                                        zzb.updateAAD(bArr2);
                                    }
                                    return zzb.doFinal(bArr, i12, length - i12);
                                }
                                throw new GeneralSecurityException("ciphertext too short");
                            }
                            throw new GeneralSecurityException("iv is wrong size");
                        }
                        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
                    }
                    throw new GeneralSecurityException("invalid salt size");
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}

package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zziv;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzik  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzik implements zzba {
    private static final zziv.zza zza = zziv.zza.zza;
    private final byte[] zzb;
    private final byte[] zzc;

    private zzik(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (zza.zza()) {
            if (zza()) {
                if (bArr.length == 32) {
                    this.zzb = bArr;
                    this.zzc = bArr2;
                    return;
                }
                throw new InvalidKeyException("The key length in bytes must be 32.");
            }
            throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    public static zzba zza(zzgb zzgbVar) throws GeneralSecurityException {
        return new zzik(zzgbVar.zze().zza(zzbf.zza()), zzgbVar.zzd().zzb());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzba
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            byte[] zza2 = zzqd.zza(24);
            SecretKeySpec secretKeySpec = new SecretKeySpec(zzhp.zza(this.zzb, zza2), "ChaCha20");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(zza(zza2));
            Cipher zza3 = zzhh.zza();
            zza3.init(1, secretKeySpec, ivParameterSpec);
            if (bArr2 != null && bArr2.length != 0) {
                zza3.updateAAD(bArr2);
            }
            int outputSize = zza3.getOutputSize(bArr.length);
            byte[] bArr3 = this.zzc;
            if (outputSize <= 2147483623 - bArr3.length) {
                byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + 24 + outputSize);
                System.arraycopy(zza2, 0, copyOf, this.zzc.length, 24);
                if (zza3.doFinal(bArr, 0, bArr.length, copyOf, this.zzc.length + 24) == outputSize) {
                    return copyOf;
                }
                throw new GeneralSecurityException("not enough data written");
            }
            throw new GeneralSecurityException("plaintext too long");
        }
        throw new NullPointerException("plaintext is null");
    }

    public static boolean zza() {
        return zzhh.zza() != null;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzba
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr3 = this.zzc;
            if (length >= bArr3.length + 40) {
                if (zzqn.zza(bArr3, bArr)) {
                    byte[] bArr4 = new byte[24];
                    System.arraycopy(bArr, this.zzc.length, bArr4, 0, 24);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(zzhp.zza(this.zzb, bArr4), "ChaCha20");
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(zza(bArr4));
                    Cipher zza2 = zzhh.zza();
                    zza2.init(2, secretKeySpec, ivParameterSpec);
                    if (bArr2 != null && bArr2.length != 0) {
                        zza2.updateAAD(bArr2);
                    }
                    byte[] bArr5 = this.zzc;
                    return zza2.doFinal(bArr, bArr5.length + 24, (bArr.length - bArr5.length) - 24);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }

    private static byte[] zza(byte[] bArr) {
        byte[] bArr2 = new byte[12];
        System.arraycopy(bArr, 16, bArr2, 4, 8);
        return bArr2;
    }
}

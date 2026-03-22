package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgwc implements zzget {
    private static final ThreadLocal zza = new zzgwa();
    private static final ThreadLocal zzb = new zzgwb();
    private final byte[] zzc;
    private final byte[] zzd;
    private final byte[] zze;
    private final SecretKeySpec zzf;
    private final int zzg;

    private zzgwc(byte[] bArr, int i10, byte[] bArr2) throws GeneralSecurityException {
        if (zzgmg.zza(1)) {
            if (i10 != 12 && i10 != 16) {
                throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
            }
            this.zzg = i10;
            zzgxc.zza(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.zzf = secretKeySpec;
            Cipher cipher = (Cipher) zza.get();
            cipher.init(1, secretKeySpec);
            byte[] zzd = zzd(cipher.doFinal(new byte[16]));
            this.zzc = zzd;
            this.zzd = zzd(zzd);
            this.zze = bArr2;
            return;
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    public static zzget zzb(zzggu zzgguVar) throws GeneralSecurityException {
        if (zzgmg.zza(1)) {
            return new zzgwc(zzgguVar.zze().zzd(zzgey.zza()), zzgguVar.zzd().zzb(), zzgguVar.zzb().zzd());
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    private static void zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
    }

    private static byte[] zzd(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i10 = 0;
        while (i10 < 15) {
            byte b10 = bArr[i10];
            int i11 = i10 + 1;
            bArr2[i10] = (byte) (((b10 + b10) ^ ((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >>> 7)) & 255);
            i10 = i11;
        }
        byte b11 = bArr[15];
        bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b11 + b11));
        return bArr2;
    }

    private final byte[] zze(Cipher cipher, int i10, byte[] bArr, int i11, int i12) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        int length;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i10;
        if (i12 == 0) {
            zzc(bArr2, this.zzc);
            return cipher.doFinal(bArr2);
        }
        byte[] bArr3 = new byte[16];
        cipher.doFinal(bArr2, 0, 16, bArr3);
        int i13 = 0;
        while (true) {
            byte[] bArr4 = bArr2;
            bArr2 = bArr3;
            bArr3 = bArr4;
            if (i12 - i13 <= 16) {
                break;
            }
            for (int i14 = 0; i14 < 16; i14++) {
                bArr2[i14] = (byte) (bArr[(i11 + i13) + i14] ^ bArr2[i14]);
            }
            cipher.doFinal(bArr2, 0, 16, bArr3);
            i13 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i13 + i11, i11 + i12);
        if (copyOfRange.length == 16) {
            zzc(copyOfRange, this.zzc);
        } else {
            byte[] copyOf = Arrays.copyOf(this.zzd, 16);
            int i15 = 0;
            while (true) {
                length = copyOfRange.length;
                if (i15 >= length) {
                    break;
                }
                copyOf[i15] = (byte) (copyOf[i15] ^ copyOfRange[i15]);
                i15++;
            }
            copyOf[length] = (byte) (copyOf[length] ^ ByteCompanionObject.MIN_VALUE);
            copyOfRange = copyOf;
        }
        zzc(bArr2, copyOfRange);
        cipher.doFinal(bArr2, 0, 16, bArr3);
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.zzget
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3;
        byte[] bArr4 = this.zze;
        int length = bArr.length;
        int length2 = bArr4.length;
        int i10 = this.zzg;
        int i11 = ((length - length2) - i10) - 16;
        if (i11 >= 0) {
            if (zzgpj.zzc(bArr4, bArr)) {
                Cipher cipher = (Cipher) zza.get();
                SecretKeySpec secretKeySpec = this.zzf;
                cipher.init(1, secretKeySpec);
                byte[] zze = zze(cipher, 0, bArr, length2, i10);
                if (bArr2 == null) {
                    bArr3 = new byte[0];
                } else {
                    bArr3 = bArr2;
                }
                byte b10 = 0;
                byte[] zze2 = zze(cipher, 1, bArr3, 0, bArr3.length);
                byte[] zze3 = zze(cipher, 2, bArr, length2 + i10, i11);
                int i12 = length - 16;
                int i13 = 0;
                while (i13 < 16) {
                    i13++;
                    b10 = (byte) (b10 | (((bArr[i12 + i13] ^ zze2[i13]) ^ zze[i13]) ^ zze3[i13]));
                }
                if (b10 == 0) {
                    Cipher cipher2 = (Cipher) zzb.get();
                    cipher2.init(1, secretKeySpec, new IvParameterSpec(zze));
                    return cipher2.doFinal(bArr, bArr4.length + i10, i11);
                }
                throw new AEADBadTagException("tag mismatch");
            }
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}

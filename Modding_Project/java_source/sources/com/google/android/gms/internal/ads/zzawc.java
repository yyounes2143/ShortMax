package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzawc {
    private static Cipher zza;
    private static final Object zzb = new Object();
    private static final Object zzc = new Object();

    public zzawc(SecureRandom secureRandom) {
    }

    private static final Cipher zzc() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (zzc) {
            try {
                if (zza == null) {
                    zza = Cipher.getInstance("AES/CBC/PKCS5Padding");
                }
                cipher = zza;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cipher;
    }

    public final String zza(byte[] bArr, byte[] bArr2) throws zzawb {
        byte[] doFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzb) {
                zzc().init(1, secretKeySpec, (SecureRandom) null);
                doFinal = zzc().doFinal(bArr2);
                iv = zzc().getIV();
            }
            int length2 = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length2];
            allocate.get(bArr3);
            return zzaul.zza(bArr3, false);
        } catch (InvalidKeyException e10) {
            throw new zzawb(this, e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new zzawb(this, e11);
        } catch (BadPaddingException e12) {
            throw new zzawb(this, e12);
        } catch (IllegalBlockSizeException e13) {
            throw new zzawb(this, e13);
        } catch (NoSuchPaddingException e14) {
            throw new zzawb(this, e14);
        }
    }

    public final byte[] zzb(byte[] bArr, String str) throws zzawb {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] zzb2 = zzaul.zzb(str, false);
            int length2 = zzb2.length;
            if (length2 > 16) {
                ByteBuffer allocate = ByteBuffer.allocate(length2);
                allocate.put(zzb2);
                allocate.flip();
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[length2 - 16];
                allocate.get(bArr2);
                allocate.get(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (zzb) {
                    zzc().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                    doFinal = zzc().doFinal(bArr3);
                }
                return doFinal;
            }
            throw new zzawb(this);
        } catch (IllegalArgumentException e10) {
            throw new zzawb(this, e10);
        } catch (InvalidAlgorithmParameterException e11) {
            throw new zzawb(this, e11);
        } catch (InvalidKeyException e12) {
            throw new zzawb(this, e12);
        } catch (NoSuchAlgorithmException e13) {
            throw new zzawb(this, e13);
        } catch (BadPaddingException e14) {
            throw new zzawb(this, e14);
        } catch (IllegalBlockSizeException e15) {
            throw new zzawb(this, e15);
        } catch (NoSuchPaddingException e16) {
            throw new zzawb(this, e16);
        }
    }
}

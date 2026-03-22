package jb;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import mb.c;
/* loaded from: classes5.dex */
public final class a {
    private static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            c.c("CBC", "decrypt 6 content is null");
            return new byte[0];
        } else if (bArr.length == 0) {
            c.c("CBC", "decrypt 6 content length is 0");
            return new byte[0];
        } else if (bArr2 == null) {
            c.c("CBC", "decrypt 6 key is null");
            return new byte[0];
        } else if (bArr2.length < 16) {
            c.c("CBC", "decrypt 6 key error: 6 key length less than 16 bytes.");
            return new byte[0];
        } else if (bArr3 == null) {
            c.c("CBC", "decrypt 6 iv is null");
            return new byte[0];
        } else if (bArr3.length < 16) {
            c.c("CBC", "decrypt 6 iv error: 6 iv length less than 16 bytes.");
            return new byte[0];
        } else {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
                return cipher.doFinal(bArr);
            } catch (NullPointerException e10) {
                c.c("CBC", "NullPointerException: " + e10.getMessage());
                return new byte[0];
            } catch (InvalidAlgorithmParameterException e11) {
                c.c("CBC", "InvalidAlgorithmParameterException: " + e11.getMessage());
                return new byte[0];
            } catch (InvalidKeyException e12) {
                c.c("CBC", "InvalidKeyException: " + e12.getMessage());
                return new byte[0];
            } catch (NoSuchAlgorithmException e13) {
                c.c("CBC", "NoSuchAlgorithmException: " + e13.getMessage());
                return new byte[0];
            } catch (BadPaddingException e14) {
                c.c("CBC", "BadPaddingException: " + e14.getMessage());
                c.c("CBC", "key is not right");
                return new byte[0];
            } catch (IllegalBlockSizeException e15) {
                c.c("CBC", "IllegalBlockSizeException: " + e15.getMessage());
                return new byte[0];
            } catch (NoSuchPaddingException e16) {
                c.c("CBC", "NoSuchPaddingException: " + e16.getMessage());
                return new byte[0];
            }
        }
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        byte[] c10 = mb.a.c(16);
        return a(c10, d(bArr, bArr2, c10));
    }

    public static byte[] d(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            c.c("CBC", "encrypt 6 content is null");
            return new byte[0];
        } else if (bArr.length == 0) {
            c.c("CBC", "encrypt 6 content length is 0");
            return new byte[0];
        } else if (bArr2 == null) {
            c.c("CBC", "encrypt 6 key is null");
            return new byte[0];
        } else if (bArr2.length < 16) {
            c.c("CBC", "encrypt 6 key error: 6 key length less than 16 bytes.");
            return new byte[0];
        } else if (bArr3 == null) {
            c.c("CBC", "encrypt 6 iv is null");
            return new byte[0];
        } else if (bArr3.length < 16) {
            c.c("CBC", "encrypt 6 iv error: 6 iv length less than 16 bytes.");
            return new byte[0];
        } else {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
                return cipher.doFinal(bArr);
            } catch (NullPointerException e10) {
                c.c("CBC", "NullPointerException: " + e10.getMessage());
                return new byte[0];
            } catch (InvalidAlgorithmParameterException e11) {
                c.c("CBC", "InvalidAlgorithmParameterException: " + e11.getMessage());
                return new byte[0];
            } catch (InvalidKeyException e12) {
                c.c("CBC", "InvalidKeyException: " + e12.getMessage());
                return new byte[0];
            } catch (NoSuchAlgorithmException e13) {
                c.c("CBC", "NoSuchAlgorithmException: " + e13.getMessage());
                return new byte[0];
            } catch (BadPaddingException e14) {
                c.c("CBC", "BadPaddingException: " + e14.getMessage());
                return new byte[0];
            } catch (IllegalBlockSizeException e15) {
                c.c("CBC", "IllegalBlockSizeException: " + e15.getMessage());
                return new byte[0];
            } catch (NoSuchPaddingException e16) {
                c.c("CBC", "NoSuchPaddingException: " + e16.getMessage());
                return new byte[0];
            }
        }
    }
}

package hb;

import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes5.dex */
public class v {
    public static String a(String str, String str2) {
        try {
            return b(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            f1.h("hmsSdk", "Unsupported encoding exception,utf-8");
            return "";
        }
    }

    public static String b(String str, byte[] bArr) {
        String str2;
        if (bArr != null && bArr.length != 0) {
            try {
                return mb.b.a(d(bArr, c(Base64.decode(str, 0))));
            } catch (NoSuchAlgorithmException unused) {
                str2 = "encrypt(): getInstance - No such algorithm,transformation";
                f1.m("hmsSdk", str2);
                return "";
            } catch (InvalidKeySpecException unused2) {
                str2 = "encrypt(): Invalid key specification";
                f1.m("hmsSdk", str2);
                return "";
            }
        }
        f1.m("hmsSdk", "encrypt: content is empty or null");
        return "";
    }

    private static PublicKey c(byte[] bArr) {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr));
    }

    private static byte[] d(byte[] bArr, PublicKey publicKey) {
        String str;
        try {
            if (publicKey != null) {
                Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
                cipher.init(1, publicKey);
                return cipher.doFinal(bArr);
            }
            throw new UnsupportedEncodingException("The loaded public key is null");
        } catch (UnsupportedEncodingException unused) {
            str = "rsaEncrypt(): getBytes - Unsupported coding format!";
            f1.m("hmsSdk", str);
            return new byte[0];
        } catch (InvalidKeyException unused2) {
            str = "rsaEncrypt(): init - Invalid key!";
            f1.m("hmsSdk", str);
            return new byte[0];
        } catch (NoSuchAlgorithmException unused3) {
            str = "rsaEncrypt(): getInstance - No such algorithm,transformation";
            f1.m("hmsSdk", str);
            return new byte[0];
        } catch (BadPaddingException unused4) {
            str = "rsaEncrypt():False filling parameters!";
            f1.m("hmsSdk", str);
            return new byte[0];
        } catch (IllegalBlockSizeException unused5) {
            str = "rsaEncrypt(): doFinal - The provided block is not filled with";
            f1.m("hmsSdk", str);
            return new byte[0];
        } catch (NoSuchPaddingException unused6) {
            str = "rsaEncrypt():  No such filling parameters ";
            f1.m("hmsSdk", str);
            return new byte[0];
        }
    }
}

package kb;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import mb.c;
/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60704a = "PBKDF2";

    private static byte[] a(char[] cArr, byte[] bArr, int i10, int i11, boolean z10) {
        SecretKeyFactory secretKeyFactory;
        try {
            PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr, bArr, i10, i11);
            if (z10) {
                secretKeyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            } else {
                secretKeyFactory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            }
            return secretKeyFactory.generateSecret(pBEKeySpec).getEncoded();
        } catch (NoSuchAlgorithmException e10) {
            e = e10;
            String str = f60704a;
            c.c(str, "pbkdf exception : " + e.getMessage());
            return new byte[0];
        } catch (InvalidKeySpecException e11) {
            e = e11;
            String str2 = f60704a;
            c.c(str2, "pbkdf exception : " + e.getMessage());
            return new byte[0];
        }
    }

    public static byte[] b(char[] cArr, byte[] bArr, int i10, int i11) {
        return a(cArr, bArr, i10, i11, false);
    }
}

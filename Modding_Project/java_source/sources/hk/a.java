package hk;

import com.startshorts.androidplayer.log.Logger;
import java.nio.charset.StandardCharsets;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: AESUtil.java */
/* loaded from: classes7.dex */
public class a {
    public static String a(String str, String str2, String str3) {
        try {
            byte[] b10 = b(str.trim());
            byte[] b11 = b(str3.trim());
            byte[] b12 = b(str2.trim());
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, new SecretKeySpec(b10, "AES"), new GCMParameterSpec(128, b12));
            return new String(cipher.doFinal(b11), StandardCharsets.UTF_8);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("AESUtil", "decode failed -> " + e10.getMessage());
            return "";
        }
    }

    public static byte[] b(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 / 2] = (byte) ((Character.digit(str.charAt(i10), 16) << 4) + Character.digit(str.charAt(i10 + 1), 16));
        }
        return bArr;
    }
}

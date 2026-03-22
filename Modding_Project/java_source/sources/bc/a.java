package bc;

import android.util.Base64;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: AESUtil.java */
/* loaded from: classes5.dex */
public class a {
    public static String a(String str, String str2, String str3) throws Exception {
        SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(str2, 2), "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(Base64.decode(str3, 2));
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, secretKeySpec, ivParameterSpec);
        return Base64.encodeToString(cipher.doFinal(str.getBytes()), 2);
    }

    public static String b(String str) {
        Charset charset = StandardCharsets.UTF_8;
        return new String(Base64.encode(Arrays.copyOf(str.getBytes(charset), 16), 2), charset);
    }

    public static String c(String str) {
        Charset charset = StandardCharsets.UTF_8;
        return new String(Base64.encode(Arrays.copyOf(str.getBytes(charset), 32), 2), charset);
    }
}

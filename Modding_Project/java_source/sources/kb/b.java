package kb;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import mb.c;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60705a = "SHA";

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f60706b = {"SHA-256", "SHA-384", "SHA-512"};

    private static boolean a(String str) {
        for (String str2 : f60706b) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static String b(String str) {
        return c(str, "SHA-256");
    }

    public static String c(String str, String str2) {
        byte[] bArr;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!a(str2)) {
                c.c(f60705a, "algorithm is not safe or legal");
                return "";
            }
            try {
                bArr = str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                bArr = new byte[0];
                c.c(f60705a, "Error in generate SHA UnsupportedEncodingException");
            }
            return mb.b.a(d(bArr, str2));
        }
        c.c(f60705a, "content or algorithm is null.");
        return "";
    }

    public static byte[] d(byte[] bArr, String str) {
        if (bArr != null && !TextUtils.isEmpty(str)) {
            if (!a(str)) {
                c.c(f60705a, "algorithm is not safe or legal");
                return new byte[0];
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException unused) {
                c.c(f60705a, "Error in generate SHA NoSuchAlgorithmException");
                return new byte[0];
            }
        }
        c.c(f60705a, "content or algorithm is null.");
        return new byte[0];
    }
}

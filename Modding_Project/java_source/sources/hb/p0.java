package hb;

import android.util.Pair;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public class p0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f52736a = Charset.forName("UTF-8");

    public static Pair<byte[], String> a(String str, int i10) {
        if (str != null && str.length() >= i10) {
            String substring = str.substring(0, i10);
            return new Pair<>(mb.b.b(substring), str.substring(i10));
        }
        return new Pair<>(new byte[0], str);
    }

    public static String b(String str, String str2) {
        Pair<byte[], String> a10 = a(str, 32);
        return new String(jb.a.b(mb.b.b((String) a10.second), mb.b.b(str2), (byte[]) a10.first), f52736a);
    }

    public static String c(byte[] bArr, String str) {
        String str2;
        if (bArr != null && bArr.length != 0 && str != null) {
            byte[] b10 = mb.b.b(str);
            if (b10.length < 16) {
                str2 = "key length is not right";
            } else {
                return mb.b.a(jb.b.b(bArr, b10));
            }
        } else {
            str2 = "cbc encrypt(byte) param is not right";
        }
        f1.e("AesCipher", str2);
        return "";
    }

    public static String d(String str, String str2) {
        return mb.b.a(jb.a.c(str.getBytes(f52736a), mb.b.b(str2)));
    }
}

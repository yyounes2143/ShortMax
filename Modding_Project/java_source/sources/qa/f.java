package qa;

import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.SecretKey;
/* loaded from: classes5.dex */
public class f implements pa.d {

    /* renamed from: a  reason: collision with root package name */
    private final pa.c f65264a;

    /* renamed from: b  reason: collision with root package name */
    private SecretKey f65265b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f65266c = false;

    public f(pa.c cVar) {
        this.f65264a = cVar;
    }

    private void b() {
        try {
            this.f65265b = k.a(new e(this.f65264a.getString("/code/code1", null), this.f65264a.getString("/code/code2", null), this.f65264a.getString("/code/code3", null), this.f65264a.getString("/code/code4", null), "PBKDF2WithHmacSHA1", 10000));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException unused) {
            Log.e("AGC_Mark", "Exception when reading the 'K&I' for 'Config'.");
            this.f65265b = null;
        }
        this.f65266c = true;
    }

    public static boolean c(String str) {
        if (!TextUtils.isEmpty(str) && Pattern.matches("^\\[!([A-Fa-f0-9]*)]", str)) {
            return true;
        }
        return false;
    }

    private String d(String str) {
        try {
            Matcher matcher = Pattern.compile("^\\[!([A-Fa-f0-9]*)]").matcher(str);
            if (!matcher.find()) {
                return "";
            }
            return matcher.group(1);
        } catch (IllegalStateException | IndexOutOfBoundsException unused) {
            Log.e("AGC_Mark", "getRawString exception");
            return "";
        }
    }

    @Override // pa.d
    public String a(String str, String str2) {
        String str3;
        if (!this.f65266c) {
            b();
        }
        if (this.f65265b == null) {
            str3 = "mKey is null, return default value";
        } else if (c(str)) {
            try {
                return new String(k.b(this.f65265b, a.b(d(str))), "UTF-8");
            } catch (UnsupportedEncodingException | IllegalArgumentException | GeneralSecurityException unused) {
                str3 = "UnsupportedEncodingException||GeneralSecurityException||IllegalArgumentException";
            }
        } else {
            return str2;
        }
        Log.e("AGC_Mark", str3);
        return str2;
    }
}

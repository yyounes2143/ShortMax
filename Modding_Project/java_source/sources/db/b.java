package db;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.framework.common.Logger;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.MBridgeConstans;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f50287a = "b";

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f50288b = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    public static String a(String str) {
        return b(str, "SHA-256");
    }

    private static String b(String str, String str2) {
        String str3;
        String str4;
        try {
            try {
                return c(MessageDigest.getInstance(str2).digest(str.getBytes("UTF-8")));
            } catch (NoSuchAlgorithmException unused) {
                str3 = f50287a;
                str4 = "encrypt NoSuchAlgorithmException";
                Logger.w(str3, str4);
                return null;
            }
        } catch (UnsupportedEncodingException unused2) {
            str3 = f50287a;
            str4 = "encrypt UnsupportedEncodingException";
        }
    }

    private static String c(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            if (hexString.length() == 1) {
                sb2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i10 = 1;
        if (str.length() == 1) {
            return ProxyConfig.MATCH_ALL_SCHEMES;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < str.length(); i11++) {
            String str2 = str.charAt(i11) + "";
            if (f50288b.matcher(str2).matches()) {
                if (i10 % 2 == 0) {
                    str2 = ProxyConfig.MATCH_ALL_SCHEMES;
                }
                i10++;
            }
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }
}

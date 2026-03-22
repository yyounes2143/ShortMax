package mb;

import android.text.TextUtils;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
/* loaded from: classes5.dex */
public final class b {
    public static String a(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArr) {
                String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (hexString.length() == 1) {
                    sb2.append('0');
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        }
        return "";
    }

    public static byte[] b(String str) {
        int i10;
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            int length = upperCase.length() / 2;
            byte[] bArr = new byte[length];
            try {
                byte[] bytes = upperCase.getBytes("UTF-8");
                for (int i11 = 0; i11 < length; i11++) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("0x");
                    sb2.append(new String(new byte[]{bytes[i11 * 2]}, "UTF-8"));
                    bArr[i11] = (byte) (((byte) (Byte.decode(sb2.toString()).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{bytes[i10 + 1]}, "UTF-8")).byteValue());
                }
                return bArr;
            } catch (UnsupportedEncodingException | NumberFormatException e10) {
                c.c("HexUtil", "hex string 2 byte array exception : " + e10.getMessage());
                return new byte[0];
            }
        } catch (Throwable th2) {
            c.c("HexUtil", "hex string toUpperCase exception : " + th2.getMessage());
            return new byte[0];
        }
    }
}

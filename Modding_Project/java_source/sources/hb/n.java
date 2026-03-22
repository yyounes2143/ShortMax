package hb;

import android.text.TextUtils;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class n {
    public static String a(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str2)) {
            f1.m("hmsSdk", "checkStrParameter() Parameter verification failure! Parameter:" + str);
            return str4;
        } else if (d(str, str2, str3)) {
            return str2;
        } else {
            return str4;
        }
    }

    public static boolean b(String str) {
        return !c("eventId", str, 256);
    }

    public static boolean c(String str, String str2, int i10) {
        StringBuilder sb2;
        String str3;
        if (TextUtils.isEmpty(str2)) {
            sb2 = new StringBuilder();
            str3 = "checkString() Parameter is empty : ";
        } else if (str2.length() > i10) {
            sb2 = new StringBuilder();
            str3 = "checkString() Failure of parameter length check! Parameter:";
        } else {
            return true;
        }
        sb2.append(str3);
        sb2.append(str);
        f1.m("hmsSdk", sb2.toString());
        return false;
    }

    public static boolean d(String str, String str2, String str3) {
        StringBuilder sb2;
        String str4;
        if (TextUtils.isEmpty(str2)) {
            sb2 = new StringBuilder();
            str4 = "checkString() Parameter is null! Parameter:";
        } else if (Pattern.compile(str3).matcher(str2).matches()) {
            return true;
        } else {
            sb2 = new StringBuilder();
            str4 = "checkString() Parameter verification failure! Parameter:";
        }
        sb2.append(str4);
        sb2.append(str);
        f1.m("hmsSdk", sb2.toString());
        return false;
    }

    public static boolean e(Map<String, String> map) {
        String str;
        if (map != null && map.size() != 0) {
            if (map.size() == 1 && (map.get("constants") != null || map.get("_constants") != null)) {
                str = "checkMap() the key can't be constants or _constants";
            } else if (map.size() <= 2048 && map.toString().length() <= 204800) {
                return true;
            } else {
                str = "checkMap Map data is too big! size: " + map.size() + " length: " + map.toString().length();
            }
        } else {
            str = "onEvent() mapValue has not data.so,The data will be empty";
        }
        f1.m("hmsSdk", str);
        return false;
    }
}

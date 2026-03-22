package com.huawei.hms.framework.common.grs;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.huawei.hms.framework.common.StringUtils;
import java.util.Locale;
/* loaded from: classes5.dex */
public class GrsUtils {
    public static String fixResult(String[] strArr, String str) {
        if (strArr.length > 2) {
            if (str.endsWith(DomExceptionUtils.SEPARATOR)) {
                return str + strArr[2];
            }
            return str + DomExceptionUtils.SEPARATOR + strArr[2];
        }
        return str;
    }

    public static boolean isGRSSchema(String str) {
        if (str != null && str.startsWith("grs://")) {
            return true;
        }
        return false;
    }

    public static String[] parseGRSSchema(String str) {
        String[] split = StringUtils.substring(str, str.toLowerCase(Locale.ENGLISH).indexOf("grs://") + 6).split(DomExceptionUtils.SEPARATOR, 3);
        if (split.length == 1) {
            return new String[]{split[0], "ROOT"};
        }
        return split;
    }

    public static String[] parseParams(String str) {
        if (str.endsWith(DomExceptionUtils.SEPARATOR)) {
            str = StringUtils.substring(str, str.indexOf("grs://"), str.length() - 1);
        }
        return parseGRSSchema(str);
    }
}

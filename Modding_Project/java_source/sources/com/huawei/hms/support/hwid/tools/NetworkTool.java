package com.huawei.hms.support.hwid.tools;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.framework.common.ContainerUtils;
/* loaded from: classes5.dex */
public final class NetworkTool {
    private static boolean a(Boolean bool) {
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        return false;
    }

    public static String buildNetworkCookie(String str, String str2, String str3, String str4, Boolean bool, Boolean bool2, Long l10) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
        if (!TextUtils.isEmpty(str2)) {
            sb2.append(str2);
        }
        if (a(bool)) {
            sb2.append(";HttpOnly");
        }
        if (a(bool2)) {
            sb2.append(";Secure");
        }
        if (!TextUtils.isEmpty(str3)) {
            sb2.append(";Domain=");
            sb2.append(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            sb2.append(";Path=");
            sb2.append(str4);
        }
        if (l10 != null && l10.longValue() > 0) {
            sb2.append(";Max-Age=");
            sb2.append(l10);
        }
        return sb2.toString();
    }

    public static String buildNetworkUrl(String str, Boolean bool) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            if (a(bool)) {
                str2 = "https";
            } else {
                str2 = ProxyConfig.MATCH_HTTP;
            }
            StringBuilder sb2 = new StringBuilder(str2.length() + 3 + String.valueOf(str).length());
            sb2.append(str2);
            sb2.append("://");
            sb2.append(str);
            return sb2.toString();
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }
}

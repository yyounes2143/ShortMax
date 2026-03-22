package com.amazonaws.util;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class HttpUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6406a = Pattern.compile(Pattern.quote("+") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote(ProxyConfig.MATCH_ALL_SCHEMES) + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%7E") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%2F"));

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f6407b;

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Pattern.quote("%2A"));
        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        sb2.append(Pattern.quote("%2B"));
        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        f6407b = Pattern.compile(sb2.toString());
    }

    public static String a(String str, String str2) {
        return b(str, str2, false);
    }

    public static String b(String str, String str2, boolean z10) {
        if (str2 != null && str2.length() > 0) {
            if (str2.startsWith(DomExceptionUtils.SEPARATOR)) {
                if (str.endsWith(DomExceptionUtils.SEPARATOR)) {
                    str = str.substring(0, str.length() - 1);
                }
            } else if (!str.endsWith(DomExceptionUtils.SEPARATOR)) {
                str = str + DomExceptionUtils.SEPARATOR;
            }
            String f10 = f(str2, true);
            if (z10) {
                f10 = f10.replace("//", "/%2F");
            }
            return str + f10;
        } else if (!str.endsWith(DomExceptionUtils.SEPARATOR)) {
            return str + DomExceptionUtils.SEPARATOR;
        } else {
            return str;
        }
    }

    public static String c(String str, String str2) {
        if (str2 != null) {
            return str + str2;
        }
        return str;
    }

    public static String d(Request<?> request) {
        String encode;
        if (request.getParameters().isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            boolean z10 = true;
            for (Map.Entry<String, String> entry : request.getParameters().entrySet()) {
                String encode2 = URLEncoder.encode(entry.getKey(), "UTF-8");
                String value = entry.getValue();
                if (value == null) {
                    encode = "";
                } else {
                    encode = URLEncoder.encode(value, "UTF-8");
                }
                if (!z10) {
                    sb2.append(ContainerUtils.FIELD_DELIMITER);
                } else {
                    z10 = false;
                }
                sb2.append(encode2);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(encode);
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static boolean e(URI uri) {
        String b10 = StringUtils.b(uri.getScheme());
        int port = uri.getPort();
        if (port <= 0) {
            return false;
        }
        if (ProxyConfig.MATCH_HTTP.equals(b10) && port == 80) {
            return false;
        }
        if ("https".equals(b10) && port == 443) {
            return false;
        }
        return true;
    }

    public static String f(String str, boolean z10) {
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = f6406a.matcher(encode);
            StringBuffer stringBuffer = new StringBuffer(encode.length());
            while (matcher.find()) {
                String group = matcher.group(0);
                if ("+".equals(group)) {
                    group = "%20";
                } else if (ProxyConfig.MATCH_ALL_SCHEMES.equals(group)) {
                    group = "%2A";
                } else if ("%7E".equals(group)) {
                    group = "~";
                } else if (z10 && "%2F".equals(group)) {
                    group = DomExceptionUtils.SEPARATOR;
                }
                matcher.appendReplacement(stringBuffer, group);
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static boolean g(Request<?> request) {
        boolean z10;
        boolean equals = HttpMethodName.POST.equals(request.j());
        if (request.getContent() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!equals || !z10) {
            return false;
        }
        return true;
    }
}

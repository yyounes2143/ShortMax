package com.amazonaws.services.s3.internal;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class S3HttpUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f5937a = Pattern.compile(Pattern.quote("+") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote(ProxyConfig.MATCH_ALL_SCHEMES) + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%7E") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%2F") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%3A") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%27") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%28") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%29") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%21") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%5B") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%5D") + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + Pattern.quote("%24"));

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String b(String str, boolean z10) {
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = f5937a.matcher(encode);
            StringBuffer stringBuffer = new StringBuffer(encode.length());
            while (matcher.find()) {
                String group = matcher.group(0);
                if ("+".equals(group)) {
                    group = " ";
                } else if (ProxyConfig.MATCH_ALL_SCHEMES.equals(group)) {
                    group = "%2A";
                } else if ("%7E".equals(group)) {
                    group = "~";
                } else if (z10 && "%2F".equals(group)) {
                    group = DomExceptionUtils.SEPARATOR;
                } else if (z10 && "%3A".equals(group)) {
                    group = ":";
                } else if (z10 && "%27".equals(group)) {
                    group = "'";
                } else if (z10 && "%28".equals(group)) {
                    group = "(";
                } else if (z10 && "%29".equals(group)) {
                    group = ")";
                } else if (z10 && "%21".equals(group)) {
                    group = "!";
                } else if (z10 && "%5B".equals(group)) {
                    group = "[";
                } else if (z10 && "%5D".equals(group)) {
                    group = "]";
                }
                matcher.appendReplacement(stringBuffer, group);
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }
}

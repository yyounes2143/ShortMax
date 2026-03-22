package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class AwsHostNameUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6399a = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");

    public static String a(String str, String str2) {
        if (str != null) {
            String b10 = b(str);
            if (b10 != null) {
                return b10;
            }
            if (str.endsWith(".amazonaws.com")) {
                return d(str.substring(0, str.length() - 14));
            }
            if (str.endsWith(".amazonaws.com.cn")) {
                return d(str.substring(0, str.length() - 17));
            }
            if (str2 != null) {
                Matcher matcher = Pattern.compile("^(?:.+\\.)?" + Pattern.quote(str2) + "[.-]([a-z0-9-]+)\\.").matcher(str);
                if (matcher.find()) {
                    return matcher.group(1);
                }
                return "us-east-1";
            }
            return "us-east-1";
        }
        throw new IllegalArgumentException("hostname cannot be null");
    }

    private static String b(String str) {
        for (HostRegexToRegionMapping hostRegexToRegionMapping : InternalConfig.Factory.a().g()) {
            if (str.matches(hostRegexToRegionMapping.a())) {
                return hostRegexToRegionMapping.b();
            }
        }
        return null;
    }

    @Deprecated
    public static String c(URI uri) {
        String host = uri.getHost();
        if (host.endsWith(".amazonaws.com")) {
            String substring = host.substring(0, host.indexOf(".amazonaws.com"));
            if (!substring.endsWith(".s3") && !f6399a.matcher(substring).matches()) {
                if (substring.indexOf(46) == -1) {
                    return substring;
                }
                return substring.substring(0, substring.indexOf(46));
            }
            return "s3";
        }
        throw new IllegalArgumentException("Cannot parse a service name from an unrecognized endpoint (" + host + ").");
    }

    private static String d(String str) {
        Matcher matcher = f6399a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return "us-east-1";
        }
        String substring = str.substring(lastIndexOf + 1);
        if (substring.equals("vpce")) {
            String[] split = str.split("\\.");
            if (split.length < 2) {
                return "us-east-1";
            }
            substring = split[split.length - 2];
        }
        if ("us-gov".equals(substring)) {
            return "us-gov-west-1";
        }
        return substring;
    }
}

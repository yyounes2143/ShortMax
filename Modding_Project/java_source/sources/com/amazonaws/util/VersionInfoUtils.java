package com.amazonaws.util;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes2.dex */
public class VersionInfoUtils {

    /* renamed from: a  reason: collision with root package name */
    private static volatile String f6431a = "2.22.6";

    /* renamed from: b  reason: collision with root package name */
    private static volatile String f6432b = "android";

    /* renamed from: c  reason: collision with root package name */
    private static volatile String f6433c;

    /* renamed from: d  reason: collision with root package name */
    private static final Log f6434d = LogFactory.b(VersionInfoUtils.class);

    public static String a() {
        return f6432b;
    }

    public static String b() {
        if (f6433c == null) {
            synchronized (VersionInfoUtils.class) {
                try {
                    if (f6433c == null) {
                        d();
                    }
                } finally {
                }
            }
        }
        return f6433c;
    }

    public static String c() {
        return f6431a;
    }

    private static void d() {
        f6433c = f();
    }

    private static String e(String str) {
        if (str != null) {
            return str.replace(' ', '_');
        }
        return str;
    }

    static String f() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("aws-sdk-");
        sb2.append(StringUtils.b(a()));
        sb2.append(DomExceptionUtils.SEPARATOR);
        sb2.append(c());
        sb2.append(" ");
        sb2.append(e(System.getProperty("os.name")));
        sb2.append(DomExceptionUtils.SEPARATOR);
        sb2.append(e(System.getProperty("os.version")));
        sb2.append(" ");
        sb2.append(e(System.getProperty("java.vm.name")));
        sb2.append(DomExceptionUtils.SEPARATOR);
        sb2.append(e(System.getProperty("java.vm.version")));
        sb2.append(DomExceptionUtils.SEPARATOR);
        sb2.append(e(System.getProperty("java.version")));
        String property = System.getProperty("user.language");
        String property2 = System.getProperty("user.region");
        if (property != null && property2 != null) {
            sb2.append(" ");
            sb2.append(e(property));
            sb2.append("_");
            sb2.append(e(property2));
        }
        return sb2.toString();
    }
}

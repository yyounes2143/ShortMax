package com.mbridge.msdk.thrid.okhttp.internal.tls;

import androidx.webkit.ProxyConfig;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* compiled from: OkHostnameVerifier.java */
/* loaded from: classes6.dex */
public final class d implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final d f29958a = new d();

    private d() {
    }

    private boolean b(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        for (String str2 : a(x509Certificate, 2)) {
            if (a(lowerCase, str2)) {
                return true;
            }
        }
        return false;
    }

    private boolean c(String str, X509Certificate x509Certificate) {
        List<String> a10 = a(x509Certificate, 7);
        int size = a10.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (str.equalsIgnoreCase(a10.get(i10))) {
                return true;
            }
        }
        return false;
    }

    public boolean a(String str, X509Certificate x509Certificate) {
        if (com.mbridge.msdk.thrid.okhttp.internal.c.d(str)) {
            return c(str, x509Certificate);
        }
        return b(str, x509Certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }

    public static List<String> a(X509Certificate x509Certificate) {
        List<String> a10 = a(x509Certificate, 7);
        List<String> a11 = a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(a10.size() + a11.size());
        arrayList.addAll(a10);
        arrayList.addAll(a11);
        return arrayList;
    }

    private static List<String> a(X509Certificate x509Certificate, int i10) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i10 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    public boolean a(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith("..")) {
            if (!str.endsWith(".")) {
                str = str + '.';
            }
            if (!str2.endsWith(".")) {
                str2 = str2 + '.';
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String substring = lowerCase.substring(1);
            if (str.endsWith(substring)) {
                int length = str.length() - substring.length();
                return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
            }
            return false;
        }
        return false;
    }
}

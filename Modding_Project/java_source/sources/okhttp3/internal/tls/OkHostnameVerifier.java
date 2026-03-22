package okhttp3.internal.tls;

import androidx.webkit.ProxyConfig;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
/* compiled from: OkHostnameVerifier.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkHostnameVerifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHostnameVerifier.kt\nokhttp3/internal/tls/OkHostnameVerifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1747#2,3:209\n1747#2,3:212\n*S KotlinDebug\n*F\n+ 1 OkHostnameVerifier.kt\nokhttp3/internal/tls/OkHostnameVerifier\n*L\n63#1:209,3\n71#1:212,3\n*E\n"})
/* loaded from: classes8.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final OkHostnameVerifier f64173a = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final String b(String str) {
        if (d(str)) {
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
        return str;
    }

    private final List<String> c(X509Certificate x509Certificate, int i10) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return CollectionsKt.n();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && Intrinsics.areEqual(list.get(0), Integer.valueOf(i10)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return CollectionsKt.n();
        }
    }

    private final boolean d(String str) {
        if (str.length() != ((int) Utf8.size$default(str, 0, 0, 3, null))) {
            return false;
        }
        return true;
    }

    private final boolean f(String str, String str2) {
        if (str != null && str.length() != 0 && !StringsKt.V(str, ".", false, 2, null) && !StringsKt.F(str, "..", false, 2, null) && str2 != null && str2.length() != 0 && !StringsKt.V(str2, ".", false, 2, null) && !StringsKt.F(str2, "..", false, 2, null)) {
            if (!StringsKt.F(str, ".", false, 2, null)) {
                str = str + '.';
            }
            String str3 = str;
            if (!StringsKt.F(str2, ".", false, 2, null)) {
                str2 = str2 + '.';
            }
            String b10 = b(str2);
            if (!StringsKt.b0(b10, ProxyConfig.MATCH_ALL_SCHEMES, false, 2, null)) {
                return Intrinsics.areEqual(str3, b10);
            }
            if (!StringsKt.V(b10, "*.", false, 2, null) || StringsKt.p0(b10, '*', 1, false, 4, null) != -1 || str3.length() < b10.length() || Intrinsics.areEqual("*.", b10)) {
                return false;
            }
            String substring = b10.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            if (!StringsKt.F(str3, substring, false, 2, null)) {
                return false;
            }
            int length = str3.length() - substring.length();
            if (length > 0 && StringsKt.x0(str3, '.', length - 1, false, 4, null) != -1) {
                return false;
            }
            return true;
        }
        return false;
    }

    private final boolean g(String str, X509Certificate x509Certificate) {
        String b10 = b(str);
        List<String> c10 = c(x509Certificate, 2);
        if ((c10 instanceof Collection) && c10.isEmpty()) {
            return false;
        }
        for (String str2 : c10) {
            if (f64173a.f(b10, str2)) {
                return true;
            }
        }
        return false;
    }

    private final boolean h(String str, X509Certificate x509Certificate) {
        String e10 = HostnamesKt.e(str);
        List<String> c10 = c(x509Certificate, 7);
        if ((c10 instanceof Collection) && c10.isEmpty()) {
            return false;
        }
        for (String str2 : c10) {
            if (Intrinsics.areEqual(e10, HostnamesKt.e(str2))) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<String> a(@NotNull X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        return CollectionsKt.K0(c(certificate, 7), c(certificate, 2));
    }

    public final boolean e(@NotNull String host, @NotNull X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        if (Util.i(host)) {
            return h(host, certificate);
        }
        return g(host, certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(@NotNull String host, @NotNull SSLSession session) {
        Certificate certificate;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(session, "session");
        if (d(host)) {
            try {
                certificate = session.getPeerCertificates()[0];
                Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            } catch (SSLException unused) {
                return false;
            }
        }
        return e(host, (X509Certificate) certificate);
    }
}

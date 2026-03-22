package com.mbridge.msdk.thrid.okhttp;

import androidx.webkit.ProxyConfig;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.inmobi.commons.core.configs.AdConfig;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: HttpUrl.java */
/* loaded from: classes6.dex */
public final class q {

    /* renamed from: j  reason: collision with root package name */
    private static final char[] f29989j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a  reason: collision with root package name */
    final String f29990a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29991b;

    /* renamed from: c  reason: collision with root package name */
    private final String f29992c;

    /* renamed from: d  reason: collision with root package name */
    final String f29993d;

    /* renamed from: e  reason: collision with root package name */
    final int f29994e;

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f29995f;

    /* renamed from: g  reason: collision with root package name */
    private final List<String> f29996g;

    /* renamed from: h  reason: collision with root package name */
    private final String f29997h;

    /* renamed from: i  reason: collision with root package name */
    private final String f29998i;

    /* compiled from: HttpUrl.java */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f29999a;

        /* renamed from: d  reason: collision with root package name */
        String f30002d;

        /* renamed from: f  reason: collision with root package name */
        final List<String> f30004f;

        /* renamed from: g  reason: collision with root package name */
        List<String> f30005g;

        /* renamed from: h  reason: collision with root package name */
        String f30006h;

        /* renamed from: b  reason: collision with root package name */
        String f30000b = "";

        /* renamed from: c  reason: collision with root package name */
        String f30001c = "";

        /* renamed from: e  reason: collision with root package name */
        int f30003e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f30004f = arrayList;
            arrayList.add("");
        }

        private boolean c(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private static int f(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        public a a(int i10) {
            if (i10 > 0 && i10 <= 65535) {
                this.f30003e = i10;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i10);
        }

        public a b(String str) {
            if (str != null) {
                String a10 = a(str, 0, str.length());
                if (a10 != null) {
                    this.f30002d = a10;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new NullPointerException("host == null");
        }

        a d() {
            int size = this.f30004f.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f30004f.set(i10, q.a(this.f30004f.get(i10), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            List<String> list = this.f30005g;
            if (list != null) {
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str = this.f30005g.get(i11);
                    if (str != null) {
                        this.f30005g.set(i11, q.a(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.f30006h;
            if (str2 != null) {
                this.f30006h = q.a(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public a e(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase(ProxyConfig.MATCH_HTTP)) {
                    this.f29999a = ProxyConfig.MATCH_HTTP;
                } else if (str.equalsIgnoreCase("https")) {
                    this.f29999a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.f29999a;
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            } else {
                sb2.append("//");
            }
            if (!this.f30000b.isEmpty() || !this.f30001c.isEmpty()) {
                sb2.append(this.f30000b);
                if (!this.f30001c.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.f30001c);
                }
                sb2.append('@');
            }
            String str2 = this.f30002d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb2.append('[');
                    sb2.append(this.f30002d);
                    sb2.append(']');
                } else {
                    sb2.append(this.f30002d);
                }
            }
            if (this.f30003e != -1 || this.f29999a != null) {
                int b10 = b();
                String str3 = this.f29999a;
                if (str3 == null || b10 != q.a(str3)) {
                    sb2.append(':');
                    sb2.append(b10);
                }
            }
            q.b(sb2, this.f30004f);
            if (this.f30005g != null) {
                sb2.append('?');
                q.a(sb2, this.f30005g);
            }
            if (this.f30006h != null) {
                sb2.append('#');
                sb2.append(this.f30006h);
            }
            return sb2.toString();
        }

        private void c() {
            List<String> list = this.f30004f;
            if (list.remove(list.size() - 1).isEmpty() && !this.f30004f.isEmpty()) {
                List<String> list2 = this.f30004f;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.f30004f.add("");
        }

        public a a(String str) {
            this.f30005g = str != null ? q.d(q.a(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public q a() {
            if (this.f29999a != null) {
                if (this.f30002d != null) {
                    return new q(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        int b() {
            int i10 = this.f30003e;
            return i10 != -1 ? i10 : q.a(this.f29999a);
        }

        private static int b(String str, int i10, int i11) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(q.a(str, i10, i11, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        private static int c(String str, int i10, int i11) {
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt == ':') {
                    return i10;
                }
                if (charAt == '[') {
                    do {
                        i10++;
                        if (i10 < i11) {
                        }
                    } while (str.charAt(i10) != ']');
                }
                i10++;
            }
            return i11;
        }

        private static int e(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char charAt = str.charAt(i10);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char charAt2 = str.charAt(i10);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        a a(q qVar, String str) {
            int e10;
            int a10;
            int i10;
            int b10 = com.mbridge.msdk.thrid.okhttp.internal.c.b(str, 0, str.length());
            int c10 = com.mbridge.msdk.thrid.okhttp.internal.c.c(str, b10, str.length());
            if (e(str, b10, c10) != -1) {
                if (str.regionMatches(true, b10, "https:", 0, 6)) {
                    this.f29999a = "https";
                    b10 += 6;
                } else if (str.regionMatches(true, b10, "http:", 0, 5)) {
                    this.f29999a = ProxyConfig.MATCH_HTTP;
                    b10 += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, e10) + "'");
                }
            } else if (qVar != null) {
                this.f29999a = qVar.f29990a;
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int f10 = f(str, b10, c10);
            char c11 = '?';
            char c12 = '#';
            if (f10 < 2 && qVar != null && qVar.f29990a.equals(this.f29999a)) {
                this.f30000b = qVar.f();
                this.f30001c = qVar.b();
                this.f30002d = qVar.f29993d;
                this.f30003e = qVar.f29994e;
                this.f30004f.clear();
                this.f30004f.addAll(qVar.d());
                if (b10 == c10 || str.charAt(b10) == '#') {
                    a(qVar.e());
                }
            } else {
                boolean z10 = false;
                boolean z11 = false;
                int i11 = b10 + f10;
                while (true) {
                    a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i11, c10, "@/\\?#");
                    char charAt = a10 != c10 ? str.charAt(a10) : (char) 65535;
                    if (charAt == 65535 || charAt == c12 || charAt == '/' || charAt == '\\' || charAt == c11) {
                        break;
                    } else if (charAt == '@') {
                        if (!z10) {
                            int a11 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i11, a10, ':');
                            i10 = a10;
                            String a12 = q.a(str, i11, a11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                a12 = this.f30000b + "%40" + a12;
                            }
                            this.f30000b = a12;
                            if (a11 != i10) {
                                this.f30001c = q.a(str, a11 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i10 = a10;
                            this.f30001c += "%40" + q.a(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i11 = i10 + 1;
                        c11 = '?';
                        c12 = '#';
                    }
                }
                int c13 = c(str, i11, a10);
                int i12 = c13 + 1;
                if (i12 < a10) {
                    this.f30002d = a(str, i11, c13);
                    int b11 = b(str, i12, a10);
                    this.f30003e = b11;
                    if (b11 == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i12, a10) + '\"');
                    }
                } else {
                    this.f30002d = a(str, i11, c13);
                    this.f30003e = q.a(this.f29999a);
                }
                if (this.f30002d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i11, c13) + '\"');
                }
                b10 = a10;
            }
            int a13 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, b10, c10, "?#");
            d(str, b10, a13);
            if (a13 < c10 && str.charAt(a13) == '?') {
                int a14 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, a13, c10, '#');
                this.f30005g = q.d(q.a(str, a13 + 1, a14, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                a13 = a14;
            }
            if (a13 < c10 && str.charAt(a13) == '#') {
                this.f30006h = q.a(str, 1 + a13, c10, "", true, false, false, false, null);
            }
            return this;
        }

        private void d(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char charAt = str.charAt(i10);
            if (charAt != '/' && charAt != '\\') {
                List<String> list = this.f30004f;
                list.set(list.size() - 1, "");
            } else {
                this.f30004f.clear();
                this.f30004f.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i12, i11, "/\\");
                    boolean z10 = i10 < i11;
                    a(str, i12, i10, z10, true);
                    if (z10) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        private boolean d(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void a(String str, int i10, int i11, boolean z10, boolean z11) {
            String a10 = q.a(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (c(a10)) {
                return;
            }
            if (d(a10)) {
                c();
                return;
            }
            List<String> list = this.f30004f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f30004f;
                list2.set(list2.size() - 1, a10);
            } else {
                this.f30004f.add(a10);
            }
            if (z10) {
                this.f30004f.add("");
            }
        }

        private static String a(String str, int i10, int i11) {
            return com.mbridge.msdk.thrid.okhttp.internal.c.a(q.a(str, i10, i11, false));
        }
    }

    q(a aVar) {
        List<String> list;
        this.f29990a = aVar.f29999a;
        this.f29991b = a(aVar.f30000b, false);
        this.f29992c = a(aVar.f30001c, false);
        this.f29993d = aVar.f30002d;
        this.f29994e = aVar.b();
        this.f29995f = a(aVar.f30004f, false);
        List<String> list2 = aVar.f30005g;
        if (list2 != null) {
            list = a(list2, true);
        } else {
            list = null;
        }
        this.f29996g = list;
        String str = aVar.f30006h;
        this.f29997h = str != null ? a(str, false) : null;
        this.f29998i = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals(ProxyConfig.MATCH_HTTP)) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public String b() {
        if (this.f29992c.isEmpty()) {
            return "";
        }
        int indexOf = this.f29998i.indexOf(64);
        return this.f29998i.substring(this.f29998i.indexOf(58, this.f29990a.length() + 3) + 1, indexOf);
    }

    public String c() {
        int indexOf = this.f29998i.indexOf(47, this.f29990a.length() + 3);
        String str = this.f29998i;
        return this.f29998i.substring(indexOf, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, indexOf, str.length(), "?#"));
    }

    public List<String> d() {
        int indexOf = this.f29998i.indexOf(47, this.f29990a.length() + 3);
        String str = this.f29998i;
        int a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < a10) {
            int i10 = indexOf + 1;
            int a11 = com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29998i, i10, a10, '/');
            arrayList.add(this.f29998i.substring(i10, a11));
            indexOf = a11;
        }
        return arrayList;
    }

    public String e() {
        if (this.f29996g == null) {
            return null;
        }
        int indexOf = this.f29998i.indexOf(63) + 1;
        String str = this.f29998i;
        return this.f29998i.substring(indexOf, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, indexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        if ((obj instanceof q) && ((q) obj).f29998i.equals(this.f29998i)) {
            return true;
        }
        return false;
    }

    public String f() {
        if (this.f29991b.isEmpty()) {
            return "";
        }
        int length = this.f29990a.length() + 3;
        String str = this.f29998i;
        return this.f29998i.substring(length, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, length, str.length(), ":@"));
    }

    public String g() {
        return this.f29993d;
    }

    public boolean h() {
        return this.f29990a.equals("https");
    }

    public int hashCode() {
        return this.f29998i.hashCode();
    }

    public a i() {
        int i10;
        a aVar = new a();
        aVar.f29999a = this.f29990a;
        aVar.f30000b = f();
        aVar.f30001c = b();
        aVar.f30002d = this.f29993d;
        if (this.f29994e != a(this.f29990a)) {
            i10 = this.f29994e;
        } else {
            i10 = -1;
        }
        aVar.f30003e = i10;
        aVar.f30004f.clear();
        aVar.f30004f.addAll(d());
        aVar.a(e());
        aVar.f30006h = a();
        return aVar;
    }

    public int j() {
        return this.f29994e;
    }

    public String k() {
        if (this.f29996g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        a(sb2, this.f29996g);
        return sb2.toString();
    }

    public String l() {
        return this.f29990a;
    }

    public URI m() {
        String aVar = i().d().toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e10) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public String toString() {
        return this.f29998i;
    }

    static void a(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public a c(String str) {
        try {
            return new a().a(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static void b(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public q e(String str) {
        a c10 = c(str);
        if (c10 != null) {
            return c10.a();
        }
        return null;
    }

    static List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int indexOf = str.indexOf(38, i10);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i10);
            if (indexOf2 != -1 && indexOf2 <= indexOf) {
                arrayList.add(str.substring(i10, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            } else {
                arrayList.add(str.substring(i10, indexOf));
                arrayList.add(null);
            }
            i10 = indexOf + 1;
        }
        return arrayList;
    }

    public static q b(String str) {
        return new a().a(null, str).a();
    }

    public String a() {
        if (this.f29997h == null) {
            return null;
        }
        return this.f29998i.substring(this.f29998i.indexOf(35) + 1);
    }

    static String a(String str, boolean z10) {
        return a(str, 0, str.length(), z10);
    }

    private List<String> a(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? a(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String a(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char charAt = str.charAt(i12);
            if (charAt == '%' || (charAt == '+' && z10)) {
                com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
                cVar.a(str, i10, i12);
                a(cVar, str, i12, i11, z10);
                return cVar.p();
            }
        }
        return str.substring(i10, i11);
    }

    static void a(com.mbridge.msdk.thrid.okio.c cVar, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (codePointAt == 37 && (i12 = i10 + 2) < i11) {
                int a10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i10 + 1));
                int a11 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i12));
                if (a10 != -1 && a11 != -1) {
                    cVar.writeByte((a10 << 4) + a11);
                    i10 = i12;
                }
                cVar.f(codePointAt);
            } else {
                if (codePointAt == 43 && z10) {
                    cVar.writeByte(32);
                }
                cVar.f(codePointAt);
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    static boolean a(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i10 + 1)) != -1 && com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i12)) != -1;
    }

    static String a(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int i12 = i10;
        while (i12 < i11) {
            int codePointAt = str.codePointAt(i12);
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || !z13)) {
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z10 && (!z11 || a(str, i12, i11)))) && (codePointAt != 43 || !z12))) {
                    i12 += Character.charCount(codePointAt);
                }
            }
            com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
            cVar.a(str, i10, i12);
            a(cVar, str, i12, i11, str2, z10, z11, z12, z13, charset);
            return cVar.p();
        }
        return str.substring(i10, i11);
    }

    static void a(com.mbridge.msdk.thrid.okio.c cVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.mbridge.msdk.thrid.okio.c cVar2 = null;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (!z10 || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z12) {
                    cVar.a(z10 ? "+" : "%2B");
                } else if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z13) && str2.indexOf(codePointAt) == -1 && (codePointAt != 37 || (z10 && (!z11 || a(str, i10, i11)))))) {
                    cVar.f(codePointAt);
                } else {
                    if (cVar2 == null) {
                        cVar2 = new com.mbridge.msdk.thrid.okio.c();
                    }
                    if (charset != null && !charset.equals(com.mbridge.msdk.thrid.okhttp.internal.c.f29610j)) {
                        cVar2.a(str, i10, Character.charCount(codePointAt) + i10, charset);
                    } else {
                        cVar2.f(codePointAt);
                    }
                    while (!cVar2.f()) {
                        byte readByte = cVar2.readByte();
                        int i12 = readByte & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                        cVar.writeByte(37);
                        char[] cArr = f29989j;
                        cVar.writeByte((int) cArr[(i12 >> 4) & 15]);
                        cVar.writeByte((int) cArr[readByte & 15]);
                    }
                }
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    static String a(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }
}

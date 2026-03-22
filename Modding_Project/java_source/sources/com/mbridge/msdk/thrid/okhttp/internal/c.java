package com.mbridge.msdk.thrid.okhttp.internal;

import androidx.collection.SieveCacheKt;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.f;
import com.mbridge.msdk.thrid.okio.s;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* compiled from: Util.java */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f29601a;

    /* renamed from: c  reason: collision with root package name */
    public static final z f29603c;

    /* renamed from: d  reason: collision with root package name */
    public static final x f29604d;

    /* renamed from: r  reason: collision with root package name */
    private static final Method f29618r;

    /* renamed from: s  reason: collision with root package name */
    private static final Pattern f29619s;

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f29602b = new String[0];

    /* renamed from: e  reason: collision with root package name */
    private static final f f29605e = f.a("efbbbf");

    /* renamed from: f  reason: collision with root package name */
    private static final f f29606f = f.a("feff");

    /* renamed from: g  reason: collision with root package name */
    private static final f f29607g = f.a("fffe");

    /* renamed from: h  reason: collision with root package name */
    private static final f f29608h = f.a("0000ffff");

    /* renamed from: i  reason: collision with root package name */
    private static final f f29609i = f.a("ffff0000");

    /* renamed from: j  reason: collision with root package name */
    public static final Charset f29610j = Charset.forName("UTF-8");

    /* renamed from: k  reason: collision with root package name */
    public static final Charset f29611k = Charset.forName("ISO-8859-1");

    /* renamed from: l  reason: collision with root package name */
    private static final Charset f29612l = Charset.forName("UTF-16BE");

    /* renamed from: m  reason: collision with root package name */
    private static final Charset f29613m = Charset.forName("UTF-16LE");

    /* renamed from: n  reason: collision with root package name */
    private static final Charset f29614n = Charset.forName("UTF-32BE");

    /* renamed from: o  reason: collision with root package name */
    private static final Charset f29615o = Charset.forName("UTF-32LE");

    /* renamed from: p  reason: collision with root package name */
    public static final TimeZone f29616p = TimeZone.getTimeZone("GMT");

    /* renamed from: q  reason: collision with root package name */
    public static final Comparator<String> f29617q = new a();

    /* compiled from: Util.java */
    /* loaded from: classes6.dex */
    static class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Util.java */
    /* loaded from: classes6.dex */
    public static class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f29620a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f29621b;

        b(String str, boolean z10) {
            this.f29620a = str;
            this.f29621b = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f29620a);
            thread.setDaemon(this.f29621b);
            return thread;
        }
    }

    static {
        byte[] bArr = new byte[0];
        f29601a = bArr;
        Method method = null;
        f29603c = z.a(null, bArr);
        f29604d = x.a(null, bArr);
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        f29618r = method;
        f29619s = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    public static int a(char c10) {
        if (c10 < '0' || c10 > '9') {
            if (c10 < 'a' || c10 > 'f') {
                if (c10 < 'A' || c10 > 'F') {
                    return -1;
                }
                return c10 - '7';
            }
            return c10 - 'W';
        }
        return c10 - '0';
    }

    public static boolean b(s sVar, int i10, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long c10 = sVar.b().d() ? sVar.b().c() - nanoTime : Long.MAX_VALUE;
        sVar.b().a(Math.min(c10, timeUnit.toNanos(i10)) + nanoTime);
        try {
            com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
            while (sVar.b(cVar, 8192L) != -1) {
                cVar.k();
            }
            if (c10 == Long.MAX_VALUE) {
                sVar.b().a();
                return true;
            }
            sVar.b().a(nanoTime + c10);
            return true;
        } catch (InterruptedIOException unused) {
            if (c10 == Long.MAX_VALUE) {
                sVar.b().a();
                return false;
            }
            sVar.b().a(nanoTime + c10);
            return false;
        } catch (Throwable th2) {
            if (c10 == Long.MAX_VALUE) {
                sVar.b().a();
            } else {
                sVar.b().a(nanoTime + c10);
            }
            throw th2;
        }
    }

    public static int c(String str, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            char charAt = str.charAt(i12);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i12 + 1;
            }
        }
        return i10;
    }

    public static String d(String str, int i10, int i11) {
        int b10 = b(str, i10, i11);
        return str.substring(b10, c(str, b10, i11));
    }

    public static void a(Throwable th2, Throwable th3) {
        Method method = f29618r;
        if (method != null) {
            try {
                method.invoke(th2, th3);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static int c(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt <= 31 || charAt >= 127) {
                return i10;
            }
        }
        return -1;
    }

    public static void a(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean d(String str) {
        return f29619s.matcher(str).matches();
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e10) {
                if (!a(e10)) {
                    throw e10;
                }
            } catch (RuntimeException e11) {
                if (!"bio == null".equals(e11.getMessage())) {
                    throw e11;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(s sVar, int i10, TimeUnit timeUnit) {
        try {
            return b(sVar, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <K, V> Map<K, V> a(Map<K, V> map) {
        if (map.isEmpty()) {
            return Collections.emptyMap();
        }
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static boolean b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory a(String str, boolean z10) {
        return new b(str, z10);
    }

    public static String[] a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (comparator.compare(str, strArr2[i10]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i10++;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static int b(String str, int i10, int i11) {
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    private static boolean b(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static p b(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        p.a aVar = new p.a();
        for (com.mbridge.msdk.thrid.okhttp.internal.http2.c cVar : list) {
            com.mbridge.msdk.thrid.okhttp.internal.a.f29599a.a(aVar, cVar.f29759a.h(), cVar.f29760b.h());
        }
        return aVar.a();
    }

    public static String a(q qVar, boolean z10) {
        String g10;
        if (qVar.g().contains(":")) {
            g10 = "[" + qVar.g() + "]";
        } else {
            g10 = qVar.g();
        }
        if (z10 || qVar.j() != q.a(qVar.l())) {
            return g10 + ":" + qVar.j();
        }
        return g10;
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static int a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], str) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static String[] a(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static int a(String str, int i10, int i11, String str2) {
        while (i10 < i11) {
            if (str2.indexOf(str.charAt(i10)) != -1) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int a(String str, int i10, int i11, char c10) {
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static String a(String str) {
        InetAddress a10;
        if (str.contains(":")) {
            if (str.startsWith("[") && str.endsWith("]")) {
                a10 = a(str, 1, str.length() - 1);
            } else {
                a10 = a(str, 0, str.length());
            }
            if (a10 == null) {
                return null;
            }
            byte[] address = a10.getAddress();
            if (address.length == 16) {
                return a(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (b(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static int a(String str, long j10, TimeUnit timeUnit) {
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 < 0) {
            throw new IllegalArgumentException(str + " < 0");
        } else if (timeUnit != null) {
            long millis = timeUnit.toMillis(j10);
            if (millis > SieveCacheKt.NodeLinkMask) {
                throw new IllegalArgumentException(str + " too large.");
            } else if (millis != 0 || i10 <= 0) {
                return (int) millis;
            } else {
                throw new IllegalArgumentException(str + " too small.");
            }
        } else {
            throw new NullPointerException("unit == null");
        }
    }

    public static AssertionError a(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0078, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress a(java.lang.String r12, int r13, int r14) {
        /*
            r0 = 16
            byte[] r1 = new byte[r0]
            r2 = 0
            r3 = -1
            r4 = r2
            r5 = r3
            r6 = r5
        L9:
            r7 = 0
            if (r13 >= r14) goto L79
            if (r4 != r0) goto Lf
            return r7
        Lf:
            int r8 = r13 + 2
            r9 = 2
            if (r8 > r14) goto L27
            java.lang.String r10 = "::"
            boolean r10 = r12.regionMatches(r13, r10, r2, r9)
            if (r10 == 0) goto L27
            if (r5 == r3) goto L1f
            return r7
        L1f:
            int r4 = r4 + 2
            r5 = r4
            if (r8 != r14) goto L25
            goto L79
        L25:
            r6 = r8
            goto L4b
        L27:
            if (r4 == 0) goto L34
            java.lang.String r8 = ":"
            r10 = 1
            boolean r8 = r12.regionMatches(r13, r8, r2, r10)
            if (r8 == 0) goto L36
            int r13 = r13 + 1
        L34:
            r6 = r13
            goto L4b
        L36:
            java.lang.String r8 = "."
            boolean r13 = r12.regionMatches(r13, r8, r2, r10)
            if (r13 == 0) goto L4a
            int r13 = r4 + (-2)
            boolean r12 = a(r12, r6, r14, r1, r13)
            if (r12 != 0) goto L47
            return r7
        L47:
            int r4 = r4 + 2
            goto L79
        L4a:
            return r7
        L4b:
            r8 = r2
            r13 = r6
        L4d:
            if (r13 >= r14) goto L60
            char r10 = r12.charAt(r13)
            int r10 = a(r10)
            if (r10 != r3) goto L5a
            goto L60
        L5a:
            int r8 = r8 << 4
            int r8 = r8 + r10
            int r13 = r13 + 1
            goto L4d
        L60:
            int r10 = r13 - r6
            if (r10 == 0) goto L78
            r11 = 4
            if (r10 <= r11) goto L68
            goto L78
        L68:
            int r7 = r4 + 1
            int r10 = r8 >>> 8
            r10 = r10 & 255(0xff, float:3.57E-43)
            byte r10 = (byte) r10
            r1[r4] = r10
            int r4 = r4 + r9
            r8 = r8 & 255(0xff, float:3.57E-43)
            byte r8 = (byte) r8
            r1[r7] = r8
            goto L9
        L78:
            return r7
        L79:
            if (r4 == r0) goto L8a
            if (r5 != r3) goto L7e
            return r7
        L7e:
            int r12 = r4 - r5
            int r13 = 16 - r12
            java.lang.System.arraycopy(r1, r5, r1, r13, r12)
            int r0 = r0 - r4
            int r0 = r0 + r5
            java.util.Arrays.fill(r1, r5, r0, r2)
        L8a:
            java.net.InetAddress r12 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L8f
            return r12
        L8f:
            java.lang.AssertionError r12 = new java.lang.AssertionError
            r12.<init>()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.thrid.okhttp.internal.c.a(java.lang.String, int, int):java.net.InetAddress");
    }

    private static boolean a(String str, int i10, int i11, byte[] bArr, int i12) {
        int i13 = i12;
        while (i10 < i11) {
            if (i13 == bArr.length) {
                return false;
            }
            if (i13 != i12) {
                if (str.charAt(i10) != '.') {
                    return false;
                }
                i10++;
            }
            int i14 = i10;
            int i15 = 0;
            while (i14 < i11) {
                char charAt = str.charAt(i14);
                if (charAt < '0' || charAt > '9') {
                    break;
                } else if ((i15 == 0 && i10 != i14) || (i15 = ((i15 * 10) + charAt) - 48) > 255) {
                    return false;
                } else {
                    i14++;
                }
            }
            if (i14 - i10 == 0) {
                return false;
            }
            bArr[i13] = (byte) i15;
            i13++;
            i10 = i14;
        }
        return i13 == i12 + 4;
    }

    private static String a(byte[] bArr) {
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < bArr.length) {
            int i14 = i12;
            while (i14 < 16 && bArr[i14] == 0 && bArr[i14 + 1] == 0) {
                i14 += 2;
            }
            int i15 = i14 - i12;
            if (i15 > i13 && i15 >= 4) {
                i10 = i12;
                i13 = i15;
            }
            i12 = i14 + 2;
        }
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        while (i11 < bArr.length) {
            if (i11 == i10) {
                cVar.writeByte(58);
                i11 += i13;
                if (i11 == 16) {
                    cVar.writeByte(58);
                }
            } else {
                if (i11 > 0) {
                    cVar.writeByte(58);
                }
                cVar.a(((bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[i11 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
                i11 += 2;
            }
        }
        return cVar.p();
    }

    public static X509TrustManager a() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e10) {
            throw a("No System TLS", (Exception) e10);
        }
    }
}

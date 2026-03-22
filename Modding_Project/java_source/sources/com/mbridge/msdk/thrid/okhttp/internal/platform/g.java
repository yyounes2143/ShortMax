package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
/* compiled from: Platform.java */
/* loaded from: classes6.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final g f29946a = c();

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f29947b = Logger.getLogger(t.class.getName());

    private static g c() {
        if (f()) {
            return a();
        }
        return b();
    }

    public static g d() {
        return f29946a;
    }

    public static boolean f() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    public static boolean g() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    public void a(SSLSocket sSLSocket) {
    }

    public String b(SSLSocket sSLSocket) {
        return null;
    }

    public SSLContext e() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    public void a(SSLSocket sSLSocket, String str, List<u> list) throws IOException {
    }

    public boolean b(String str) {
        return true;
    }

    private static g b() {
        c h10;
        if (!g() || (h10 = c.h()) == null) {
            d h11 = d.h();
            if (h11 != null) {
                return h11;
            }
            g h12 = e.h();
            return h12 != null ? h12 : new g();
        }
        return h10;
    }

    public void a(SSLSocketFactory sSLSocketFactory) {
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        socket.connect(inetSocketAddress, i10);
    }

    public void a(int i10, String str, Throwable th2) {
        f29947b.log(i10 == 5 ? Level.WARNING : Level.INFO, str, th2);
    }

    public Object a(String str) {
        if (f29947b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(List<u> list) {
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            u uVar = list.get(i10);
            if (uVar != u.HTTP_1_0) {
                cVar.writeByte(uVar.toString().length());
                cVar.a(uVar.toString());
            }
        }
        return cVar.n();
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }

    public static List<String> a(List<u> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            u uVar = list.get(i10);
            if (uVar != u.HTTP_1_0) {
                arrayList.add(uVar.toString());
            }
        }
        return arrayList;
    }

    public com.mbridge.msdk.thrid.okhttp.internal.tls.e b(X509TrustManager x509TrustManager) {
        return new com.mbridge.msdk.thrid.okhttp.internal.tls.b(x509TrustManager.getAcceptedIssuers());
    }

    public com.mbridge.msdk.thrid.okhttp.internal.tls.c a(X509TrustManager x509TrustManager) {
        return new com.mbridge.msdk.thrid.okhttp.internal.tls.a(b(x509TrustManager));
    }

    private static g a() {
        g h10 = a.h();
        if (h10 != null) {
            return h10;
        }
        g h11 = b.h();
        if (h11 != null) {
            return h11;
        }
        throw new NullPointerException("No platform found on Android");
    }
}

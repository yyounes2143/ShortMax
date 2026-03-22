package com.mbridge.msdk.thrid.okhttp.internal.platform;

import android.os.Build;
import android.util.Log;
import com.mbridge.msdk.thrid.okhttp.u;
import com.unity3d.services.core.fid.Constants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidPlatform.java */
/* loaded from: classes6.dex */
public class b extends g {

    /* renamed from: c  reason: collision with root package name */
    private final Class<?> f29920c;

    /* renamed from: d  reason: collision with root package name */
    private final f<Socket> f29921d;

    /* renamed from: e  reason: collision with root package name */
    private final f<Socket> f29922e;

    /* renamed from: f  reason: collision with root package name */
    private final f<Socket> f29923f;

    /* renamed from: g  reason: collision with root package name */
    private final f<Socket> f29924g;

    /* renamed from: h  reason: collision with root package name */
    private final c f29925h = c.a();

    /* compiled from: AndroidPlatform.java */
    /* loaded from: classes6.dex */
    static final class a extends com.mbridge.msdk.thrid.okhttp.internal.tls.c {

        /* renamed from: a  reason: collision with root package name */
        private final Object f29926a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f29927b;

        a(Object obj, Method method) {
            this.f29926a = obj;
            this.f29927b = method;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.tls.c
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f29927b.invoke(this.f29926a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e11.getMessage());
                sSLPeerUnverifiedException.initCause(e11);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* compiled from: AndroidPlatform.java */
    /* renamed from: com.mbridge.msdk.thrid.okhttp.internal.platform.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    static final class C0434b implements com.mbridge.msdk.thrid.okhttp.internal.tls.e {

        /* renamed from: a  reason: collision with root package name */
        private final X509TrustManager f29928a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f29929b;

        C0434b(X509TrustManager x509TrustManager, Method method) {
            this.f29929b = method;
            this.f29928a = x509TrustManager;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.tls.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f29929b.invoke(this.f29928a, x509Certificate);
                if (trustAnchor == null) {
                    return null;
                }
                return trustAnchor.getTrustedCert();
            } catch (IllegalAccessException e10) {
                throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get issues and signature", (Exception) e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0434b)) {
                return false;
            }
            C0434b c0434b = (C0434b) obj;
            if (this.f29928a.equals(c0434b.f29928a) && this.f29929b.equals(c0434b.f29929b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f29928a.hashCode() + (this.f29929b.hashCode() * 31);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Class<?> cls, f<Socket> fVar, f<Socket> fVar2, f<Socket> fVar3, f<Socket> fVar4) {
        this.f29920c = cls;
        this.f29921d = fVar;
        this.f29922e = fVar2;
        this.f29923f = fVar3;
        this.f29924g = fVar4;
    }

    public static g h() {
        Class<?> cls;
        f fVar;
        f fVar2;
        if (!g.f()) {
            return null;
        }
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            f fVar3 = new f(null, "setUseSessionTickets", Boolean.TYPE);
            f fVar4 = new f(null, "setHostname", String.class);
            if (j()) {
                fVar = new f(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                fVar2 = new f(null, "setAlpnProtocols", byte[].class);
            } else {
                fVar = null;
                fVar2 = null;
            }
            return new b(cls2, fVar3, fVar4, fVar, fVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (NoClassDefFoundError unused) {
            return 0;
        }
    }

    private static boolean j() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        try {
            socket.connect(inetSocketAddress, i10);
        } catch (AssertionError e10) {
            if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e10)) {
                throw e10;
            }
            throw new IOException(e10);
        } catch (ClassCastException e11) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e11);
                throw iOException;
            }
            throw e11;
        } catch (SecurityException e12) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e12);
            throw iOException2;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public String b(SSLSocket sSLSocket) {
        byte[] bArr;
        f<Socket> fVar = this.f29923f;
        if (fVar == null || !fVar.a((f<Socket>) sSLSocket) || (bArr = (byte[]) this.f29923f.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.mbridge.msdk.thrid.okhttp.internal.c.f29610j);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public SSLContext e() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    /* compiled from: AndroidPlatform.java */
    /* loaded from: classes6.dex */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Method f29930a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f29931b;

        /* renamed from: c  reason: collision with root package name */
        private final Method f29932c;

        c(Method method, Method method2, Method method3) {
            this.f29930a = method;
            this.f29931b = method2;
            this.f29932c = method3;
        }

        Object a(String str) {
            Method method = this.f29930a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    this.f29931b.invoke(invoke, str);
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        boolean a(Object obj) {
            if (obj != null) {
                try {
                    this.f29932c.invoke(obj, new Object[0]);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
            return false;
        }

        static c a() {
            Method method;
            Method method2;
            Method method3;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method = cls.getMethod("get", new Class[0]);
                method3 = cls.getMethod(MRAIDPresenter.OPEN, String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception unused) {
                method = null;
                method2 = null;
                method3 = null;
            }
            return new c(method, method3, method2);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return b(str, cls, cls.getMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return a(str, cls, obj);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket, String str, List<u> list) throws IOException {
        if (str != null) {
            this.f29921d.c(sSLSocket, Boolean.TRUE);
            this.f29922e.c(sSLSocket, str);
        }
        f<Socket> fVar = this.f29924g;
        if (fVar == null || !fVar.a((f<Socket>) sSLSocket)) {
            return;
        }
        this.f29924g.d(sSLSocket, g.b(list));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public com.mbridge.msdk.thrid.okhttp.internal.tls.e b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C0434b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(int i10, String str, Throwable th2) {
        int min;
        int i11 = i10 != 5 ? 3 : 5;
        if (th2 != null) {
            str = str + '\n' + Log.getStackTraceString(th2);
        }
        int length = str.length();
        int i12 = 0;
        while (i12 < length) {
            int indexOf = str.indexOf(10, i12);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i12 + 4000);
                Log.println(i11, "OkHttp", str.substring(i12, min));
                if (min >= indexOf) {
                    break;
                }
                i12 = min;
            }
            i12 = min + 1;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public Object a(String str) {
        return this.f29925h.a(str);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(String str, Object obj) {
        if (this.f29925h.a(obj)) {
            return;
        }
        a(5, str, (Throwable) null);
    }

    private boolean a(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public com.mbridge.msdk.thrid.okhttp.internal.tls.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }
}

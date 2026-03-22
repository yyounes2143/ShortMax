package nb;

import android.content.Context;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import pb.f;
@Deprecated
/* loaded from: classes5.dex */
public class b extends SSLSocketFactory {
    @Deprecated

    /* renamed from: i  reason: collision with root package name */
    public static final X509HostnameVerifier f62876i = new BrowserCompatHostnameVerifier();
    @Deprecated

    /* renamed from: j  reason: collision with root package name */
    public static final X509HostnameVerifier f62877j = new StrictHostnameVerifier();

    /* renamed from: k  reason: collision with root package name */
    private static final String f62878k = b.class.getSimpleName();

    /* renamed from: l  reason: collision with root package name */
    private static volatile b f62879l = null;

    /* renamed from: a  reason: collision with root package name */
    private SSLContext f62880a = null;

    /* renamed from: b  reason: collision with root package name */
    private SSLSocket f62881b = null;

    /* renamed from: c  reason: collision with root package name */
    private Context f62882c;

    /* renamed from: d  reason: collision with root package name */
    private String[] f62883d;

    /* renamed from: e  reason: collision with root package name */
    private X509TrustManager f62884e;

    /* renamed from: f  reason: collision with root package name */
    private String[] f62885f;

    /* renamed from: g  reason: collision with root package name */
    private String[] f62886g;

    /* renamed from: h  reason: collision with root package name */
    private String[] f62887h;

    private b(Context context, SecureRandom secureRandom) throws NoSuchAlgorithmException, CertificateException, KeyStoreException, IOException, KeyManagementException {
        if (context == null) {
            f.d(f62878k, "SecureSSLSocketFactory: context is null");
            return;
        }
        c(context);
        d(a.f());
        e a10 = d.a(context);
        this.f62884e = a10;
        this.f62880a.init(null, new X509TrustManager[]{a10}, secureRandom);
    }

    private void a(Socket socket) {
        boolean z10;
        boolean z11 = true;
        if (!pb.c.a(this.f62887h)) {
            f.e(f62878k, "set protocols");
            a.e((SSLSocket) socket, this.f62887h);
            z10 = true;
        } else {
            z10 = false;
        }
        if (pb.c.a(this.f62886g) && pb.c.a(this.f62885f)) {
            z11 = false;
        } else {
            f.e(f62878k, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            a.d(sSLSocket);
            if (!pb.c.a(this.f62886g)) {
                a.h(sSLSocket, this.f62886g);
            } else {
                a.b(sSLSocket, this.f62885f);
            }
        }
        if (!z10) {
            f.e(f62878k, "set default protocols");
            a.d((SSLSocket) socket);
        }
        if (!z11) {
            f.e(f62878k, "set default cipher suites");
            a.c((SSLSocket) socket);
        }
    }

    @Deprecated
    public static b b(Context context) throws IOException, NoSuchAlgorithmException, CertificateException, KeyStoreException, IllegalAccessException, KeyManagementException, IllegalArgumentException {
        long currentTimeMillis = System.currentTimeMillis();
        pb.b.b(context);
        if (f62879l == null) {
            synchronized (b.class) {
                try {
                    if (f62879l == null) {
                        f62879l = new b(context, null);
                    }
                } finally {
                }
            }
        }
        if (f62879l.f62882c == null && context != null) {
            f62879l.c(context);
        }
        String str = f62878k;
        f.b(str, "getInstance: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        return f62879l;
    }

    public void c(Context context) {
        this.f62882c = context.getApplicationContext();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        f.e(f62878k, "createSocket: host , port");
        Socket createSocket = this.f62880a.getSocketFactory().createSocket(str, i10);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f62881b = sSLSocket;
            this.f62883d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    public void d(SSLContext sSLContext) {
        this.f62880a = sSLContext;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f62883d;
        if (strArr != null) {
            return strArr;
        }
        return new String[0];
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException, UnknownHostException {
        return createSocket(str, i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        return createSocket(inetAddress.getHostAddress(), i10);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException {
        f.e(f62878k, "createSocket s host port autoClose");
        Socket createSocket = this.f62880a.getSocketFactory().createSocket(socket, str, i10, z10);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f62881b = sSLSocket;
            this.f62883d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }
}

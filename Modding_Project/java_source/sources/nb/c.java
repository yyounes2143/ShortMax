package nb;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import pb.f;
/* loaded from: classes5.dex */
public class c extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    protected SSLContext f62888a;

    /* renamed from: b  reason: collision with root package name */
    protected SSLSocket f62889b = null;

    /* renamed from: c  reason: collision with root package name */
    protected String[] f62890c;

    /* renamed from: d  reason: collision with root package name */
    protected X509TrustManager f62891d;

    /* renamed from: e  reason: collision with root package name */
    protected String[] f62892e;

    /* renamed from: f  reason: collision with root package name */
    protected String[] f62893f;

    /* renamed from: g  reason: collision with root package name */
    protected String[] f62894g;

    @Deprecated
    public c(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException, IllegalArgumentException {
        this.f62888a = null;
        this.f62888a = a.f();
        b(x509TrustManager);
        this.f62888a.init(null, new X509TrustManager[]{x509TrustManager}, null);
    }

    private void a(Socket socket) {
        boolean z10;
        boolean z11 = true;
        if (!pb.c.a(this.f62894g)) {
            f.e("SSLFNew", "set protocols");
            a.e((SSLSocket) socket, this.f62894g);
            z10 = true;
        } else {
            z10 = false;
        }
        if (pb.c.a(this.f62893f) && pb.c.a(this.f62892e)) {
            z11 = false;
        } else {
            f.e("SSLFNew", "set cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            a.d(sSLSocket);
            if (!pb.c.a(this.f62893f)) {
                a.h(sSLSocket, this.f62893f);
            } else {
                a.b(sSLSocket, this.f62892e);
            }
        }
        if (!z10) {
            f.e("SSLFNew", "set default protocols");
            a.d((SSLSocket) socket);
        }
        if (!z11) {
            f.e("SSLFNew", "set default cipher");
            a.c((SSLSocket) socket);
        }
    }

    public void b(X509TrustManager x509TrustManager) {
        this.f62891d = x509TrustManager;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        f.e("SSLFNew", "createSocket: host , port");
        Socket createSocket = this.f62888a.getSocketFactory().createSocket(str, i10);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f62889b = sSLSocket;
            this.f62890c = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f62890c;
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
        f.e("SSLFNew", "createSocket");
        Socket createSocket = this.f62888a.getSocketFactory().createSocket(socket, str, i10, z10);
        if (createSocket instanceof SSLSocket) {
            a(createSocket);
            SSLSocket sSLSocket = (SSLSocket) createSocket;
            this.f62889b = sSLSocket;
            this.f62890c = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return createSocket;
    }
}

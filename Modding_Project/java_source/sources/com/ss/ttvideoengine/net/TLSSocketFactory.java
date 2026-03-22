package com.ss.ttvideoengine.net;

import android.os.Build;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes6.dex */
public class TLSSocketFactory extends SSLSocketFactory {
    private static final String[] TLS_ALL = {"TLSv1", "TLSv1.1", "TLSv1.2", "TLSv1.3"};
    private static final String[] TLS_POP_13 = {"TLSv1", "TLSv1.1", "TLSv1.2"};
    final SSLSocketFactory base;

    public TLSSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.base = sSLSocketFactory;
    }

    private Socket patch(Socket socket) {
        if (socket instanceof SSLSocket) {
            if (Build.VERSION.SDK_INT >= 29) {
                ((SSLSocket) socket).setEnabledProtocols(TLS_ALL);
            } else {
                ((SSLSocket) socket).setEnabledProtocols(TLS_POP_13);
            }
        }
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException {
        return patch(this.base.createSocket(socket, str, i10, z10));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.base.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.base.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException, UnknownHostException {
        return patch(this.base.createSocket(str, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException, UnknownHostException {
        return patch(this.base.createSocket(str, i10, inetAddress, i11));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        return patch(this.base.createSocket(inetAddress, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        return patch(this.base.createSocket(inetAddress, i10, inetAddress2, i11));
    }
}

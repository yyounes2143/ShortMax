package op;

import androidx.annotation.NonNull;
import io.bidmachine.core.g;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: NoSSLv3SocketFactory.java */
/* loaded from: classes8.dex */
public class c extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private final SSLSocketFactory f64347a;

    /* compiled from: NoSSLv3SocketFactory.java */
    /* loaded from: classes8.dex */
    public static class b extends SSLSocket {

        /* renamed from: a  reason: collision with root package name */
        final SSLSocket f64348a;

        b(SSLSocket sSLSocket) {
            this.f64348a = sSLSocket;
        }

        @Override // javax.net.ssl.SSLSocket
        public void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f64348a.addHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void bind(SocketAddress socketAddress) throws IOException {
            this.f64348a.bind(socketAddress);
        }

        @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            g.j(this.f64348a);
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress) throws IOException {
            this.f64348a.connect(socketAddress);
        }

        public boolean equals(Object obj) {
            return this.f64348a.equals(obj);
        }

        @Override // java.net.Socket
        public SocketChannel getChannel() {
            return this.f64348a.getChannel();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getEnableSessionCreation() {
            return this.f64348a.getEnableSessionCreation();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledCipherSuites() {
            return this.f64348a.getEnabledCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledProtocols() {
            return this.f64348a.getEnabledProtocols();
        }

        @Override // java.net.Socket
        public InetAddress getInetAddress() {
            return this.f64348a.getInetAddress();
        }

        @Override // java.net.Socket
        public InputStream getInputStream() throws IOException {
            return this.f64348a.getInputStream();
        }

        @Override // java.net.Socket
        public boolean getKeepAlive() throws SocketException {
            return this.f64348a.getKeepAlive();
        }

        @Override // java.net.Socket
        public InetAddress getLocalAddress() {
            return this.f64348a.getLocalAddress();
        }

        @Override // java.net.Socket
        public int getLocalPort() {
            return this.f64348a.getLocalPort();
        }

        @Override // java.net.Socket
        public SocketAddress getLocalSocketAddress() {
            return this.f64348a.getLocalSocketAddress();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getNeedClientAuth() {
            return this.f64348a.getNeedClientAuth();
        }

        @Override // java.net.Socket
        public boolean getOOBInline() throws SocketException {
            return this.f64348a.getOOBInline();
        }

        @Override // java.net.Socket
        public OutputStream getOutputStream() throws IOException {
            return this.f64348a.getOutputStream();
        }

        @Override // java.net.Socket
        public int getPort() {
            return this.f64348a.getPort();
        }

        @Override // java.net.Socket
        public synchronized int getReceiveBufferSize() throws SocketException {
            return this.f64348a.getReceiveBufferSize();
        }

        @Override // java.net.Socket
        public SocketAddress getRemoteSocketAddress() {
            return this.f64348a.getRemoteSocketAddress();
        }

        @Override // java.net.Socket
        public boolean getReuseAddress() throws SocketException {
            return this.f64348a.getReuseAddress();
        }

        @Override // java.net.Socket
        public synchronized int getSendBufferSize() throws SocketException {
            return this.f64348a.getSendBufferSize();
        }

        @Override // javax.net.ssl.SSLSocket
        public SSLSession getSession() {
            return this.f64348a.getSession();
        }

        @Override // java.net.Socket
        public int getSoLinger() throws SocketException {
            return this.f64348a.getSoLinger();
        }

        @Override // java.net.Socket
        public synchronized int getSoTimeout() throws SocketException {
            return this.f64348a.getSoTimeout();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedCipherSuites() {
            return this.f64348a.getSupportedCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedProtocols() {
            return this.f64348a.getSupportedProtocols();
        }

        @Override // java.net.Socket
        public boolean getTcpNoDelay() throws SocketException {
            return this.f64348a.getTcpNoDelay();
        }

        @Override // java.net.Socket
        public int getTrafficClass() throws SocketException {
            return this.f64348a.getTrafficClass();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getUseClientMode() {
            return this.f64348a.getUseClientMode();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getWantClientAuth() {
            return this.f64348a.getWantClientAuth();
        }

        @Override // java.net.Socket
        public boolean isBound() {
            return this.f64348a.isBound();
        }

        @Override // java.net.Socket
        public boolean isClosed() {
            return this.f64348a.isClosed();
        }

        @Override // java.net.Socket
        public boolean isConnected() {
            return this.f64348a.isConnected();
        }

        @Override // java.net.Socket
        public boolean isInputShutdown() {
            return this.f64348a.isInputShutdown();
        }

        @Override // java.net.Socket
        public boolean isOutputShutdown() {
            return this.f64348a.isOutputShutdown();
        }

        @Override // javax.net.ssl.SSLSocket
        public void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f64348a.removeHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void sendUrgentData(int i10) throws IOException {
            this.f64348a.sendUrgentData(i10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnableSessionCreation(boolean z10) {
            this.f64348a.setEnableSessionCreation(z10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledCipherSuites(String[] strArr) {
            this.f64348a.setEnabledCipherSuites(strArr);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            this.f64348a.setEnabledProtocols(strArr);
        }

        @Override // java.net.Socket
        public void setKeepAlive(boolean z10) throws SocketException {
            this.f64348a.setKeepAlive(z10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setNeedClientAuth(boolean z10) {
            this.f64348a.setNeedClientAuth(z10);
        }

        @Override // java.net.Socket
        public void setOOBInline(boolean z10) throws SocketException {
            this.f64348a.setOOBInline(z10);
        }

        @Override // java.net.Socket
        public void setPerformancePreferences(int i10, int i11, int i12) {
            this.f64348a.setPerformancePreferences(i10, i11, i12);
        }

        @Override // java.net.Socket
        public synchronized void setReceiveBufferSize(int i10) throws SocketException {
            this.f64348a.setReceiveBufferSize(i10);
        }

        @Override // java.net.Socket
        public void setReuseAddress(boolean z10) throws SocketException {
            this.f64348a.setReuseAddress(z10);
        }

        @Override // java.net.Socket
        public synchronized void setSendBufferSize(int i10) throws SocketException {
            this.f64348a.setSendBufferSize(i10);
        }

        @Override // java.net.Socket
        public void setSoLinger(boolean z10, int i10) throws SocketException {
            this.f64348a.setSoLinger(z10, i10);
        }

        @Override // java.net.Socket
        public synchronized void setSoTimeout(int i10) throws SocketException {
            this.f64348a.setSoTimeout(i10);
        }

        @Override // java.net.Socket
        public void setTcpNoDelay(boolean z10) throws SocketException {
            this.f64348a.setTcpNoDelay(z10);
        }

        @Override // java.net.Socket
        public void setTrafficClass(int i10) throws SocketException {
            this.f64348a.setTrafficClass(i10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setUseClientMode(boolean z10) {
            this.f64348a.setUseClientMode(z10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setWantClientAuth(boolean z10) {
            this.f64348a.setWantClientAuth(z10);
        }

        @Override // java.net.Socket
        public void shutdownInput() throws IOException {
            this.f64348a.shutdownInput();
        }

        @Override // java.net.Socket
        public void shutdownOutput() throws IOException {
            this.f64348a.shutdownOutput();
        }

        @Override // javax.net.ssl.SSLSocket
        public void startHandshake() throws IOException {
            this.f64348a.startHandshake();
        }

        @Override // javax.net.ssl.SSLSocket, java.net.Socket
        @NonNull
        public String toString() {
            return this.f64348a.toString();
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress, int i10) throws IOException {
            this.f64348a.connect(socketAddress, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NoSSLv3SocketFactory.java */
    /* renamed from: op.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0891c extends b {
        @Override // op.c.b, javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            if (strArr != null && strArr.length == 1 && "SSLv3".equals(strArr[0])) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f64348a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                    System.out.println("Removed SSLv3 from enabled protocols");
                } else {
                    PrintStream printStream = System.out;
                    printStream.println("SSL stuck with protocol available for " + arrayList);
                }
                strArr = (String[]) arrayList.toArray(new String[0]);
            }
            super.setEnabledProtocols(strArr);
        }

        private C0891c(SSLSocket sSLSocket) {
            super(sSLSocket);
        }
    }

    public c(SSLSocketFactory sSLSocketFactory) {
        this.f64347a = sSLSocketFactory;
    }

    private Socket a(Socket socket) {
        if (socket instanceof SSLSocket) {
            return new C0891c((SSLSocket) socket);
        }
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException {
        return a(this.f64347a.createSocket(socket, str, i10, z10));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f64347a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f64347a.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        return a(this.f64347a.createSocket(str, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        return a(this.f64347a.createSocket(str, i10, inetAddress, i11));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        return a(this.f64347a.createSocket(inetAddress, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        return a(this.f64347a.createSocket(inetAddress, i10, inetAddress2, i11));
    }
}

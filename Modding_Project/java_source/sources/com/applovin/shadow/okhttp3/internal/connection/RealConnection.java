package com.applovin.shadow.okhttp3.internal.connection;

import com.applovin.shadow.okhttp3.Address;
import com.applovin.shadow.okhttp3.Call;
import com.applovin.shadow.okhttp3.CertificatePinner;
import com.applovin.shadow.okhttp3.Connection;
import com.applovin.shadow.okhttp3.ConnectionSpec;
import com.applovin.shadow.okhttp3.EventListener;
import com.applovin.shadow.okhttp3.Handshake;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.applovin.shadow.okhttp3.OkHttpClient;
import com.applovin.shadow.okhttp3.Protocol;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.Route;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner;
import com.applovin.shadow.okhttp3.internal.http.ExchangeCodec;
import com.applovin.shadow.okhttp3.internal.http.RealInterceptorChain;
import com.applovin.shadow.okhttp3.internal.http1.Http1ExchangeCodec;
import com.applovin.shadow.okhttp3.internal.http2.ConnectionShutdownException;
import com.applovin.shadow.okhttp3.internal.http2.ErrorCode;
import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
import com.applovin.shadow.okhttp3.internal.http2.Http2ExchangeCodec;
import com.applovin.shadow.okhttp3.internal.http2.Http2Stream;
import com.applovin.shadow.okhttp3.internal.http2.Settings;
import com.applovin.shadow.okhttp3.internal.http2.StreamResetException;
import com.applovin.shadow.okhttp3.internal.platform.Platform;
import com.applovin.shadow.okhttp3.internal.tls.CertificateChainCleaner;
import com.applovin.shadow.okhttp3.internal.tls.OkHostnameVerifier;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.applovin.shadow.okio.BufferedSink;
import com.applovin.shadow.okio.BufferedSource;
import com.applovin.shadow.okio.Okio;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealConnection.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,765:1\n1#2:766\n608#3,4:767\n608#3,4:774\n615#3,4:778\n1747#4,3:771\n*S KotlinDebug\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n*L\n529#1:767,4\n582#1:774,4\n648#1:778,4\n574#1:771,3\n*E\n"})
/* loaded from: classes2.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long IDLE_CONNECTION_HEALTHY_NS = 10000000000L;
    private static final int MAX_TUNNEL_ATTEMPTS = 21;
    @NotNull
    private static final String NPE_THROW_WITH_NULL = "throw with null exception";
    private int allocationLimit;
    @NotNull
    private final List<Reference<RealCall>> calls;
    @NotNull
    private final RealConnectionPool connectionPool;
    @Nullable
    private Handshake handshake;
    @Nullable
    private Http2Connection http2Connection;
    private long idleAtNs;
    private boolean noCoalescedConnections;
    private boolean noNewExchanges;
    @Nullable
    private Protocol protocol;
    @Nullable
    private Socket rawSocket;
    private int refusedStreamCount;
    @NotNull
    private final Route route;
    private int routeFailureCount;
    @Nullable
    private BufferedSink sink;
    @Nullable
    private Socket socket;
    @Nullable
    private BufferedSource source;
    private int successCount;

    /* compiled from: RealConnection.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RealConnection newTestConnection(@NotNull RealConnectionPool connectionPool, @NotNull Route route, @NotNull Socket socket, long j10) {
            Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
            Intrinsics.checkNotNullParameter(route, "route");
            Intrinsics.checkNotNullParameter(socket, "socket");
            RealConnection realConnection = new RealConnection(connectionPool, route);
            realConnection.socket = socket;
            realConnection.setIdleAtNs$okhttp(j10);
            return realConnection;
        }

        private Companion() {
        }
    }

    /* compiled from: RealConnection.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RealConnection(@NotNull RealConnectionPool connectionPool, @NotNull Route route) {
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(route, "route");
        this.connectionPool = connectionPool;
        this.route = route;
        this.allocationLimit = 1;
        this.calls = new ArrayList();
        this.idleAtNs = Long.MAX_VALUE;
    }

    private final boolean certificateSupportHost(HttpUrl httpUrl, Handshake handshake) {
        List<Certificate> peerCertificates = handshake.peerCertificates();
        if (peerCertificates.isEmpty()) {
            return false;
        }
        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
        String host = httpUrl.host();
        Certificate certificate = peerCertificates.get(0);
        Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
        if (!okHostnameVerifier.verify(host, (X509Certificate) certificate)) {
            return false;
        }
        return true;
    }

    private final void connectSocket(int i10, int i11, Call call, EventListener eventListener) throws IOException {
        int i12;
        Socket createSocket;
        Proxy proxy = this.route.proxy();
        Address address = this.route.address();
        Proxy.Type type = proxy.type();
        if (type == null) {
            i12 = -1;
        } else {
            i12 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i12 != 1 && i12 != 2) {
            createSocket = new Socket(proxy);
        } else {
            createSocket = address.socketFactory().createSocket();
            Intrinsics.checkNotNull(createSocket);
        }
        this.rawSocket = createSocket;
        eventListener.connectStart(call, this.route.socketAddress(), proxy);
        createSocket.setSoTimeout(i11);
        try {
            Platform.Companion.get().connectSocket(createSocket, this.route.socketAddress(), i10);
            try {
                this.source = Okio.buffer(Okio.source(createSocket));
                this.sink = Okio.buffer(Okio.sink(createSocket));
            } catch (NullPointerException e10) {
                if (!Intrinsics.areEqual(e10.getMessage(), NPE_THROW_WITH_NULL)) {
                    return;
                }
                throw new IOException(e10);
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.route.socketAddress());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private final void connectTls(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        SSLSocket sSLSocket;
        Protocol protocol;
        final Address address = this.route.address();
        SSLSocketFactory sslSocketFactory = address.sslSocketFactory();
        SSLSocket sSLSocket2 = null;
        String str = null;
        try {
            Intrinsics.checkNotNull(sslSocketFactory);
            Socket createSocket = sslSocketFactory.createSocket(this.rawSocket, address.url().host(), address.url().port(), true);
            Intrinsics.checkNotNull(createSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            sSLSocket = (SSLSocket) createSocket;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ConnectionSpec configureSecureSocket = connectionSpecSelector.configureSecureSocket(sSLSocket);
            if (configureSecureSocket.supportsTlsExtensions()) {
                Platform.Companion.get().configureTlsExtensions(sSLSocket, address.url().host(), address.protocols());
            }
            sSLSocket.startHandshake();
            SSLSession sslSocketSession = sSLSocket.getSession();
            Handshake.Companion companion = Handshake.Companion;
            Intrinsics.checkNotNullExpressionValue(sslSocketSession, "sslSocketSession");
            final Handshake handshake = companion.get(sslSocketSession);
            HostnameVerifier hostnameVerifier = address.hostnameVerifier();
            Intrinsics.checkNotNull(hostnameVerifier);
            if (!hostnameVerifier.verify(address.url().host(), sslSocketSession)) {
                List<Certificate> peerCertificates = handshake.peerCertificates();
                if (!peerCertificates.isEmpty()) {
                    Certificate certificate = peerCertificates.get(0);
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate x509Certificate = (X509Certificate) certificate;
                    throw new SSLPeerUnverifiedException(StringsKt.p("\n              |Hostname " + address.url().host() + " not verified:\n              |    certificate: " + CertificatePinner.Companion.pin(x509Certificate) + "\n              |    DN: " + x509Certificate.getSubjectDN().getName() + "\n              |    subjectAltNames: " + OkHostnameVerifier.INSTANCE.allSubjectAltNames(x509Certificate) + "\n              ", null, 1, null));
                }
                throw new SSLPeerUnverifiedException("Hostname " + address.url().host() + " not verified (no certificates)");
            }
            final CertificatePinner certificatePinner = address.certificatePinner();
            Intrinsics.checkNotNull(certificatePinner);
            this.handshake = new Handshake(handshake.tlsVersion(), handshake.cipherSuite(), handshake.localCertificates(), new Function0<List<? extends Certificate>>() { // from class: com.applovin.shadow.okhttp3.internal.connection.RealConnection$connectTls$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final List<? extends Certificate> invoke() {
                    CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
                    Intrinsics.checkNotNull(certificateChainCleaner$okhttp);
                    return certificateChainCleaner$okhttp.clean(handshake.peerCertificates(), address.url().host());
                }
            });
            certificatePinner.check$okhttp(address.url().host(), new Function0<List<? extends X509Certificate>>() { // from class: com.applovin.shadow.okhttp3.internal.connection.RealConnection$connectTls$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final List<? extends X509Certificate> invoke() {
                    Handshake handshake2;
                    handshake2 = RealConnection.this.handshake;
                    Intrinsics.checkNotNull(handshake2);
                    List<Certificate> peerCertificates2 = handshake2.peerCertificates();
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(peerCertificates2, 10));
                    for (Certificate certificate2 : peerCertificates2) {
                        Intrinsics.checkNotNull(certificate2, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                        arrayList.add((X509Certificate) certificate2);
                    }
                    return arrayList;
                }
            });
            if (configureSecureSocket.supportsTlsExtensions()) {
                str = Platform.Companion.get().getSelectedProtocol(sSLSocket);
            }
            this.socket = sSLSocket;
            this.source = Okio.buffer(Okio.source(sSLSocket));
            this.sink = Okio.buffer(Okio.sink(sSLSocket));
            if (str != null) {
                protocol = Protocol.Companion.get(str);
            } else {
                protocol = Protocol.HTTP_1_1;
            }
            this.protocol = protocol;
            Platform.Companion.get().afterHandshake(sSLSocket);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                Platform.Companion.get().afterHandshake(sSLSocket2);
            }
            if (sSLSocket2 != null) {
                Util.closeQuietly((Socket) sSLSocket2);
            }
            throw th;
        }
    }

    private final void connectTunnel(int i10, int i11, int i12, Call call, EventListener eventListener) throws IOException {
        Request createTunnelRequest = createTunnelRequest();
        HttpUrl url = createTunnelRequest.url();
        for (int i13 = 0; i13 < 21; i13++) {
            connectSocket(i10, i11, call, eventListener);
            createTunnelRequest = createTunnel(i11, i12, createTunnelRequest, url);
            if (createTunnelRequest != null) {
                Socket socket = this.rawSocket;
                if (socket != null) {
                    Util.closeQuietly(socket);
                }
                this.rawSocket = null;
                this.sink = null;
                this.source = null;
                eventListener.connectEnd(call, this.route.socketAddress(), this.route.proxy(), null);
            } else {
                return;
            }
        }
    }

    private final Request createTunnel(int i10, int i11, Request request, HttpUrl httpUrl) throws IOException {
        String str = "CONNECT " + Util.toHostHeader(httpUrl, true) + " HTTP/1.1";
        while (true) {
            BufferedSource bufferedSource = this.source;
            Intrinsics.checkNotNull(bufferedSource);
            BufferedSink bufferedSink = this.sink;
            Intrinsics.checkNotNull(bufferedSink);
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSource, bufferedSink);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            bufferedSource.timeout().timeout(i10, timeUnit);
            bufferedSink.timeout().timeout(i11, timeUnit);
            http1ExchangeCodec.writeRequest(request.headers(), str);
            http1ExchangeCodec.finishRequest();
            Response.Builder readResponseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders);
            Response build = readResponseHeaders.request(request).build();
            http1ExchangeCodec.skipConnectBody(build);
            int code = build.code();
            if (code != 200) {
                if (code == 407) {
                    Request authenticate = this.route.address().proxyAuthenticator().authenticate(this.route, build);
                    if (authenticate != null) {
                        if (StringsKt.G("close", Response.header$default(build, "Connection", null, 2, null), true)) {
                            return authenticate;
                        }
                        request = authenticate;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                } else {
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
                }
            } else if (bufferedSource.getBuffer().exhausted() && bufferedSink.getBuffer().exhausted()) {
                return null;
            } else {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        }
    }

    private final Request createTunnelRequest() throws IOException {
        Request build = new Request.Builder().url(this.route.address().url()).method("CONNECT", null).header("Host", Util.toHostHeader(this.route.address().url(), true)).header("Proxy-Connection", "Keep-Alive").header(Command.HTTP_HEADER_USER_AGENT, Util.userAgent).build();
        Request authenticate = this.route.address().proxyAuthenticator().authenticate(this.route, new Response.Builder().request(build).protocol(Protocol.HTTP_1_1).code(407).message("Preemptive Authenticate").body(Util.EMPTY_RESPONSE).sentRequestAtMillis(-1L).receivedResponseAtMillis(-1L).header("Proxy-Authenticate", "OkHttp-Preemptive").build());
        if (authenticate != null) {
            return authenticate;
        }
        return build;
    }

    private final void establishProtocol(ConnectionSpecSelector connectionSpecSelector, int i10, Call call, EventListener eventListener) throws IOException {
        if (this.route.address().sslSocketFactory() == null) {
            List<Protocol> protocols = this.route.address().protocols();
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (protocols.contains(protocol)) {
                this.socket = this.rawSocket;
                this.protocol = protocol;
                startHttp2(i10);
                return;
            }
            this.socket = this.rawSocket;
            this.protocol = Protocol.HTTP_1_1;
            return;
        }
        eventListener.secureConnectStart(call);
        connectTls(connectionSpecSelector);
        eventListener.secureConnectEnd(call, this.handshake);
        if (this.protocol == Protocol.HTTP_2) {
            startHttp2(i10);
        }
    }

    private final boolean routeMatchesAny(List<Route> list) {
        List<Route> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (Route route : list2) {
            Proxy.Type type = route.proxy().type();
            Proxy.Type type2 = Proxy.Type.DIRECT;
            if (type == type2 && this.route.proxy().type() == type2 && Intrinsics.areEqual(this.route.socketAddress(), route.socketAddress())) {
                return true;
            }
        }
        return false;
    }

    private final void startHttp2(int i10) throws IOException {
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.sink;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        Http2Connection build = new Http2Connection.Builder(true, TaskRunner.INSTANCE).socket(socket, this.route.address().url().host(), bufferedSource, bufferedSink).listener(this).pingIntervalMillis(i10).build();
        this.http2Connection = build;
        this.allocationLimit = Http2Connection.Companion.getDEFAULT_SETTINGS().getMaxConcurrentStreams();
        Http2Connection.start$default(build, false, null, 3, null);
    }

    private final boolean supportsUrl(HttpUrl httpUrl) {
        Handshake handshake;
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        HttpUrl url = this.route.address().url();
        if (httpUrl.port() != url.port()) {
            return false;
        }
        if (Intrinsics.areEqual(httpUrl.host(), url.host())) {
            return true;
        }
        if (this.noCoalescedConnections || (handshake = this.handshake) == null) {
            return false;
        }
        Intrinsics.checkNotNull(handshake);
        if (!certificateSupportHost(httpUrl, handshake)) {
            return false;
        }
        return true;
    }

    public final void cancel() {
        Socket socket = this.rawSocket;
        if (socket != null) {
            Util.closeQuietly(socket);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x009c A[Catch: IOException -> 0x00b7, TRY_LEAVE, TryCatch #0 {IOException -> 0x00b7, blocks: (B:18:0x0094, B:20:0x009c), top: B:64:0x0094 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0149 A[EDGE_INSN: B:73:0x0149->B:59:0x0149 ?: BREAK  ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void connect(int r17, int r18, int r19, int r20, boolean r21, @org.jetbrains.annotations.NotNull com.applovin.shadow.okhttp3.Call r22, @org.jetbrains.annotations.NotNull com.applovin.shadow.okhttp3.EventListener r23) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okhttp3.internal.connection.RealConnection.connect(int, int, int, int, boolean, com.applovin.shadow.okhttp3.Call, com.applovin.shadow.okhttp3.EventListener):void");
    }

    public final void connectFailed$okhttp(@NotNull OkHttpClient client, @NotNull Route failedRoute, @NotNull IOException failure) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (failedRoute.proxy().type() != Proxy.Type.DIRECT) {
            Address address = failedRoute.address();
            address.proxySelector().connectFailed(address.url().uri(), failedRoute.proxy().address(), failure);
        }
        client.getRouteDatabase().failed(failedRoute);
    }

    @NotNull
    public final List<Reference<RealCall>> getCalls() {
        return this.calls;
    }

    @NotNull
    public final RealConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    public final long getIdleAtNs$okhttp() {
        return this.idleAtNs;
    }

    public final boolean getNoNewExchanges() {
        return this.noNewExchanges;
    }

    public final int getRouteFailureCount$okhttp() {
        return this.routeFailureCount;
    }

    @Override // com.applovin.shadow.okhttp3.Connection
    @Nullable
    public Handshake handshake() {
        return this.handshake;
    }

    public final synchronized void incrementSuccessCount$okhttp() {
        this.successCount++;
    }

    public final boolean isEligible$okhttp(@NotNull Address address, @Nullable List<Route> list) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        } else if (this.calls.size() >= this.allocationLimit || this.noNewExchanges || !this.route.address().equalsNonHost$okhttp(address)) {
            return false;
        } else {
            if (Intrinsics.areEqual(address.url().host(), route().address().url().host())) {
                return true;
            }
            if (this.http2Connection == null || list == null || !routeMatchesAny(list) || address.hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
                return false;
            }
            try {
                CertificatePinner certificatePinner = address.certificatePinner();
                Intrinsics.checkNotNull(certificatePinner);
                String host = address.url().host();
                Handshake handshake = handshake();
                Intrinsics.checkNotNull(handshake);
                certificatePinner.check(host, handshake.peerCertificates());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
    }

    public final boolean isHealthy(boolean z10) {
        long j10;
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        long nanoTime = System.nanoTime();
        Socket socket = this.rawSocket;
        Intrinsics.checkNotNull(socket);
        Socket socket2 = this.socket;
        Intrinsics.checkNotNull(socket2);
        BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        if (!socket.isClosed() && !socket2.isClosed() && !socket2.isInputShutdown() && !socket2.isOutputShutdown()) {
            Http2Connection http2Connection = this.http2Connection;
            if (http2Connection != null) {
                return http2Connection.isHealthy(nanoTime);
            }
            synchronized (this) {
                j10 = nanoTime - this.idleAtNs;
            }
            if (j10 >= IDLE_CONNECTION_HEALTHY_NS && z10) {
                return Util.isHealthy(socket2, bufferedSource);
            }
            return true;
        }
        return false;
    }

    public final boolean isMultiplexed$okhttp() {
        if (this.http2Connection != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ExchangeCodec newCodec$okhttp(@NotNull OkHttpClient client, @NotNull RealInterceptorChain chain) throws SocketException {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.sink;
        Intrinsics.checkNotNull(bufferedSink);
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(client, this, chain, http2Connection);
        }
        socket.setSoTimeout(chain.readTimeoutMillis());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bufferedSource.timeout().timeout(chain.getReadTimeoutMillis$okhttp(), timeUnit);
        bufferedSink.timeout().timeout(chain.getWriteTimeoutMillis$okhttp(), timeUnit);
        return new Http1ExchangeCodec(client, this, bufferedSource, bufferedSink);
    }

    @NotNull
    public final RealWebSocket.Streams newWebSocketStreams$okhttp(@NotNull final Exchange exchange) throws SocketException {
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        final BufferedSource bufferedSource = this.source;
        Intrinsics.checkNotNull(bufferedSource);
        final BufferedSink bufferedSink = this.sink;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        noNewExchanges$okhttp();
        return new RealWebSocket.Streams(bufferedSource, bufferedSink) { // from class: com.applovin.shadow.okhttp3.internal.connection.RealConnection$newWebSocketStreams$1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                exchange.bodyComplete(-1L, true, true, null);
            }
        };
    }

    public final synchronized void noCoalescedConnections$okhttp() {
        this.noCoalescedConnections = true;
    }

    public final synchronized void noNewExchanges$okhttp() {
        this.noNewExchanges = true;
    }

    @Override // com.applovin.shadow.okhttp3.internal.http2.Http2Connection.Listener
    public synchronized void onSettings(@NotNull Http2Connection connection, @NotNull Settings settings) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.allocationLimit = settings.getMaxConcurrentStreams();
    }

    @Override // com.applovin.shadow.okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(@NotNull Http2Stream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.close(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // com.applovin.shadow.okhttp3.Connection
    @NotNull
    public Protocol protocol() {
        Protocol protocol = this.protocol;
        Intrinsics.checkNotNull(protocol);
        return protocol;
    }

    @Override // com.applovin.shadow.okhttp3.Connection
    @NotNull
    public Route route() {
        return this.route;
    }

    public final void setIdleAtNs$okhttp(long j10) {
        this.idleAtNs = j10;
    }

    public final void setNoNewExchanges(boolean z10) {
        this.noNewExchanges = z10;
    }

    public final void setRouteFailureCount$okhttp(int i10) {
        this.routeFailureCount = i10;
    }

    @Override // com.applovin.shadow.okhttp3.Connection
    @NotNull
    public Socket socket() {
        Socket socket = this.socket;
        Intrinsics.checkNotNull(socket);
        return socket;
    }

    @NotNull
    public String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.route.address().url().host());
        sb2.append(':');
        sb2.append(this.route.address().url().port());
        sb2.append(", proxy=");
        sb2.append(this.route.proxy());
        sb2.append(" hostAddress=");
        sb2.append(this.route.socketAddress());
        sb2.append(" cipherSuite=");
        Handshake handshake = this.handshake;
        if (handshake == null || (obj = handshake.cipherSuite()) == null) {
            obj = DevicePublicKeyStringDef.NONE;
        }
        sb2.append(obj);
        sb2.append(" protocol=");
        sb2.append(this.protocol);
        sb2.append('}');
        return sb2.toString();
    }

    public final synchronized void trackFailure$okhttp(@NotNull RealCall call, @Nullable IOException iOException) {
        try {
            Intrinsics.checkNotNullParameter(call, "call");
            if (iOException instanceof StreamResetException) {
                if (((StreamResetException) iOException).errorCode == ErrorCode.REFUSED_STREAM) {
                    int i10 = this.refusedStreamCount + 1;
                    this.refusedStreamCount = i10;
                    if (i10 > 1) {
                        this.noNewExchanges = true;
                        this.routeFailureCount++;
                    }
                } else if (((StreamResetException) iOException).errorCode != ErrorCode.CANCEL || !call.isCanceled()) {
                    this.noNewExchanges = true;
                    this.routeFailureCount++;
                }
            } else if (!isMultiplexed$okhttp() || (iOException instanceof ConnectionShutdownException)) {
                this.noNewExchanges = true;
                if (this.successCount == 0) {
                    if (iOException != null) {
                        connectFailed$okhttp(call.getClient(), this.route, iOException);
                    }
                    this.routeFailureCount++;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}

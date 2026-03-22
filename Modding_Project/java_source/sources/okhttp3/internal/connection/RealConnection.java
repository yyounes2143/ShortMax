package okhttp3.internal.connection;

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
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealConnection.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,765:1\n1#2:766\n608#3,4:767\n608#3,4:774\n615#3,4:778\n1747#4,3:771\n*S KotlinDebug\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n*L\n529#1:767,4\n582#1:774,4\n648#1:778,4\n574#1:771,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final Companion f63815t = new Companion(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final RealConnectionPool f63816c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Route f63817d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Socket f63818e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Socket f63819f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Handshake f63820g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Protocol f63821h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Http2Connection f63822i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private BufferedSource f63823j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BufferedSink f63824k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f63825l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f63826m;

    /* renamed from: n  reason: collision with root package name */
    private int f63827n;

    /* renamed from: o  reason: collision with root package name */
    private int f63828o;

    /* renamed from: p  reason: collision with root package name */
    private int f63829p;

    /* renamed from: q  reason: collision with root package name */
    private int f63830q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final List<Reference<RealCall>> f63831r;

    /* renamed from: s  reason: collision with root package name */
    private long f63832s;

    /* compiled from: RealConnection.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: RealConnection.kt */
    @Metadata
    /* loaded from: classes8.dex */
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
        this.f63816c = connectionPool;
        this.f63817d = route;
        this.f63830q = 1;
        this.f63831r = new ArrayList();
        this.f63832s = Long.MAX_VALUE;
    }

    private final boolean B(List<Route> list) {
        List<Route> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        for (Route route : list2) {
            Proxy.Type type = route.b().type();
            Proxy.Type type2 = Proxy.Type.DIRECT;
            if (type == type2 && this.f63817d.b().type() == type2 && Intrinsics.areEqual(this.f63817d.d(), route.d())) {
                return true;
            }
        }
        return false;
    }

    private final void F(int i10) throws IOException {
        Socket socket = this.f63819f;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.f63823j;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.f63824k;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        Http2Connection a10 = new Http2Connection.Builder(true, TaskRunner.f63748i).q(socket, this.f63817d.a().l().i(), bufferedSource, bufferedSink).k(this).l(i10).a();
        this.f63822i = a10;
        this.f63830q = Http2Connection.C.a().d();
        Http2Connection.A0(a10, false, null, 3, null);
    }

    private final boolean G(HttpUrl httpUrl) {
        Handshake handshake;
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        HttpUrl l10 = this.f63817d.a().l();
        if (httpUrl.o() != l10.o()) {
            return false;
        }
        if (Intrinsics.areEqual(httpUrl.i(), l10.i())) {
            return true;
        }
        if (this.f63826m || (handshake = this.f63820g) == null) {
            return false;
        }
        Intrinsics.checkNotNull(handshake);
        if (!e(httpUrl, handshake)) {
            return false;
        }
        return true;
    }

    private final boolean e(HttpUrl httpUrl, Handshake handshake) {
        List<Certificate> d10 = handshake.d();
        if (d10.isEmpty()) {
            return false;
        }
        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.f64173a;
        String i10 = httpUrl.i();
        Certificate certificate = d10.get(0);
        Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
        if (!okHostnameVerifier.e(i10, (X509Certificate) certificate)) {
            return false;
        }
        return true;
    }

    private final void h(int i10, int i11, Call call, EventListener eventListener) throws IOException {
        int i12;
        Socket createSocket;
        Proxy b10 = this.f63817d.b();
        Address a10 = this.f63817d.a();
        Proxy.Type type = b10.type();
        if (type == null) {
            i12 = -1;
        } else {
            i12 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i12 != 1 && i12 != 2) {
            createSocket = new Socket(b10);
        } else {
            createSocket = a10.j().createSocket();
            Intrinsics.checkNotNull(createSocket);
        }
        this.f63818e = createSocket;
        eventListener.j(call, this.f63817d.d(), b10);
        createSocket.setSoTimeout(i11);
        try {
            Platform.f64128a.g().f(createSocket, this.f63817d.d(), i10);
            try {
                this.f63823j = Okio.buffer(Okio.source(createSocket));
                this.f63824k = Okio.buffer(Okio.sink(createSocket));
            } catch (NullPointerException e10) {
                if (!Intrinsics.areEqual(e10.getMessage(), "throw with null exception")) {
                    return;
                }
                throw new IOException(e10);
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f63817d.d());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private final void i(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        SSLSocket sSLSocket;
        Protocol protocol;
        final Address a10 = this.f63817d.a();
        SSLSocketFactory k10 = a10.k();
        SSLSocket sSLSocket2 = null;
        String str = null;
        try {
            Intrinsics.checkNotNull(k10);
            Socket createSocket = k10.createSocket(this.f63818e, a10.l().i(), a10.l().o(), true);
            Intrinsics.checkNotNull(createSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            sSLSocket = (SSLSocket) createSocket;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ConnectionSpec a11 = connectionSpecSelector.a(sSLSocket);
            if (a11.h()) {
                Platform.f64128a.g().e(sSLSocket, a10.l().i(), a10.f());
            }
            sSLSocket.startHandshake();
            SSLSession sslSocketSession = sSLSocket.getSession();
            Handshake.Companion companion = Handshake.f63446e;
            Intrinsics.checkNotNullExpressionValue(sslSocketSession, "sslSocketSession");
            final Handshake a12 = companion.a(sslSocketSession);
            HostnameVerifier e10 = a10.e();
            Intrinsics.checkNotNull(e10);
            if (!e10.verify(a10.l().i(), sslSocketSession)) {
                List<Certificate> d10 = a12.d();
                if (!d10.isEmpty()) {
                    Certificate certificate = d10.get(0);
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate x509Certificate = (X509Certificate) certificate;
                    throw new SSLPeerUnverifiedException(StringsKt.p("\n              |Hostname " + a10.l().i() + " not verified:\n              |    certificate: " + CertificatePinner.f63307c.a(x509Certificate) + "\n              |    DN: " + x509Certificate.getSubjectDN().getName() + "\n              |    subjectAltNames: " + OkHostnameVerifier.f64173a.a(x509Certificate) + "\n              ", null, 1, null));
                }
                throw new SSLPeerUnverifiedException("Hostname " + a10.l().i() + " not verified (no certificates)");
            }
            final CertificatePinner a13 = a10.a();
            Intrinsics.checkNotNull(a13);
            this.f63820g = new Handshake(a12.e(), a12.a(), a12.c(), new Function0<List<? extends Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final List<? extends Certificate> invoke() {
                    CertificateChainCleaner d11 = CertificatePinner.this.d();
                    Intrinsics.checkNotNull(d11);
                    return d11.a(a12.d(), a10.l().i());
                }
            });
            a13.b(a10.l().i(), new Function0<List<? extends X509Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final List<? extends X509Certificate> invoke() {
                    Handshake handshake;
                    handshake = RealConnection.this.f63820g;
                    Intrinsics.checkNotNull(handshake);
                    List<Certificate> d11 = handshake.d();
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(d11, 10));
                    for (Certificate certificate2 : d11) {
                        Intrinsics.checkNotNull(certificate2, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                        arrayList.add((X509Certificate) certificate2);
                    }
                    return arrayList;
                }
            });
            if (a11.h()) {
                str = Platform.f64128a.g().h(sSLSocket);
            }
            this.f63819f = sSLSocket;
            this.f63823j = Okio.buffer(Okio.source(sSLSocket));
            this.f63824k = Okio.buffer(Okio.sink(sSLSocket));
            if (str != null) {
                protocol = Protocol.Companion.a(str);
            } else {
                protocol = Protocol.HTTP_1_1;
            }
            this.f63821h = protocol;
            Platform.f64128a.g().b(sSLSocket);
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                Platform.f64128a.g().b(sSLSocket2);
            }
            if (sSLSocket2 != null) {
                Util.n(sSLSocket2);
            }
            throw th;
        }
    }

    private final void j(int i10, int i11, int i12, Call call, EventListener eventListener) throws IOException {
        Request l10 = l();
        HttpUrl l11 = l10.l();
        for (int i13 = 0; i13 < 21; i13++) {
            h(i10, i11, call, eventListener);
            l10 = k(i11, i12, l10, l11);
            if (l10 != null) {
                Socket socket = this.f63818e;
                if (socket != null) {
                    Util.n(socket);
                }
                this.f63818e = null;
                this.f63824k = null;
                this.f63823j = null;
                eventListener.h(call, this.f63817d.d(), this.f63817d.b(), null);
            } else {
                return;
            }
        }
    }

    private final Request k(int i10, int i11, Request request, HttpUrl httpUrl) throws IOException {
        String str = "CONNECT " + Util.T(httpUrl, true) + " HTTP/1.1";
        while (true) {
            BufferedSource bufferedSource = this.f63823j;
            Intrinsics.checkNotNull(bufferedSource);
            BufferedSink bufferedSink = this.f63824k;
            Intrinsics.checkNotNull(bufferedSink);
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSource, bufferedSink);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            bufferedSource.timeout().timeout(i10, timeUnit);
            bufferedSink.timeout().timeout(i11, timeUnit);
            http1ExchangeCodec.w(request.f(), str);
            http1ExchangeCodec.finishRequest();
            Response.Builder readResponseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            Intrinsics.checkNotNull(readResponseHeaders);
            Response c10 = readResponseHeaders.r(request).c();
            http1ExchangeCodec.v(c10);
            int o10 = c10.o();
            if (o10 != 200) {
                if (o10 == 407) {
                    Request a10 = this.f63817d.a().h().a(this.f63817d, c10);
                    if (a10 != null) {
                        if (StringsKt.G("close", Response.t(c10, "Connection", null, 2, null), true)) {
                            return a10;
                        }
                        request = a10;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                } else {
                    throw new IOException("Unexpected response code for CONNECT: " + c10.o());
                }
            } else if (bufferedSource.getBuffer().exhausted() && bufferedSink.getBuffer().exhausted()) {
                return null;
            } else {
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
        }
    }

    private final Request l() throws IOException {
        Request b10 = new Request.Builder().l(this.f63817d.a().l()).g("CONNECT", null).e("Host", Util.T(this.f63817d.a().l(), true)).e("Proxy-Connection", "Keep-Alive").e(Command.HTTP_HEADER_USER_AGENT, com.applovin.shadow.okhttp3.internal.Util.userAgent).b();
        Request a10 = this.f63817d.a().h().a(this.f63817d, new Response.Builder().r(b10).p(Protocol.HTTP_1_1).g(407).m("Preemptive Authenticate").b(Util.f63629c).s(-1L).q(-1L).j("Proxy-Authenticate", "OkHttp-Preemptive").c());
        if (a10 != null) {
            return a10;
        }
        return b10;
    }

    private final void m(ConnectionSpecSelector connectionSpecSelector, int i10, Call call, EventListener eventListener) throws IOException {
        if (this.f63817d.a().k() == null) {
            List<Protocol> f10 = this.f63817d.a().f();
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (f10.contains(protocol)) {
                this.f63819f = this.f63818e;
                this.f63821h = protocol;
                F(i10);
                return;
            }
            this.f63819f = this.f63818e;
            this.f63821h = Protocol.HTTP_1_1;
            return;
        }
        eventListener.C(call);
        i(connectionSpecSelector);
        eventListener.B(call, this.f63820g);
        if (this.f63821h == Protocol.HTTP_2) {
            F(i10);
        }
    }

    @NotNull
    public Route A() {
        return this.f63817d;
    }

    public final void C(long j10) {
        this.f63832s = j10;
    }

    public final void D(boolean z10) {
        this.f63825l = z10;
    }

    @NotNull
    public Socket E() {
        Socket socket = this.f63819f;
        Intrinsics.checkNotNull(socket);
        return socket;
    }

    public final synchronized void H(@NotNull RealCall call, @Nullable IOException iOException) {
        try {
            Intrinsics.checkNotNullParameter(call, "call");
            if (iOException instanceof StreamResetException) {
                if (((StreamResetException) iOException).f64094a == ErrorCode.REFUSED_STREAM) {
                    int i10 = this.f63829p + 1;
                    this.f63829p = i10;
                    if (i10 > 1) {
                        this.f63825l = true;
                        this.f63827n++;
                    }
                } else if (((StreamResetException) iOException).f64094a != ErrorCode.CANCEL || !call.isCanceled()) {
                    this.f63825l = true;
                    this.f63827n++;
                }
            } else if (!v() || (iOException instanceof ConnectionShutdownException)) {
                this.f63825l = true;
                if (this.f63828o == 0) {
                    if (iOException != null) {
                        g(call.k(), this.f63817d, iOException);
                    }
                    this.f63827n++;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public synchronized void a(@NotNull Http2Connection connection, @NotNull Settings settings) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.f63830q = settings.d();
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void b(@NotNull Http2Stream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.d(ErrorCode.REFUSED_STREAM, null);
    }

    public final void d() {
        Socket socket = this.f63818e;
        if (socket != null) {
            Util.n(socket);
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
    public final void f(int r17, int r18, int r19, int r20, boolean r21, @org.jetbrains.annotations.NotNull okhttp3.Call r22, @org.jetbrains.annotations.NotNull okhttp3.EventListener r23) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.f(int, int, int, int, boolean, okhttp3.Call, okhttp3.EventListener):void");
    }

    public final void g(@NotNull OkHttpClient client, @NotNull Route failedRoute, @NotNull IOException failure) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (failedRoute.b().type() != Proxy.Type.DIRECT) {
            Address a10 = failedRoute.a();
            a10.i().connectFailed(a10.l().u(), failedRoute.b().address(), failure);
        }
        client.u().b(failedRoute);
    }

    @NotNull
    public final List<Reference<RealCall>> n() {
        return this.f63831r;
    }

    public final long o() {
        return this.f63832s;
    }

    public final boolean p() {
        return this.f63825l;
    }

    @Override // okhttp3.Connection
    @NotNull
    public Protocol protocol() {
        Protocol protocol = this.f63821h;
        Intrinsics.checkNotNull(protocol);
        return protocol;
    }

    public final int q() {
        return this.f63827n;
    }

    @Nullable
    public Handshake r() {
        return this.f63820g;
    }

    public final synchronized void s() {
        this.f63828o++;
    }

    public final boolean t(@NotNull Address address, @Nullable List<Route> list) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (Util.f63634h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        } else if (this.f63831r.size() >= this.f63830q || this.f63825l || !this.f63817d.a().d(address)) {
            return false;
        } else {
            if (Intrinsics.areEqual(address.l().i(), A().a().l().i())) {
                return true;
            }
            if (this.f63822i == null || list == null || !B(list) || address.e() != OkHostnameVerifier.f64173a || !G(address.l())) {
                return false;
            }
            try {
                CertificatePinner a10 = address.a();
                Intrinsics.checkNotNull(a10);
                String i10 = address.l().i();
                Handshake r10 = r();
                Intrinsics.checkNotNull(r10);
                a10.a(i10, r10.d());
                return true;
            } catch (SSLPeerUnverifiedException unused) {
                return false;
            }
        }
    }

    @NotNull
    public String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f63817d.a().l().i());
        sb2.append(':');
        sb2.append(this.f63817d.a().l().o());
        sb2.append(", proxy=");
        sb2.append(this.f63817d.b());
        sb2.append(" hostAddress=");
        sb2.append(this.f63817d.d());
        sb2.append(" cipherSuite=");
        Handshake handshake = this.f63820g;
        if (handshake == null || (obj = handshake.a()) == null) {
            obj = DevicePublicKeyStringDef.NONE;
        }
        sb2.append(obj);
        sb2.append(" protocol=");
        sb2.append(this.f63821h);
        sb2.append('}');
        return sb2.toString();
    }

    public final boolean u(boolean z10) {
        long j10;
        if (Util.f63634h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        long nanoTime = System.nanoTime();
        Socket socket = this.f63818e;
        Intrinsics.checkNotNull(socket);
        Socket socket2 = this.f63819f;
        Intrinsics.checkNotNull(socket2);
        BufferedSource bufferedSource = this.f63823j;
        Intrinsics.checkNotNull(bufferedSource);
        if (!socket.isClosed() && !socket2.isClosed() && !socket2.isInputShutdown() && !socket2.isOutputShutdown()) {
            Http2Connection http2Connection = this.f63822i;
            if (http2Connection != null) {
                return http2Connection.f0(nanoTime);
            }
            synchronized (this) {
                j10 = nanoTime - this.f63832s;
            }
            if (j10 >= com.applovin.shadow.okhttp3.internal.connection.RealConnection.IDLE_CONNECTION_HEALTHY_NS && z10) {
                return Util.G(socket2, bufferedSource);
            }
            return true;
        }
        return false;
    }

    public final boolean v() {
        if (this.f63822i != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ExchangeCodec w(@NotNull OkHttpClient client, @NotNull RealInterceptorChain chain) throws SocketException {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Socket socket = this.f63819f;
        Intrinsics.checkNotNull(socket);
        BufferedSource bufferedSource = this.f63823j;
        Intrinsics.checkNotNull(bufferedSource);
        BufferedSink bufferedSink = this.f63824k;
        Intrinsics.checkNotNull(bufferedSink);
        Http2Connection http2Connection = this.f63822i;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(client, this, chain, http2Connection);
        }
        socket.setSoTimeout(chain.j());
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bufferedSource.timeout().timeout(chain.g(), timeUnit);
        bufferedSink.timeout().timeout(chain.i(), timeUnit);
        return new Http1ExchangeCodec(client, this, bufferedSource, bufferedSink);
    }

    @NotNull
    public final RealWebSocket.Streams x(@NotNull final Exchange exchange) throws SocketException {
        Intrinsics.checkNotNullParameter(exchange, "exchange");
        Socket socket = this.f63819f;
        Intrinsics.checkNotNull(socket);
        final BufferedSource bufferedSource = this.f63823j;
        Intrinsics.checkNotNull(bufferedSource);
        final BufferedSink bufferedSink = this.f63824k;
        Intrinsics.checkNotNull(bufferedSink);
        socket.setSoTimeout(0);
        z();
        return new RealWebSocket.Streams(bufferedSource, bufferedSink) { // from class: okhttp3.internal.connection.RealConnection$newWebSocketStreams$1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                exchange.a(-1L, true, true, null);
            }
        };
    }

    public final synchronized void y() {
        this.f63826m = true;
    }

    public final synchronized void z() {
        this.f63825l = true;
    }
}

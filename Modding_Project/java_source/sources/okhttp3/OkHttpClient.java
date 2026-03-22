package okhttp3;

import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.WebSocket;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OkHttpClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1079:1\n2624#2,3:1080\n2624#2,3:1083\n1#3:1086\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n*L\n225#1:1080,3\n255#1:1083,3\n*E\n"})
/* loaded from: classes8.dex */
public class OkHttpClient implements Cloneable, Call.Factory, WebSocket.Factory {
    @NotNull
    public static final Companion E = new Companion(null);
    @NotNull
    private static final List<Protocol> F = Util.w(Protocol.HTTP_2, Protocol.HTTP_1_1);
    @NotNull
    private static final List<ConnectionSpec> G = Util.w(ConnectionSpec.f63396i, ConnectionSpec.f63398k);
    private final int A;
    private final int B;
    private final long C;
    @NotNull
    private final RouteDatabase D;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Dispatcher f63517a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ConnectionPool f63518b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Interceptor> f63519c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<Interceptor> f63520d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final EventListener.Factory f63521e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f63522f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Authenticator f63523g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f63524h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f63525i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final CookieJar f63526j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Cache f63527k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final Dns f63528l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final Proxy f63529m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ProxySelector f63530n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final Authenticator f63531o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final SocketFactory f63532p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final SSLSocketFactory f63533q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final X509TrustManager f63534r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final List<ConnectionSpec> f63535s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private final List<Protocol> f63536t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final HostnameVerifier f63537u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final CertificatePinner f63538v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final CertificateChainCleaner f63539w;

    /* renamed from: x  reason: collision with root package name */
    private final int f63540x;

    /* renamed from: y  reason: collision with root package name */
    private final int f63541y;

    /* renamed from: z  reason: collision with root package name */
    private final int f63542z;

    /* compiled from: OkHttpClient.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<ConnectionSpec> a() {
            return OkHttpClient.G;
        }

        @NotNull
        public final List<Protocol> b() {
            return OkHttpClient.F;
        }

        private Companion() {
        }
    }

    public OkHttpClient(@NotNull Builder builder) {
        ProxySelector K;
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f63517a = builder.x();
        this.f63518b = builder.u();
        this.f63519c = Util.V(builder.D());
        this.f63520d = Util.V(builder.F());
        this.f63521e = builder.z();
        this.f63522f = builder.M();
        this.f63523g = builder.o();
        this.f63524h = builder.A();
        this.f63525i = builder.B();
        this.f63526j = builder.w();
        this.f63527k = builder.p();
        this.f63528l = builder.y();
        this.f63529m = builder.I();
        if (builder.I() != null) {
            K = NullProxySelector.f64160a;
        } else {
            K = builder.K();
            K = K == null ? ProxySelector.getDefault() : K;
            if (K == null) {
                K = NullProxySelector.f64160a;
            }
        }
        this.f63530n = K;
        this.f63531o = builder.J();
        this.f63532p = builder.O();
        List<ConnectionSpec> v10 = builder.v();
        this.f63535s = v10;
        this.f63536t = builder.H();
        this.f63537u = builder.C();
        this.f63540x = builder.q();
        this.f63541y = builder.t();
        this.f63542z = builder.L();
        this.A = builder.Q();
        this.B = builder.G();
        this.C = builder.E();
        RouteDatabase N = builder.N();
        this.D = N == null ? new RouteDatabase() : N;
        List<ConnectionSpec> list = v10;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (ConnectionSpec connectionSpec : list) {
                if (connectionSpec.f()) {
                    if (builder.P() != null) {
                        this.f63533q = builder.P();
                        CertificateChainCleaner r10 = builder.r();
                        Intrinsics.checkNotNull(r10);
                        this.f63539w = r10;
                        X509TrustManager R = builder.R();
                        Intrinsics.checkNotNull(R);
                        this.f63534r = R;
                        CertificatePinner s10 = builder.s();
                        Intrinsics.checkNotNull(r10);
                        this.f63538v = s10.e(r10);
                    } else {
                        Platform.Companion companion = Platform.f64128a;
                        X509TrustManager p10 = companion.g().p();
                        this.f63534r = p10;
                        Platform g10 = companion.g();
                        Intrinsics.checkNotNull(p10);
                        this.f63533q = g10.o(p10);
                        CertificateChainCleaner.Companion companion2 = CertificateChainCleaner.f64172a;
                        Intrinsics.checkNotNull(p10);
                        CertificateChainCleaner a10 = companion2.a(p10);
                        this.f63539w = a10;
                        CertificatePinner s11 = builder.s();
                        Intrinsics.checkNotNull(a10);
                        this.f63538v = s11.e(a10);
                    }
                    J();
                }
            }
        }
        this.f63533q = null;
        this.f63539w = null;
        this.f63534r = null;
        this.f63538v = CertificatePinner.f63308d;
        J();
    }

    private final void J() {
        List<Interceptor> list = this.f63519c;
        Intrinsics.checkNotNull(list, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        if (!list.contains(null)) {
            List<Interceptor> list2 = this.f63520d;
            Intrinsics.checkNotNull(list2, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
            if (!list2.contains(null)) {
                List<ConnectionSpec> list3 = this.f63535s;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    for (ConnectionSpec connectionSpec : list3) {
                        if (connectionSpec.f()) {
                            if (this.f63533q != null) {
                                if (this.f63539w != null) {
                                    if (this.f63534r == null) {
                                        throw new IllegalStateException("x509TrustManager == null");
                                    }
                                    return;
                                }
                                throw new IllegalStateException("certificateChainCleaner == null");
                            }
                            throw new IllegalStateException("sslSocketFactory == null");
                        }
                    }
                }
                if (this.f63533q == null) {
                    if (this.f63539w == null) {
                        if (this.f63534r == null) {
                            if (Intrinsics.areEqual(this.f63538v, CertificatePinner.f63308d)) {
                                return;
                            }
                            throw new IllegalStateException("Check failed.");
                        }
                        throw new IllegalStateException("Check failed.");
                    }
                    throw new IllegalStateException("Check failed.");
                }
                throw new IllegalStateException("Check failed.");
            }
            throw new IllegalStateException(("Null network interceptor: " + this.f63520d).toString());
        }
        throw new IllegalStateException(("Null interceptor: " + this.f63519c).toString());
    }

    public final int A() {
        return this.B;
    }

    @NotNull
    public final List<Protocol> B() {
        return this.f63536t;
    }

    @Nullable
    public final Proxy C() {
        return this.f63529m;
    }

    @NotNull
    public final Authenticator D() {
        return this.f63531o;
    }

    @NotNull
    public final ProxySelector E() {
        return this.f63530n;
    }

    public final int F() {
        return this.f63542z;
    }

    public final boolean G() {
        return this.f63522f;
    }

    @NotNull
    public final SocketFactory H() {
        return this.f63532p;
    }

    @NotNull
    public final SSLSocketFactory I() {
        SSLSocketFactory sSLSocketFactory = this.f63533q;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    public final int K() {
        return this.A;
    }

    @Nullable
    public final X509TrustManager L() {
        return this.f63534r;
    }

    @Override // okhttp3.Call.Factory
    @NotNull
    public Call a(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return new RealCall(this, request, false);
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    @NotNull
    public final Authenticator f() {
        return this.f63523g;
    }

    @Nullable
    public final Cache g() {
        return this.f63527k;
    }

    public final int i() {
        return this.f63540x;
    }

    @Nullable
    public final CertificateChainCleaner j() {
        return this.f63539w;
    }

    @NotNull
    public final CertificatePinner k() {
        return this.f63538v;
    }

    public final int l() {
        return this.f63541y;
    }

    @NotNull
    public final ConnectionPool m() {
        return this.f63518b;
    }

    @NotNull
    public final List<ConnectionSpec> n() {
        return this.f63535s;
    }

    @NotNull
    public final CookieJar o() {
        return this.f63526j;
    }

    @NotNull
    public final Dispatcher p() {
        return this.f63517a;
    }

    @NotNull
    public final Dns q() {
        return this.f63528l;
    }

    @NotNull
    public final EventListener.Factory r() {
        return this.f63521e;
    }

    public final boolean s() {
        return this.f63524h;
    }

    public final boolean t() {
        return this.f63525i;
    }

    @NotNull
    public final RouteDatabase u() {
        return this.D;
    }

    @NotNull
    public final HostnameVerifier v() {
        return this.f63537u;
    }

    @NotNull
    public final List<Interceptor> w() {
        return this.f63519c;
    }

    public final long x() {
        return this.C;
    }

    @NotNull
    public final List<Interceptor> y() {
        return this.f63520d;
    }

    @NotNull
    public Builder z() {
        return new Builder(this);
    }

    /* compiled from: OkHttpClient.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1079:1\n1#2:1080\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {
        private int A;
        private int B;
        private long C;
        @Nullable
        private RouteDatabase D;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private Dispatcher f63543a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private ConnectionPool f63544b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Interceptor> f63545c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<Interceptor> f63546d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private EventListener.Factory f63547e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f63548f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private Authenticator f63549g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f63550h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f63551i;
        @NotNull

        /* renamed from: j  reason: collision with root package name */
        private CookieJar f63552j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private Cache f63553k;
        @NotNull

        /* renamed from: l  reason: collision with root package name */
        private Dns f63554l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private Proxy f63555m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private ProxySelector f63556n;
        @NotNull

        /* renamed from: o  reason: collision with root package name */
        private Authenticator f63557o;
        @NotNull

        /* renamed from: p  reason: collision with root package name */
        private SocketFactory f63558p;
        @Nullable

        /* renamed from: q  reason: collision with root package name */
        private SSLSocketFactory f63559q;
        @Nullable

        /* renamed from: r  reason: collision with root package name */
        private X509TrustManager f63560r;
        @NotNull

        /* renamed from: s  reason: collision with root package name */
        private List<ConnectionSpec> f63561s;
        @NotNull

        /* renamed from: t  reason: collision with root package name */
        private List<? extends Protocol> f63562t;
        @NotNull

        /* renamed from: u  reason: collision with root package name */
        private HostnameVerifier f63563u;
        @NotNull

        /* renamed from: v  reason: collision with root package name */
        private CertificatePinner f63564v;
        @Nullable

        /* renamed from: w  reason: collision with root package name */
        private CertificateChainCleaner f63565w;

        /* renamed from: x  reason: collision with root package name */
        private int f63566x;

        /* renamed from: y  reason: collision with root package name */
        private int f63567y;

        /* renamed from: z  reason: collision with root package name */
        private int f63568z;

        public Builder() {
            this.f63543a = new Dispatcher();
            this.f63544b = new ConnectionPool();
            this.f63545c = new ArrayList();
            this.f63546d = new ArrayList();
            this.f63547e = Util.g(EventListener.f63438b);
            this.f63548f = true;
            Authenticator authenticator = Authenticator.f63245b;
            this.f63549g = authenticator;
            this.f63550h = true;
            this.f63551i = true;
            this.f63552j = CookieJar.f63424b;
            this.f63554l = Dns.f63435b;
            this.f63557o = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            Intrinsics.checkNotNullExpressionValue(socketFactory, "getDefault()");
            this.f63558p = socketFactory;
            Companion companion = OkHttpClient.E;
            this.f63561s = companion.a();
            this.f63562t = companion.b();
            this.f63563u = OkHostnameVerifier.f64173a;
            this.f63564v = CertificatePinner.f63308d;
            this.f63567y = 10000;
            this.f63568z = 10000;
            this.A = 10000;
            this.C = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        }

        public final boolean A() {
            return this.f63550h;
        }

        public final boolean B() {
            return this.f63551i;
        }

        @NotNull
        public final HostnameVerifier C() {
            return this.f63563u;
        }

        @NotNull
        public final List<Interceptor> D() {
            return this.f63545c;
        }

        public final long E() {
            return this.C;
        }

        @NotNull
        public final List<Interceptor> F() {
            return this.f63546d;
        }

        public final int G() {
            return this.B;
        }

        @NotNull
        public final List<Protocol> H() {
            return this.f63562t;
        }

        @Nullable
        public final Proxy I() {
            return this.f63555m;
        }

        @NotNull
        public final Authenticator J() {
            return this.f63557o;
        }

        @Nullable
        public final ProxySelector K() {
            return this.f63556n;
        }

        public final int L() {
            return this.f63568z;
        }

        public final boolean M() {
            return this.f63548f;
        }

        @Nullable
        public final RouteDatabase N() {
            return this.D;
        }

        @NotNull
        public final SocketFactory O() {
            return this.f63558p;
        }

        @Nullable
        public final SSLSocketFactory P() {
            return this.f63559q;
        }

        public final int Q() {
            return this.A;
        }

        @Nullable
        public final X509TrustManager R() {
            return this.f63560r;
        }

        @NotNull
        public final Builder S(@NotNull HostnameVerifier hostnameVerifier) {
            Intrinsics.checkNotNullParameter(hostnameVerifier, "hostnameVerifier");
            if (!Intrinsics.areEqual(hostnameVerifier, this.f63563u)) {
                this.D = null;
            }
            this.f63563u = hostnameVerifier;
            return this;
        }

        @NotNull
        public final Builder T(@NotNull List<? extends Protocol> protocols) {
            Intrinsics.checkNotNullParameter(protocols, "protocols");
            List g12 = CollectionsKt.g1(protocols);
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (!g12.contains(protocol) && !g12.contains(Protocol.HTTP_1_1)) {
                throw new IllegalArgumentException(("protocols must contain h2_prior_knowledge or http/1.1: " + g12).toString());
            } else if (g12.contains(protocol) && g12.size() > 1) {
                throw new IllegalArgumentException(("protocols containing h2_prior_knowledge cannot use other protocols: " + g12).toString());
            } else if (!g12.contains(Protocol.HTTP_1_0)) {
                Intrinsics.checkNotNull(g12, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Protocol?>");
                if (!g12.contains(null)) {
                    g12.remove(Protocol.SPDY_3);
                    if (!Intrinsics.areEqual(g12, this.f63562t)) {
                        this.D = null;
                    }
                    List<? extends Protocol> unmodifiableList = Collections.unmodifiableList(g12);
                    Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(protocolsCopy)");
                    this.f63562t = unmodifiableList;
                    return this;
                }
                throw new IllegalArgumentException("protocols must not contain null");
            } else {
                throw new IllegalArgumentException(("protocols must not contain http/1.0: " + g12).toString());
            }
        }

        @NotNull
        public final Builder U(@NotNull ProxySelector proxySelector) {
            Intrinsics.checkNotNullParameter(proxySelector, "proxySelector");
            if (!Intrinsics.areEqual(proxySelector, this.f63556n)) {
                this.D = null;
            }
            this.f63556n = proxySelector;
            return this;
        }

        @NotNull
        public final Builder V(long j10, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            this.f63568z = Util.k("timeout", j10, unit);
            return this;
        }

        @NotNull
        public final Builder W(boolean z10) {
            this.f63548f = z10;
            return this;
        }

        @NotNull
        public final Builder X(@NotNull SSLSocketFactory sslSocketFactory, @NotNull X509TrustManager trustManager) {
            Intrinsics.checkNotNullParameter(sslSocketFactory, "sslSocketFactory");
            Intrinsics.checkNotNullParameter(trustManager, "trustManager");
            if (!Intrinsics.areEqual(sslSocketFactory, this.f63559q) || !Intrinsics.areEqual(trustManager, this.f63560r)) {
                this.D = null;
            }
            this.f63559q = sslSocketFactory;
            this.f63565w = CertificateChainCleaner.f64172a.a(trustManager);
            this.f63560r = trustManager;
            return this;
        }

        @NotNull
        public final Builder Y(long j10, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            this.A = Util.k("timeout", j10, unit);
            return this;
        }

        @NotNull
        public final Builder a(@NotNull Interceptor interceptor) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            this.f63545c.add(interceptor);
            return this;
        }

        @NotNull
        public final Builder b(@NotNull Interceptor interceptor) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            this.f63546d.add(interceptor);
            return this;
        }

        @NotNull
        public final OkHttpClient c() {
            return new OkHttpClient(this);
        }

        @NotNull
        public final Builder d(@Nullable Cache cache) {
            this.f63553k = cache;
            return this;
        }

        @NotNull
        public final Builder e(long j10, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            this.f63566x = Util.k("timeout", j10, unit);
            return this;
        }

        @NotNull
        public final Builder f(long j10, @NotNull TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            this.f63567y = Util.k("timeout", j10, unit);
            return this;
        }

        @NotNull
        public final Builder g(@NotNull ConnectionPool connectionPool) {
            Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
            this.f63544b = connectionPool;
            return this;
        }

        @NotNull
        public final Builder h(@NotNull List<ConnectionSpec> connectionSpecs) {
            Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
            if (!Intrinsics.areEqual(connectionSpecs, this.f63561s)) {
                this.D = null;
            }
            this.f63561s = Util.V(connectionSpecs);
            return this;
        }

        @NotNull
        public final Builder i(@NotNull Dispatcher dispatcher) {
            Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
            this.f63543a = dispatcher;
            return this;
        }

        @NotNull
        public final Builder j(@NotNull Dns dns) {
            Intrinsics.checkNotNullParameter(dns, "dns");
            if (!Intrinsics.areEqual(dns, this.f63554l)) {
                this.D = null;
            }
            this.f63554l = dns;
            return this;
        }

        @NotNull
        public final Builder k(@NotNull EventListener eventListener) {
            Intrinsics.checkNotNullParameter(eventListener, "eventListener");
            this.f63547e = Util.g(eventListener);
            return this;
        }

        @NotNull
        public final Builder l(@NotNull EventListener.Factory eventListenerFactory) {
            Intrinsics.checkNotNullParameter(eventListenerFactory, "eventListenerFactory");
            this.f63547e = eventListenerFactory;
            return this;
        }

        @NotNull
        public final Builder m(boolean z10) {
            this.f63550h = z10;
            return this;
        }

        @NotNull
        public final Builder n(boolean z10) {
            this.f63551i = z10;
            return this;
        }

        @NotNull
        public final Authenticator o() {
            return this.f63549g;
        }

        @Nullable
        public final Cache p() {
            return this.f63553k;
        }

        public final int q() {
            return this.f63566x;
        }

        @Nullable
        public final CertificateChainCleaner r() {
            return this.f63565w;
        }

        @NotNull
        public final CertificatePinner s() {
            return this.f63564v;
        }

        public final int t() {
            return this.f63567y;
        }

        @NotNull
        public final ConnectionPool u() {
            return this.f63544b;
        }

        @NotNull
        public final List<ConnectionSpec> v() {
            return this.f63561s;
        }

        @NotNull
        public final CookieJar w() {
            return this.f63552j;
        }

        @NotNull
        public final Dispatcher x() {
            return this.f63543a;
        }

        @NotNull
        public final Dns y() {
            return this.f63554l;
        }

        @NotNull
        public final EventListener.Factory z() {
            return this.f63547e;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull OkHttpClient okHttpClient) {
            this();
            Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
            this.f63543a = okHttpClient.p();
            this.f63544b = okHttpClient.m();
            CollectionsKt.E(this.f63545c, okHttpClient.w());
            CollectionsKt.E(this.f63546d, okHttpClient.y());
            this.f63547e = okHttpClient.r();
            this.f63548f = okHttpClient.G();
            this.f63549g = okHttpClient.f();
            this.f63550h = okHttpClient.s();
            this.f63551i = okHttpClient.t();
            this.f63552j = okHttpClient.o();
            this.f63553k = okHttpClient.g();
            this.f63554l = okHttpClient.q();
            this.f63555m = okHttpClient.C();
            this.f63556n = okHttpClient.E();
            this.f63557o = okHttpClient.D();
            this.f63558p = okHttpClient.H();
            this.f63559q = okHttpClient.f63533q;
            this.f63560r = okHttpClient.L();
            this.f63561s = okHttpClient.n();
            this.f63562t = okHttpClient.B();
            this.f63563u = okHttpClient.v();
            this.f63564v = okHttpClient.k();
            this.f63565w = okHttpClient.j();
            this.f63566x = okHttpClient.i();
            this.f63567y = okHttpClient.l();
            this.f63568z = okHttpClient.F();
            this.A = okHttpClient.K();
            this.B = okHttpClient.A();
            this.C = okHttpClient.x();
            this.D = okHttpClient.u();
        }
    }

    public OkHttpClient() {
        this(new Builder());
    }
}

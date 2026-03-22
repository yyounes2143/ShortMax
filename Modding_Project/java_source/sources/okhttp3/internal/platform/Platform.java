package okhttp3.internal.platform;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal.platform.android.AndroidLog;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.BasicTrustRootIndex;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Platform.kt */
@Metadata
/* loaded from: classes8.dex */
public class Platform {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f64128a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static volatile Platform f64129b;

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f64130c;

    /* compiled from: Platform.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.kt\nokhttp3/internal/platform/Platform$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,286:1\n766#2:287\n857#2,2:288\n1549#2:290\n1620#2,3:291\n*S KotlinDebug\n*F\n+ 1 Platform.kt\nokhttp3/internal/platform/Platform$Companion\n*L\n193#1:287\n193#1:288,2\n193#1:290\n193#1:291,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Platform d() {
            AndroidLog.f64135a.b();
            Platform a10 = Android10Platform.f64098e.a();
            if (a10 == null) {
                Platform a11 = AndroidPlatform.f64101f.a();
                Intrinsics.checkNotNull(a11);
                return a11;
            }
            return a10;
        }

        private final Platform e() {
            OpenJSSEPlatform a10;
            BouncyCastlePlatform a11;
            ConscryptPlatform b10;
            if (j() && (b10 = ConscryptPlatform.f64110e.b()) != null) {
                return b10;
            }
            if (i() && (a11 = BouncyCastlePlatform.f64107e.a()) != null) {
                return a11;
            }
            if (k() && (a10 = OpenJSSEPlatform.f64125e.a()) != null) {
                return a10;
            }
            Jdk9Platform a12 = Jdk9Platform.f64123d.a();
            if (a12 != null) {
                return a12;
            }
            Platform a13 = Jdk8WithJettyBootPlatform.f64114i.a();
            if (a13 != null) {
                return a13;
            }
            return new Platform();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Platform f() {
            if (h()) {
                return d();
            }
            return e();
        }

        private final boolean i() {
            return Intrinsics.areEqual("BC", Security.getProviders()[0].getName());
        }

        private final boolean j() {
            return Intrinsics.areEqual("Conscrypt", Security.getProviders()[0].getName());
        }

        private final boolean k() {
            return Intrinsics.areEqual("OpenJSSE", Security.getProviders()[0].getName());
        }

        @NotNull
        public final List<String> b(@NotNull List<? extends Protocol> protocols) {
            Intrinsics.checkNotNullParameter(protocols, "protocols");
            ArrayList<Protocol> arrayList = new ArrayList();
            for (Object obj : protocols) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
            for (Protocol protocol : arrayList) {
                arrayList2.add(protocol.toString());
            }
            return arrayList2;
        }

        @NotNull
        public final byte[] c(@NotNull List<? extends Protocol> protocols) {
            Intrinsics.checkNotNullParameter(protocols, "protocols");
            Buffer buffer = new Buffer();
            for (String str : b(protocols)) {
                buffer.writeByte(str.length());
                buffer.writeUtf8(str);
            }
            return buffer.readByteArray();
        }

        @NotNull
        public final Platform g() {
            return Platform.f64129b;
        }

        public final boolean h() {
            return Intrinsics.areEqual("Dalvik", System.getProperty("java.vm.name"));
        }

        private Companion() {
        }
    }

    static {
        Companion companion = new Companion(null);
        f64128a = companion;
        f64129b = companion.f();
        f64130c = Logger.getLogger(OkHttpClient.class.getName());
    }

    public static /* synthetic */ void l(Platform platform, String str, int i10, Throwable th2, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 4;
            }
            if ((i11 & 4) != 0) {
                th2 = null;
            }
            platform.k(str, i10, th2);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
    }

    public void b(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
    }

    @NotNull
    public CertificateChainCleaner c(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        return new BasicCertificateChainCleaner(d(trustManager));
    }

    @NotNull
    public TrustRootIndex d(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        X509Certificate[] acceptedIssuers = trustManager.getAcceptedIssuers();
        Intrinsics.checkNotNullExpressionValue(acceptedIssuers, "trustManager.acceptedIssuers");
        return new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void e(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
    }

    public void f(@NotNull Socket socket, @NotNull InetSocketAddress address, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "socket");
        Intrinsics.checkNotNullParameter(address, "address");
        socket.connect(address, i10);
    }

    @NotNull
    public final String g() {
        return "OkHttp";
    }

    @Nullable
    public String h(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        return null;
    }

    @Nullable
    public Object i(@NotNull String closer) {
        Intrinsics.checkNotNullParameter(closer, "closer");
        if (f64130c.isLoggable(Level.FINE)) {
            return new Throwable(closer);
        }
        return null;
    }

    public boolean j(@NotNull String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        return true;
    }

    public void k(@NotNull String message, int i10, @Nullable Throwable th2) {
        Level level;
        Intrinsics.checkNotNullParameter(message, "message");
        if (i10 == 5) {
            level = Level.WARNING;
        } else {
            level = Level.INFO;
        }
        f64130c.log(level, message, th2);
    }

    public void m(@NotNull String message, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (obj == null) {
            message = message + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        k(message, 5, (Throwable) obj);
    }

    @NotNull
    public SSLContext n() {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        Intrinsics.checkNotNullExpressionValue(sSLContext, "getInstance(\"TLS\")");
        return sSLContext;
    }

    @NotNull
    public SSLSocketFactory o(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        try {
            SSLContext n10 = n();
            n10.init(null, new TrustManager[]{trustManager}, null);
            SSLSocketFactory socketFactory = n10.getSocketFactory();
            Intrinsics.checkNotNullExpressionValue(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e10) {
            throw new AssertionError("No System TLS: " + e10, e10);
        }
    }

    @NotNull
    public X509TrustManager p() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        Intrinsics.checkNotNull(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                Intrinsics.checkNotNull(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                return (X509TrustManager) trustManager;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unexpected default trust managers: ");
        String arrays = Arrays.toString(trustManagers);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        sb2.append(arrays);
        throw new IllegalStateException(sb2.toString().toString());
    }

    @NotNull
    public String toString() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "javaClass.simpleName");
        return simpleName;
    }
}

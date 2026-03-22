package okhttp3.internal.platform;

import java.security.KeyStore;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Protocol;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConscryptPlatform.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConscryptPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConscryptPlatform.kt\nokhttp3/internal/platform/ConscryptPlatform\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,141:1\n37#2,2:142\n*S KotlinDebug\n*F\n+ 1 ConscryptPlatform.kt\nokhttp3/internal/platform/ConscryptPlatform\n*L\n89#1:142,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ConscryptPlatform extends Platform {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f64110e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f64111f;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Provider f64112d;

    /* compiled from: ConscryptPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(int i10, int i11, int i12) {
            Conscrypt.Version version = Conscrypt.version();
            if (version.major() != i10) {
                if (version.major() <= i10) {
                    return false;
                }
                return true;
            } else if (version.minor() != i11) {
                if (version.minor() <= i11) {
                    return false;
                }
                return true;
            } else if (version.patch() < i12) {
                return false;
            } else {
                return true;
            }
        }

        @Nullable
        public final ConscryptPlatform b() {
            if (!c()) {
                return null;
            }
            return new ConscryptPlatform(null);
        }

        public final boolean c() {
            return ConscryptPlatform.f64111f;
        }

        private Companion() {
        }
    }

    /* compiled from: ConscryptPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DisabledHostnameVerifier implements ConscryptHostnameVerifier {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final DisabledHostnameVerifier f64113a = new DisabledHostnameVerifier();

        private DisabledHostnameVerifier() {
        }
    }

    static {
        Companion companion = new Companion(null);
        f64110e = companion;
        boolean z10 = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, companion.getClass().getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (companion.a(2, 1, 0)) {
                    z10 = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f64111f = z10;
    }

    public /* synthetic */ ConscryptPlatform(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // okhttp3.internal.platform.Platform
    public void e(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        if (Conscrypt.isConscrypt(sslSocket)) {
            Conscrypt.setUseSessionTickets(sslSocket, true);
            Conscrypt.setApplicationProtocols(sslSocket, (String[]) Platform.f64128a.b(protocols).toArray(new String[0]));
            return;
        }
        super.e(sslSocket, str, protocols);
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String h(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        if (Conscrypt.isConscrypt(sslSocket)) {
            return Conscrypt.getApplicationProtocol(sslSocket);
        }
        return super.h(sslSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public SSLContext n() {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.f64112d);
        Intrinsics.checkNotNullExpressionValue(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public SSLSocketFactory o(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        SSLContext n10 = n();
        n10.init(null, new TrustManager[]{trustManager}, null);
        SSLSocketFactory socketFactory = n10.getSocketFactory();
        Intrinsics.checkNotNullExpressionValue(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // okhttp3.internal.platform.Platform
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
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                Conscrypt.setHostnameVerifier(x509TrustManager, DisabledHostnameVerifier.f64113a);
                return x509TrustManager;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unexpected default trust managers: ");
        String arrays = Arrays.toString(trustManagers);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        sb2.append(arrays);
        throw new IllegalStateException(sb2.toString().toString());
    }

    private ConscryptPlatform() {
        Provider newProvider = Conscrypt.newProvider();
        Intrinsics.checkNotNullExpressionValue(newProvider, "newProvider()");
        this.f64112d = newProvider;
    }
}

package okhttp3.internal.platform;

import java.security.KeyStore;
import java.security.Provider;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.openjsse.net.ssl.OpenJSSE;
/* compiled from: OpenJSSEPlatform.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOpenJSSEPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenJSSEPlatform.kt\nokhttp3/internal/platform/OpenJSSEPlatform\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,101:1\n37#2,2:102\n*S KotlinDebug\n*F\n+ 1 OpenJSSEPlatform.kt\nokhttp3/internal/platform/OpenJSSEPlatform\n*L\n68#1:102,2\n*E\n"})
/* loaded from: classes8.dex */
public final class OpenJSSEPlatform extends Platform {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f64125e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f64126f;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Provider f64127d;

    /* compiled from: OpenJSSEPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final OpenJSSEPlatform a() {
            if (!b()) {
                return null;
            }
            return new OpenJSSEPlatform(null);
        }

        public final boolean b() {
            return OpenJSSEPlatform.f64126f;
        }

        private Companion() {
        }
    }

    static {
        Companion companion = new Companion(null);
        f64125e = companion;
        boolean z10 = false;
        try {
            Class.forName("org.openjsse.net.ssl.OpenJSSE", false, companion.getClass().getClassLoader());
            z10 = true;
        } catch (ClassNotFoundException unused) {
        }
        f64126f = z10;
    }

    public /* synthetic */ OpenJSSEPlatform(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Override // okhttp3.internal.platform.Platform
    public void e(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        super.e(sslSocket, str, protocols);
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String h(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        return super.h(sslSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public SSLContext n() {
        SSLContext sSLContext = SSLContext.getInstance("TLSv1.3", this.f64127d);
        Intrinsics.checkNotNullExpressionValue(sSLContext, "getInstance(\"TLSv1.3\", provider)");
        return sSLContext;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public X509TrustManager p() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm(), this.f64127d);
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

    private OpenJSSEPlatform() {
        this.f64127d = new OpenJSSE();
    }
}

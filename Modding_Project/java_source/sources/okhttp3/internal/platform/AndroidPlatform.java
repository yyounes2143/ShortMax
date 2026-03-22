package okhttp3.internal.platform;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Protocol;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.CloseGuard;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.platform.android.StandardAndroidSocketAdapter;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPlatform.kt */
@SuppressSignatureCheck
@Metadata
@SourceDebugExtension({"SMAP\nAndroidPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPlatform.kt\nokhttp3/internal/platform/AndroidPlatform\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n766#2:164\n857#2,2:165\n1#3:167\n*S KotlinDebug\n*F\n+ 1 AndroidPlatform.kt\nokhttp3/internal/platform/AndroidPlatform\n*L\n52#1:164\n52#1:165,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AndroidPlatform extends Platform {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Companion f64101f = new Companion(null);

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f64102g;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<SocketAdapter> f64103d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final CloseGuard f64104e;

    /* compiled from: AndroidPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Platform a() {
            if (b()) {
                return new AndroidPlatform();
            }
            return null;
        }

        public final boolean b() {
            return AndroidPlatform.f64102g;
        }

        private Companion() {
        }
    }

    /* compiled from: AndroidPlatform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class CustomTrustRootIndex implements TrustRootIndex {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final X509TrustManager f64105a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Method f64106b;

        public CustomTrustRootIndex(@NotNull X509TrustManager trustManager, @NotNull Method findByIssuerAndSignatureMethod) {
            Intrinsics.checkNotNullParameter(trustManager, "trustManager");
            Intrinsics.checkNotNullParameter(findByIssuerAndSignatureMethod, "findByIssuerAndSignatureMethod");
            this.f64105a = trustManager;
            this.f64106b = findByIssuerAndSignatureMethod;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CustomTrustRootIndex)) {
                return false;
            }
            CustomTrustRootIndex customTrustRootIndex = (CustomTrustRootIndex) obj;
            if (Intrinsics.areEqual(this.f64105a, customTrustRootIndex.f64105a) && Intrinsics.areEqual(this.f64106b, customTrustRootIndex.f64106b)) {
                return true;
            }
            return false;
        }

        @Override // okhttp3.internal.tls.TrustRootIndex
        @Nullable
        public X509Certificate findByIssuerAndSignature(@NotNull X509Certificate cert) {
            Intrinsics.checkNotNullParameter(cert, "cert");
            try {
                Object invoke = this.f64106b.invoke(this.f64105a, cert);
                Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type java.security.cert.TrustAnchor");
                return ((TrustAnchor) invoke).getTrustedCert();
            } catch (IllegalAccessException e10) {
                throw new AssertionError("unable to get issues and signature", e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public int hashCode() {
            return (this.f64105a.hashCode() * 31) + this.f64106b.hashCode();
        }

        @NotNull
        public String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.f64105a + ", findByIssuerAndSignatureMethod=" + this.f64106b + ')';
        }
    }

    static {
        boolean z10 = false;
        if (Platform.f64128a.h() && Build.VERSION.SDK_INT < 30) {
            z10 = true;
        }
        f64102g = z10;
    }

    public AndroidPlatform() {
        SocketAdapter[] socketAdapterArr = {StandardAndroidSocketAdapter.Companion.b(StandardAndroidSocketAdapter.f64157j, null, 1, null), new DeferredSocketAdapter(AndroidSocketAdapter.f64139f.d()), new DeferredSocketAdapter(ConscryptSocketAdapter.f64153a.a()), new DeferredSocketAdapter(BouncyCastleSocketAdapter.f64147a.a())};
        ArrayList arrayList = new ArrayList();
        for (Object obj : CollectionsKt.s(socketAdapterArr)) {
            if (((SocketAdapter) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.f64103d = arrayList;
        this.f64104e = CloseGuard.f64149d.a();
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public CertificateChainCleaner c(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        AndroidCertificateChainCleaner a10 = AndroidCertificateChainCleaner.f64132d.a(trustManager);
        if (a10 == null) {
            return super.c(trustManager);
        }
        return a10;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public TrustRootIndex d(@NotNull X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        try {
            Method method = trustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            method.setAccessible(true);
            Intrinsics.checkNotNullExpressionValue(method, "method");
            return new CustomTrustRootIndex(trustManager, method);
        } catch (NoSuchMethodException unused) {
            return super.d(trustManager);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void e(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        Object obj;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        Iterator<T> it = this.f64103d.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((SocketAdapter) obj).matchesSocket(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter != null) {
            socketAdapter.configureTlsExtensions(sslSocket, str, protocols);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void f(@NotNull Socket socket, @NotNull InetSocketAddress address, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "socket");
        Intrinsics.checkNotNullParameter(address, "address");
        try {
            socket.connect(address, i10);
        } catch (ClassCastException e10) {
            if (Build.VERSION.SDK_INT == 26) {
                throw new IOException("Exception in connect", e10);
            }
            throw e10;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String h(@NotNull SSLSocket sslSocket) {
        Object obj;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Iterator<T> it = this.f64103d.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((SocketAdapter) obj).matchesSocket(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter == null) {
            return null;
        }
        return socketAdapter.getSelectedProtocol(sslSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public Object i(@NotNull String closer) {
        Intrinsics.checkNotNullParameter(closer, "closer");
        return this.f64104e.a(closer);
    }

    @Override // okhttp3.internal.platform.Platform
    public boolean j(@NotNull String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }

    @Override // okhttp3.internal.platform.Platform
    public void m(@NotNull String message, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (!this.f64104e.b(obj)) {
            Platform.l(this, message, 5, null, 4, null);
        }
    }
}

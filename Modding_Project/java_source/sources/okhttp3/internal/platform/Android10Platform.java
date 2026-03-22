package okhttp3.internal.platform;

import android.annotation.SuppressLint;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
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
import okhttp3.internal.platform.android.Android10SocketAdapter;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.tls.CertificateChainCleaner;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Android10Platform.kt */
@SuppressSignatureCheck
@Metadata
@SourceDebugExtension({"SMAP\nAndroid10Platform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Android10Platform.kt\nokhttp3/internal/platform/Android10Platform\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n766#2:73\n857#2,2:74\n1#3:76\n*S KotlinDebug\n*F\n+ 1 Android10Platform.kt\nokhttp3/internal/platform/Android10Platform\n*L\n43#1:73\n43#1:74,2\n*E\n"})
/* loaded from: classes8.dex */
public final class Android10Platform extends Platform {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f64098e = new Companion(null);

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f64099f;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<SocketAdapter> f64100d;

    /* compiled from: Android10Platform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Platform a() {
            if (b()) {
                return new Android10Platform();
            }
            return null;
        }

        public final boolean b() {
            return Android10Platform.f64099f;
        }

        private Companion() {
        }
    }

    static {
        boolean z10;
        if (Platform.f64128a.h() && Build.VERSION.SDK_INT >= 29) {
            z10 = true;
        } else {
            z10 = false;
        }
        f64099f = z10;
    }

    public Android10Platform() {
        SocketAdapter[] socketAdapterArr = {Android10SocketAdapter.f64131a.a(), new DeferredSocketAdapter(AndroidSocketAdapter.f64139f.d()), new DeferredSocketAdapter(ConscryptSocketAdapter.f64153a.a()), new DeferredSocketAdapter(BouncyCastleSocketAdapter.f64147a.a())};
        ArrayList arrayList = new ArrayList();
        for (Object obj : CollectionsKt.s(socketAdapterArr)) {
            if (((SocketAdapter) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.f64100d = arrayList;
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
    public void e(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Object obj;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        Iterator<T> it = this.f64100d.iterator();
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
    @Nullable
    public String h(@NotNull SSLSocket sslSocket) {
        Object obj;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Iterator<T> it = this.f64100d.iterator();
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
    @SuppressLint({"NewApi"})
    public boolean j(@NotNull String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }
}

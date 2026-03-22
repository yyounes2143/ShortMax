package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;
/* compiled from: CertificateChainCleaner.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class CertificateChainCleaner {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f64172a = new Companion(null);

    /* compiled from: CertificateChainCleaner.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CertificateChainCleaner a(@NotNull X509TrustManager trustManager) {
            Intrinsics.checkNotNullParameter(trustManager, "trustManager");
            return Platform.f64128a.g().c(trustManager);
        }

        private Companion() {
        }
    }

    @NotNull
    public abstract List<Certificate> a(@NotNull List<? extends Certificate> list, @NotNull String str) throws SSLPeerUnverifiedException;
}

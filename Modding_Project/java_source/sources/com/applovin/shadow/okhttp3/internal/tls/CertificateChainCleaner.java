package com.applovin.shadow.okhttp3.internal.tls;

import com.applovin.shadow.okhttp3.internal.platform.Platform;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CertificateChainCleaner.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class CertificateChainCleaner {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: CertificateChainCleaner.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CertificateChainCleaner get(@NotNull X509TrustManager trustManager) {
            Intrinsics.checkNotNullParameter(trustManager, "trustManager");
            return Platform.Companion.get().buildCertificateChainCleaner(trustManager);
        }

        private Companion() {
        }

        @NotNull
        public final CertificateChainCleaner get(@NotNull X509Certificate... caCerts) {
            Intrinsics.checkNotNullParameter(caCerts, "caCerts");
            return new BasicCertificateChainCleaner(new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(caCerts, caCerts.length)));
        }
    }

    @NotNull
    public abstract List<Certificate> clean(@NotNull List<? extends Certificate> list, @NotNull String str) throws SSLPeerUnverifiedException;
}

package okhttp3.internal.tls;

import java.security.cert.X509Certificate;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TrustRootIndex.kt */
@Metadata
/* loaded from: classes8.dex */
public interface TrustRootIndex {
    @Nullable
    X509Certificate findByIssuerAndSignature(@NotNull X509Certificate x509Certificate);
}

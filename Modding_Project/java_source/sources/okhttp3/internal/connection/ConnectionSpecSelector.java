package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ConnectionSpec;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionSpecSelector.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ConnectionSpecSelector {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<ConnectionSpec> f63760a;

    /* renamed from: b  reason: collision with root package name */
    private int f63761b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f63762c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f63763d;

    public ConnectionSpecSelector(@NotNull List<ConnectionSpec> connectionSpecs) {
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        this.f63760a = connectionSpecs;
    }

    private final boolean c(SSLSocket sSLSocket) {
        int size = this.f63760a.size();
        for (int i10 = this.f63761b; i10 < size; i10++) {
            if (this.f63760a.get(i10).e(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final ConnectionSpec a(@NotNull SSLSocket sslSocket) throws IOException {
        ConnectionSpec connectionSpec;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        int i10 = this.f63761b;
        int size = this.f63760a.size();
        while (true) {
            if (i10 < size) {
                connectionSpec = this.f63760a.get(i10);
                if (connectionSpec.e(sslSocket)) {
                    this.f63761b = i10 + 1;
                    break;
                }
                i10++;
            } else {
                connectionSpec = null;
                break;
            }
        }
        if (connectionSpec != null) {
            this.f63762c = c(sslSocket);
            connectionSpec.c(sslSocket, this.f63763d);
            return connectionSpec;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unable to find acceptable protocols. isFallback=");
        sb2.append(this.f63763d);
        sb2.append(", modes=");
        sb2.append(this.f63760a);
        sb2.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        Intrinsics.checkNotNull(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        sb2.append(arrays);
        throw new UnknownServiceException(sb2.toString());
    }

    public final boolean b(@NotNull IOException e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        this.f63763d = true;
        if (this.f63762c && !(e10 instanceof ProtocolException) && !(e10 instanceof InterruptedIOException) && ((!(e10 instanceof SSLHandshakeException) || !(e10.getCause() instanceof CertificateException)) && !(e10 instanceof SSLPeerUnverifiedException) && (e10 instanceof SSLException))) {
            return true;
        }
        return false;
    }
}

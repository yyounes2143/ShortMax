package com.applovin.shadow.okhttp3.internal.connection;

import com.applovin.shadow.okhttp3.ConnectionSpec;
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
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectionSpecSelector.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ConnectionSpecSelector {
    @NotNull
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex;

    public ConnectionSpecSelector(@NotNull List<ConnectionSpec> connectionSpecs) {
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        this.connectionSpecs = connectionSpecs;
    }

    private final boolean isFallbackPossible(SSLSocket sSLSocket) {
        int size = this.connectionSpecs.size();
        for (int i10 = this.nextModeIndex; i10 < size; i10++) {
            if (this.connectionSpecs.get(i10).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final ConnectionSpec configureSecureSocket(@NotNull SSLSocket sslSocket) throws IOException {
        ConnectionSpec connectionSpec;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        int i10 = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        while (true) {
            if (i10 < size) {
                connectionSpec = this.connectionSpecs.get(i10);
                if (connectionSpec.isCompatible(sslSocket)) {
                    this.nextModeIndex = i10 + 1;
                    break;
                }
                i10++;
            } else {
                connectionSpec = null;
                break;
            }
        }
        if (connectionSpec != null) {
            this.isFallbackPossible = isFallbackPossible(sslSocket);
            connectionSpec.apply$okhttp(sslSocket, this.isFallback);
            return connectionSpec;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unable to find acceptable protocols. isFallback=");
        sb2.append(this.isFallback);
        sb2.append(", modes=");
        sb2.append(this.connectionSpecs);
        sb2.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        Intrinsics.checkNotNull(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
        sb2.append(arrays);
        throw new UnknownServiceException(sb2.toString());
    }

    public final boolean connectionFailed(@NotNull IOException e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        this.isFallback = true;
        if (this.isFallbackPossible && !(e10 instanceof ProtocolException) && !(e10 instanceof InterruptedIOException) && ((!(e10 instanceof SSLHandshakeException) || !(e10.getCause() instanceof CertificateException)) && !(e10 instanceof SSLPeerUnverifiedException) && (e10 instanceof SSLException))) {
            return true;
        }
        return false;
    }
}

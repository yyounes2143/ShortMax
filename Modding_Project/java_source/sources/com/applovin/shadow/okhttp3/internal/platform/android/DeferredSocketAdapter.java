package com.applovin.shadow.okhttp3.internal.platform.android;

import com.applovin.shadow.okhttp3.Protocol;
import com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeferredSocketAdapter.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DeferredSocketAdapter implements SocketAdapter {
    @Nullable
    private SocketAdapter delegate;
    @NotNull
    private final Factory socketAdapterFactory;

    /* compiled from: DeferredSocketAdapter.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Factory {
        @NotNull
        SocketAdapter create(@NotNull SSLSocket sSLSocket);

        boolean matchesSocket(@NotNull SSLSocket sSLSocket);
    }

    public DeferredSocketAdapter(@NotNull Factory socketAdapterFactory) {
        Intrinsics.checkNotNullParameter(socketAdapterFactory, "socketAdapterFactory");
        this.socketAdapterFactory = socketAdapterFactory;
    }

    private final synchronized SocketAdapter getDelegate(SSLSocket sSLSocket) {
        try {
            if (this.delegate == null && this.socketAdapterFactory.matchesSocket(sSLSocket)) {
                this.delegate = this.socketAdapterFactory.create(sSLSocket);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.delegate;
    }

    @Override // com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        SocketAdapter delegate = getDelegate(sslSocket);
        if (delegate != null) {
            delegate.configureTlsExtensions(sslSocket, str, protocols);
        }
    }

    @Override // com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        SocketAdapter delegate = getDelegate(sslSocket);
        if (delegate != null) {
            return delegate.getSelectedProtocol(sslSocket);
        }
        return null;
    }

    @Override // com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter
    public boolean isSupported() {
        return true;
    }

    @Override // com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocket(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        return this.socketAdapterFactory.matchesSocket(sslSocket);
    }

    @Override // com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocketFactory(@NotNull SSLSocketFactory sSLSocketFactory) {
        return SocketAdapter.DefaultImpls.matchesSocketFactory(this, sSLSocketFactory);
    }

    @Override // com.applovin.shadow.okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sSLSocketFactory) {
        return SocketAdapter.DefaultImpls.trustManager(this, sSLSocketFactory);
    }
}

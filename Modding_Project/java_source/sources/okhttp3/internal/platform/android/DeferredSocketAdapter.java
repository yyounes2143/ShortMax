package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeferredSocketAdapter.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DeferredSocketAdapter implements SocketAdapter {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Factory f64155a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private SocketAdapter f64156b;

    /* compiled from: DeferredSocketAdapter.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Factory {
        @NotNull
        SocketAdapter create(@NotNull SSLSocket sSLSocket);

        boolean matchesSocket(@NotNull SSLSocket sSLSocket);
    }

    public DeferredSocketAdapter(@NotNull Factory socketAdapterFactory) {
        Intrinsics.checkNotNullParameter(socketAdapterFactory, "socketAdapterFactory");
        this.f64155a = socketAdapterFactory;
    }

    private final synchronized SocketAdapter a(SSLSocket sSLSocket) {
        try {
            if (this.f64156b == null && this.f64155a.matchesSocket(sSLSocket)) {
                this.f64156b = this.f64155a.create(sSLSocket);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f64156b;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        SocketAdapter a10 = a(sslSocket);
        if (a10 != null) {
            a10.configureTlsExtensions(sslSocket, str, protocols);
        }
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        SocketAdapter a10 = a(sslSocket);
        if (a10 != null) {
            return a10.getSelectedProtocol(sslSocket);
        }
        return null;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean isSupported() {
        return true;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocket(@NotNull SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        return this.f64155a.matchesSocket(sslSocket);
    }
}

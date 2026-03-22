package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SocketAdapter.kt */
@Metadata
/* loaded from: classes8.dex */
public interface SocketAdapter {

    /* compiled from: SocketAdapter.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
    }

    void configureTlsExtensions(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends Protocol> list);

    @Nullable
    String getSelectedProtocol(@NotNull SSLSocket sSLSocket);

    boolean isSupported();

    boolean matchesSocket(@NotNull SSLSocket sSLSocket);
}

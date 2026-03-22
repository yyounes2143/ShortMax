package okhttp3;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventListener.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class EventListener {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f63437a = new Companion(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final EventListener f63438b = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    /* compiled from: EventListener.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: EventListener.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Factory {
        @NotNull
        EventListener a(@NotNull Call call);
    }

    public void A(@NotNull Call call, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void B(@NotNull Call call, @Nullable Handshake handshake) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void C(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void a(@NotNull Call call, @NotNull Response cachedResponse) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
    }

    public void b(@NotNull Call call, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void c(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void d(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void e(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void f(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void g(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void h(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
    }

    public void i(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void j(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
    }

    public void k(@NotNull Call call, @NotNull Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void l(@NotNull Call call, @NotNull Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void m(@NotNull Call call, @NotNull String domainName, @NotNull List<InetAddress> inetAddressList) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
    }

    public void n(@NotNull Call call, @NotNull String domainName) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
    }

    public void o(@NotNull Call call, @NotNull HttpUrl url, @NotNull List<Proxy> proxies) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(proxies, "proxies");
    }

    public void p(@NotNull Call call, @NotNull HttpUrl url) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    public void q(@NotNull Call call, long j10) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void r(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void s(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void t(@NotNull Call call, @NotNull Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
    }

    public void u(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void v(@NotNull Call call, long j10) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void w(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void x(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void y(@NotNull Call call, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void z(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }
}

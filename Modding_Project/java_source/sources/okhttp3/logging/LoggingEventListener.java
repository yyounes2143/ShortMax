package okhttp3.logging;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoggingEventListener.kt */
@Metadata
/* loaded from: classes8.dex */
public final class LoggingEventListener extends EventListener {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final HttpLoggingInterceptor.Logger f64265c;

    /* renamed from: d  reason: collision with root package name */
    private long f64266d;

    /* compiled from: LoggingEventListener.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static class Factory implements EventListener.Factory {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HttpLoggingInterceptor.Logger f64267a;

        public Factory() {
            this(null, 1, null);
        }

        @Override // okhttp3.EventListener.Factory
        @NotNull
        public EventListener a(@NotNull Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            return new LoggingEventListener(this.f64267a, null);
        }

        public Factory(@NotNull HttpLoggingInterceptor.Logger logger) {
            Intrinsics.checkNotNullParameter(logger, "logger");
            this.f64267a = logger;
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? HttpLoggingInterceptor.Logger.f64263b : logger);
        }
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger);
    }

    private final void D(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.f64266d);
        HttpLoggingInterceptor.Logger logger = this.f64265c;
        logger.log('[' + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void A(@NotNull Call call, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        D("satisfactionFailure: " + response);
    }

    @Override // okhttp3.EventListener
    public void B(@NotNull Call call, @Nullable Handshake handshake) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("secureConnectEnd: " + handshake);
    }

    @Override // okhttp3.EventListener
    public void C(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("secureConnectStart");
    }

    @Override // okhttp3.EventListener
    public void a(@NotNull Call call, @NotNull Response cachedResponse) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
        D("cacheConditionalHit: " + cachedResponse);
    }

    @Override // okhttp3.EventListener
    public void b(@NotNull Call call, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        D("cacheHit: " + response);
    }

    @Override // okhttp3.EventListener
    public void c(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void d(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("callEnd");
    }

    @Override // okhttp3.EventListener
    public void e(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        D("callFailed: " + ioe);
    }

    @Override // okhttp3.EventListener
    public void f(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.f64266d = System.nanoTime();
        D("callStart: " + call.request());
    }

    @Override // okhttp3.EventListener
    public void g(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("canceled");
    }

    @Override // okhttp3.EventListener
    public void h(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        D("connectEnd: " + protocol);
    }

    @Override // okhttp3.EventListener
    public void i(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        D("connectFailed: " + protocol + ' ' + ioe);
    }

    @Override // okhttp3.EventListener
    public void j(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        D("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override // okhttp3.EventListener
    public void k(@NotNull Call call, @NotNull Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        D("connectionAcquired: " + connection);
    }

    @Override // okhttp3.EventListener
    public void l(@NotNull Call call, @NotNull Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        D("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void m(@NotNull Call call, @NotNull String domainName, @NotNull List<? extends InetAddress> inetAddressList) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
        D("dnsEnd: " + inetAddressList);
    }

    @Override // okhttp3.EventListener
    public void n(@NotNull Call call, @NotNull String domainName) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        D("dnsStart: " + domainName);
    }

    @Override // okhttp3.EventListener
    public void o(@NotNull Call call, @NotNull HttpUrl url, @NotNull List<? extends Proxy> proxies) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(proxies, "proxies");
        D("proxySelectEnd: " + proxies);
    }

    @Override // okhttp3.EventListener
    public void p(@NotNull Call call, @NotNull HttpUrl url) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        D("proxySelectStart: " + url);
    }

    @Override // okhttp3.EventListener
    public void q(@NotNull Call call, long j10) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("requestBodyEnd: byteCount=" + j10);
    }

    @Override // okhttp3.EventListener
    public void r(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void s(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        D("requestFailed: " + ioe);
    }

    @Override // okhttp3.EventListener
    public void t(@NotNull Call call, @NotNull Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
        D("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void u(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void v(@NotNull Call call, long j10) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("responseBodyEnd: byteCount=" + j10);
    }

    @Override // okhttp3.EventListener
    public void w(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void x(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        D("responseFailed: " + ioe);
    }

    @Override // okhttp3.EventListener
    public void y(@NotNull Call call, @NotNull Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        D("responseHeadersEnd: " + response);
    }

    @Override // okhttp3.EventListener
    public void z(@NotNull Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        D("responseHeadersStart");
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.f64265c = logger;
    }
}

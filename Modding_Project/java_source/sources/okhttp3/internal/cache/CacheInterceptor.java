package okhttp3.internal.cache;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CacheInterceptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CacheInterceptor implements Interceptor {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f63637b = new Companion(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Cache f63638a;

    /* compiled from: CacheInterceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Headers c(Headers headers, Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String d10 = headers.d(i10);
                String i11 = headers.i(i10);
                if ((!StringsKt.G("Warning", d10, true) || !StringsKt.V(i11, "1", false, 2, null)) && (d(d10) || !e(d10) || headers2.a(d10) == null)) {
                    builder.d(d10, i11);
                }
            }
            int size2 = headers2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                String d11 = headers2.d(i12);
                if (!d(d11) && e(d11)) {
                    builder.d(d11, headers2.i(i12));
                }
            }
            return builder.f();
        }

        private final boolean d(String str) {
            if (StringsKt.G("Content-Length", str, true) || StringsKt.G("Content-Encoding", str, true) || StringsKt.G(CommonGatewayClient.HEADER_CONTENT_TYPE, str, true)) {
                return true;
            }
            return false;
        }

        private final boolean e(String str) {
            if (!StringsKt.G("Connection", str, true) && !StringsKt.G("Keep-Alive", str, true) && !StringsKt.G("Proxy-Authenticate", str, true) && !StringsKt.G("Proxy-Authorization", str, true) && !StringsKt.G("TE", str, true) && !StringsKt.G("Trailers", str, true) && !StringsKt.G("Transfer-Encoding", str, true) && !StringsKt.G("Upgrade", str, true)) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Response f(Response response) {
            ResponseBody responseBody;
            if (response != null) {
                responseBody = response.d();
            } else {
                responseBody = null;
            }
            if (responseBody != null) {
                return response.F().b(null).c();
            }
            return response;
        }

        private Companion() {
        }
    }

    public CacheInterceptor(@Nullable Cache cache) {
        this.f63638a = cache;
    }

    private final Response a(final CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        Sink body = cacheRequest.body();
        ResponseBody d10 = response.d();
        Intrinsics.checkNotNull(d10);
        final BufferedSource source = d10.source();
        final BufferedSink buffer = Okio.buffer(body);
        Source source2 = new Source() { // from class: okhttp3.internal.cache.CacheInterceptor$cacheWritingResponse$cacheWritingSource$1

            /* renamed from: a  reason: collision with root package name */
            private boolean f63639a;

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (!this.f63639a && !Util.s(this, 100, TimeUnit.MILLISECONDS)) {
                    this.f63639a = true;
                    cacheRequest.abort();
                }
                BufferedSource.this.close();
            }

            @Override // okio.Source
            public long read(@NotNull Buffer sink, long j10) throws IOException {
                Intrinsics.checkNotNullParameter(sink, "sink");
                try {
                    long read = BufferedSource.this.read(sink, j10);
                    if (read == -1) {
                        if (!this.f63639a) {
                            this.f63639a = true;
                            buffer.close();
                        }
                        return -1L;
                    }
                    sink.copyTo(buffer.getBuffer(), sink.size() - read, read);
                    buffer.emitCompleteSegments();
                    return read;
                } catch (IOException e10) {
                    if (!this.f63639a) {
                        this.f63639a = true;
                        cacheRequest.abort();
                    }
                    throw e10;
                }
            }

            @Override // okio.Source
            @NotNull
            public Timeout timeout() {
                return BufferedSource.this.timeout();
            }
        };
        return response.F().b(new RealResponseBody(Response.t(response, CommonGatewayClient.HEADER_CONTENT_TYPE, null, 2, null), response.d().contentLength(), Okio.buffer(source2))).c();
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Response response;
        EventListener eventListener;
        ResponseBody d10;
        ResponseBody d11;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Call call = chain.call();
        Cache cache = this.f63638a;
        RealCall realCall = null;
        if (cache != null) {
            response = cache.b(chain.request());
        } else {
            response = null;
        }
        CacheStrategy b10 = new CacheStrategy.Factory(System.currentTimeMillis(), chain.request(), response).b();
        Request b11 = b10.b();
        Response a10 = b10.a();
        Cache cache2 = this.f63638a;
        if (cache2 != null) {
            cache2.r(b10);
        }
        if (call instanceof RealCall) {
            realCall = (RealCall) call;
        }
        if (realCall == null || (eventListener = realCall.m()) == null) {
            eventListener = EventListener.f63438b;
        }
        if (response != null && a10 == null && (d11 = response.d()) != null) {
            Util.m(d11);
        }
        if (b11 == null && a10 == null) {
            Response c10 = new Response.Builder().r(chain.request()).p(Protocol.HTTP_1_1).g(504).m("Unsatisfiable Request (only-if-cached)").b(Util.f63629c).s(-1L).q(System.currentTimeMillis()).c();
            eventListener.A(call, c10);
            return c10;
        } else if (b11 == null) {
            Intrinsics.checkNotNull(a10);
            Response c11 = a10.F().d(f63637b.f(a10)).c();
            eventListener.b(call, c11);
            return c11;
        } else {
            if (a10 != null) {
                eventListener.a(call, a10);
            } else if (this.f63638a != null) {
                eventListener.c(call);
            }
            try {
                Response a11 = chain.a(b11);
                if (a11 == null && response != null && d10 != null) {
                }
                if (a10 != null) {
                    if (a11 != null && a11.o() == 304) {
                        Response.Builder F = a10.F();
                        Companion companion = f63637b;
                        Response c12 = F.k(companion.c(a10.u(), a11.u())).s(a11.Y()).q(a11.T()).d(companion.f(a10)).n(companion.f(a11)).c();
                        ResponseBody d12 = a11.d();
                        Intrinsics.checkNotNull(d12);
                        d12.close();
                        Cache cache3 = this.f63638a;
                        Intrinsics.checkNotNull(cache3);
                        cache3.q();
                        this.f63638a.s(a10, c12);
                        eventListener.b(call, c12);
                        return c12;
                    }
                    ResponseBody d13 = a10.d();
                    if (d13 != null) {
                        Util.m(d13);
                    }
                }
                Intrinsics.checkNotNull(a11);
                Response.Builder F2 = a11.F();
                Companion companion2 = f63637b;
                Response c13 = F2.d(companion2.f(a10)).n(companion2.f(a11)).c();
                if (this.f63638a != null) {
                    if (HttpHeaders.b(c13) && CacheStrategy.f63643c.a(c13, b11)) {
                        Response a12 = a(this.f63638a.l(c13), c13);
                        if (a10 != null) {
                            eventListener.c(call);
                        }
                        return a12;
                    } else if (HttpMethod.f63867a.a(b11.h())) {
                        try {
                            this.f63638a.m(b11);
                        } catch (IOException unused) {
                        }
                    }
                }
                return c13;
            } finally {
                if (response != null && (d10 = response.d()) != null) {
                    Util.m(d10);
                }
            }
        }
    }
}

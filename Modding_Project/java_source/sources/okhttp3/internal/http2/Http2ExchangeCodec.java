package okhttp3.internal.http2;

import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2ExchangeCodec.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final Companion f64024g = new Companion(null);
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final List<String> f64025h = Util.w("connection", TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_METHOD_UTF8, com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_PATH_UTF8, com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_SCHEME_UTF8, com.applovin.shadow.okhttp3.internal.http2.Header.TARGET_AUTHORITY_UTF8);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final List<String> f64026i = Util.w("connection", TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final RealConnection f64027a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final RealInterceptorChain f64028b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Http2Connection f64029c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private volatile Http2Stream f64030d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Protocol f64031e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f64032f;

    /* compiled from: Http2ExchangeCodec.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<Header> a(@NotNull Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Headers f10 = request.f();
            ArrayList arrayList = new ArrayList(f10.size() + 4);
            arrayList.add(new Header(Header.f63918g, request.h()));
            arrayList.add(new Header(Header.f63919h, RequestLine.f63880a.c(request.l())));
            String d10 = request.d("Host");
            if (d10 != null) {
                arrayList.add(new Header(Header.f63921j, d10));
            }
            arrayList.add(new Header(Header.f63920i, request.l().t()));
            int size = f10.size();
            for (int i10 = 0; i10 < size; i10++) {
                String d11 = f10.d(i10);
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = d11.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (!Http2ExchangeCodec.f64025h.contains(lowerCase) || (Intrinsics.areEqual(lowerCase, "te") && Intrinsics.areEqual(f10.i(i10), "trailers"))) {
                    arrayList.add(new Header(lowerCase, f10.i(i10)));
                }
            }
            return arrayList;
        }

        @NotNull
        public final Response.Builder b(@NotNull Headers headerBlock, @NotNull Protocol protocol) {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Headers.Builder builder = new Headers.Builder();
            int size = headerBlock.size();
            StatusLine statusLine = null;
            for (int i10 = 0; i10 < size; i10++) {
                String d10 = headerBlock.d(i10);
                String i11 = headerBlock.i(i10);
                if (Intrinsics.areEqual(d10, com.applovin.shadow.okhttp3.internal.http2.Header.RESPONSE_STATUS_UTF8)) {
                    StatusLine.Companion companion = StatusLine.f63883d;
                    statusLine = companion.a("HTTP/1.1 " + i11);
                } else if (!Http2ExchangeCodec.f64026i.contains(d10)) {
                    builder.d(d10, i11);
                }
            }
            if (statusLine != null) {
                return new Response.Builder().p(protocol).g(statusLine.f63885b).m(statusLine.f63886c).k(builder.f());
            }
            throw new ProtocolException("Expected ':status' header not present");
        }

        private Companion() {
        }
    }

    public Http2ExchangeCodec(@NotNull OkHttpClient client, @NotNull RealConnection connection, @NotNull RealInterceptorChain chain, @NotNull Http2Connection http2Connection) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(http2Connection, "http2Connection");
        this.f64027a = connection;
        this.f64028b = chain;
        this.f64029c = http2Connection;
        List<Protocol> B = client.B();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.f64031e = B.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source a(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Http2Stream http2Stream = this.f64030d;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.p();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink b(@NotNull Request request, long j10) {
        Intrinsics.checkNotNullParameter(request, "request");
        Http2Stream http2Stream = this.f64030d;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.n();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long c(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.b(response)) {
            return 0L;
        }
        return Util.v(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        this.f64032f = true;
        Http2Stream http2Stream = this.f64030d;
        if (http2Stream != null) {
            http2Stream.f(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void d(@NotNull Request request) {
        boolean z10;
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.f64030d != null) {
            return;
        }
        if (request.a() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f64030d = this.f64029c.h0(f64024g.a(request), z10);
        if (!this.f64032f) {
            Http2Stream http2Stream = this.f64030d;
            Intrinsics.checkNotNull(http2Stream);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            http2Stream.v().timeout(this.f64028b.g(), timeUnit);
            Http2Stream http2Stream2 = this.f64030d;
            Intrinsics.checkNotNull(http2Stream2);
            http2Stream2.E().timeout(this.f64028b.i(), timeUnit);
            return;
        }
        Http2Stream http2Stream3 = this.f64030d;
        Intrinsics.checkNotNull(http2Stream3);
        http2Stream3.f(ErrorCode.CANCEL);
        throw new IOException("Canceled");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        Http2Stream http2Stream = this.f64030d;
        Intrinsics.checkNotNull(http2Stream);
        http2Stream.n().close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.f64029c.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection getConnection() {
        return this.f64027a;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder readResponseHeaders(boolean z10) {
        Http2Stream http2Stream = this.f64030d;
        if (http2Stream != null) {
            Response.Builder b10 = f64024g.b(http2Stream.C(), this.f64031e);
            if (z10 && b10.h() == 100) {
                return null;
            }
            return b10;
        }
        throw new IOException("stream wasn't created");
    }
}

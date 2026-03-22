package okhttp3.internal.http1;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http1ExchangeCodec.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
/* loaded from: classes8.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final Companion f63890h = new Companion(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final OkHttpClient f63891a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final RealConnection f63892b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final BufferedSource f63893c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final BufferedSink f63894d;

    /* renamed from: e  reason: collision with root package name */
    private int f63895e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final HeadersReader f63896f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Headers f63897g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public abstract class AbstractSource implements Source {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ForwardingTimeout f63898a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f63899b;

        public AbstractSource() {
            this.f63898a = new ForwardingTimeout(Http1ExchangeCodec.this.f63893c.timeout());
        }

        protected final boolean d() {
            return this.f63899b;
        }

        public final void k() {
            if (Http1ExchangeCodec.this.f63895e == 6) {
                return;
            }
            if (Http1ExchangeCodec.this.f63895e == 5) {
                Http1ExchangeCodec.this.n(this.f63898a);
                Http1ExchangeCodec.this.f63895e = 6;
                return;
            }
            throw new IllegalStateException("state: " + Http1ExchangeCodec.this.f63895e);
        }

        protected final void l(boolean z10) {
            this.f63899b = z10;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            try {
                return Http1ExchangeCodec.this.f63893c.read(sink, j10);
            } catch (IOException e10) {
                Http1ExchangeCodec.this.getConnection().z();
                k();
                throw e10;
            }
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f63898a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* loaded from: classes8.dex */
    public final class ChunkedSink implements Sink {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ForwardingTimeout f63901a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f63902b;

        public ChunkedSink() {
            this.f63901a = new ForwardingTimeout(Http1ExchangeCodec.this.f63894d.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            if (this.f63902b) {
                return;
            }
            this.f63902b = true;
            Http1ExchangeCodec.this.f63894d.writeUtf8("0\r\n\r\n");
            Http1ExchangeCodec.this.n(this.f63901a);
            Http1ExchangeCodec.this.f63895e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() {
            if (this.f63902b) {
                return;
            }
            Http1ExchangeCodec.this.f63894d.flush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return this.f63901a;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.f63902b) {
                if (j10 == 0) {
                    return;
                }
                Http1ExchangeCodec.this.f63894d.writeHexadecimalUnsignedLong(j10);
                Http1ExchangeCodec.this.f63894d.writeUtf8("\r\n");
                Http1ExchangeCodec.this.f63894d.write(source, j10);
                Http1ExchangeCodec.this.f63894d.writeUtf8("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* loaded from: classes8.dex */
    public final class ChunkedSource extends AbstractSource {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final HttpUrl f63904d;

        /* renamed from: e  reason: collision with root package name */
        private long f63905e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f63906f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Http1ExchangeCodec f63907g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(@NotNull Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            super();
            Intrinsics.checkNotNullParameter(url, "url");
            this.f63907g = http1ExchangeCodec;
            this.f63904d = url;
            this.f63905e = -1L;
            this.f63906f = true;
        }

        private final void m() {
            if (this.f63905e != -1) {
                this.f63907g.f63893c.readUtf8LineStrict();
            }
            try {
                this.f63905e = this.f63907g.f63893c.readHexadecimalUnsignedLong();
                String obj = StringsKt.v1(this.f63907g.f63893c.readUtf8LineStrict()).toString();
                if (this.f63905e >= 0 && (obj.length() <= 0 || StringsKt.V(obj, ";", false, 2, null))) {
                    if (this.f63905e == 0) {
                        this.f63906f = false;
                        Http1ExchangeCodec http1ExchangeCodec = this.f63907g;
                        http1ExchangeCodec.f63897g = http1ExchangeCodec.f63896f.a();
                        OkHttpClient okHttpClient = this.f63907g.f63891a;
                        Intrinsics.checkNotNull(okHttpClient);
                        CookieJar o10 = okHttpClient.o();
                        HttpUrl httpUrl = this.f63904d;
                        Headers headers = this.f63907g.f63897g;
                        Intrinsics.checkNotNull(headers);
                        HttpHeaders.f(o10, httpUrl, headers);
                        k();
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f63905e + obj + '\"');
            } catch (NumberFormatException e10) {
                throw new ProtocolException(e10.getMessage());
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (d()) {
                return;
            }
            if (this.f63906f && !Util.s(this, 100, TimeUnit.MILLISECONDS)) {
                this.f63907g.getConnection().z();
                k();
            }
            l(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (!d()) {
                    if (!this.f63906f) {
                        return -1L;
                    }
                    long j11 = this.f63905e;
                    if (j11 == 0 || j11 == -1) {
                        m();
                        if (!this.f63906f) {
                            return -1L;
                        }
                    }
                    long read = super.read(sink, Math.min(j10, this.f63905e));
                    if (read != -1) {
                        this.f63905e -= read;
                        return read;
                    }
                    this.f63907g.getConnection().z();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    k();
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
    }

    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* loaded from: classes8.dex */
    public final class FixedLengthSource extends AbstractSource {

        /* renamed from: d  reason: collision with root package name */
        private long f63908d;

        public FixedLengthSource(long j10) {
            super();
            this.f63908d = j10;
            if (j10 == 0) {
                k();
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (d()) {
                return;
            }
            if (this.f63908d != 0 && !Util.s(this, 100, TimeUnit.MILLISECONDS)) {
                Http1ExchangeCodec.this.getConnection().z();
                k();
            }
            l(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (!d()) {
                    long j11 = this.f63908d;
                    if (j11 == 0) {
                        return -1L;
                    }
                    long read = super.read(sink, Math.min(j11, j10));
                    if (read != -1) {
                        long j12 = this.f63908d - read;
                        this.f63908d = j12;
                        if (j12 == 0) {
                            k();
                        }
                        return read;
                    }
                    Http1ExchangeCodec.this.getConnection().z();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    k();
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* loaded from: classes8.dex */
    public final class KnownLengthSink implements Sink {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ForwardingTimeout f63910a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f63911b;

        public KnownLengthSink() {
            this.f63910a = new ForwardingTimeout(Http1ExchangeCodec.this.f63894d.timeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f63911b) {
                return;
            }
            this.f63911b = true;
            Http1ExchangeCodec.this.n(this.f63910a);
            Http1ExchangeCodec.this.f63895e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (this.f63911b) {
                return;
            }
            Http1ExchangeCodec.this.f63894d.flush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return this.f63910a;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.f63911b) {
                Util.l(source.size(), 0L, j10);
                Http1ExchangeCodec.this.f63894d.write(source, j10);
                return;
            }
            throw new IllegalStateException("closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Http1ExchangeCodec.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
    /* loaded from: classes8.dex */
    public final class UnknownLengthSource extends AbstractSource {

        /* renamed from: d  reason: collision with root package name */
        private boolean f63913d;

        public UnknownLengthSource() {
            super();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (d()) {
                return;
            }
            if (!this.f63913d) {
                k();
            }
            l(true);
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j10 >= 0) {
                if (!d()) {
                    if (this.f63913d) {
                        return -1L;
                    }
                    long read = super.read(sink, j10);
                    if (read == -1) {
                        this.f63913d = true;
                        k();
                        return -1L;
                    }
                    return read;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
    }

    public Http1ExchangeCodec(@Nullable OkHttpClient okHttpClient, @NotNull RealConnection connection, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f63891a = okHttpClient;
        this.f63892b = connection;
        this.f63893c = source;
        this.f63894d = sink;
        this.f63896f = new HeadersReader(source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    private final boolean o(Request request) {
        return StringsKt.G("chunked", request.d("Transfer-Encoding"), true);
    }

    private final boolean p(Response response) {
        return StringsKt.G("chunked", Response.t(response, "Transfer-Encoding", null, 2, null), true);
    }

    private final Sink q() {
        if (this.f63895e == 1) {
            this.f63895e = 2;
            return new ChunkedSink();
        }
        throw new IllegalStateException(("state: " + this.f63895e).toString());
    }

    private final Source r(HttpUrl httpUrl) {
        if (this.f63895e == 4) {
            this.f63895e = 5;
            return new ChunkedSource(this, httpUrl);
        }
        throw new IllegalStateException(("state: " + this.f63895e).toString());
    }

    private final Source s(long j10) {
        if (this.f63895e == 4) {
            this.f63895e = 5;
            return new FixedLengthSource(j10);
        }
        throw new IllegalStateException(("state: " + this.f63895e).toString());
    }

    private final Sink t() {
        if (this.f63895e == 1) {
            this.f63895e = 2;
            return new KnownLengthSink();
        }
        throw new IllegalStateException(("state: " + this.f63895e).toString());
    }

    private final Source u() {
        if (this.f63895e == 4) {
            this.f63895e = 5;
            getConnection().z();
            return new UnknownLengthSource();
        }
        throw new IllegalStateException(("state: " + this.f63895e).toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source a(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.b(response)) {
            return s(0L);
        }
        if (p(response)) {
            return r(response.W().l());
        }
        long v10 = Util.v(response);
        if (v10 != -1) {
            return s(v10);
        }
        return u();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink b(@NotNull Request request, long j10) {
        Intrinsics.checkNotNullParameter(request, "request");
        if (request.a() != null && request.a().isDuplex()) {
            throw new ProtocolException("Duplex connections are not supported for HTTP/1");
        }
        if (o(request)) {
            return q();
        }
        if (j10 != -1) {
            return t();
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long c(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.b(response)) {
            return 0L;
        }
        if (p(response)) {
            return -1L;
        }
        return Util.v(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        getConnection().d();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void d(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestLine requestLine = RequestLine.f63880a;
        Proxy.Type type = getConnection().A().b().type();
        Intrinsics.checkNotNullExpressionValue(type, "connection.route().proxy.type()");
        w(request.f(), requestLine.a(request, type));
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        this.f63894d.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.f63894d.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection getConnection() {
        return this.f63892b;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder readResponseHeaders(boolean z10) {
        int i10 = this.f63895e;
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            throw new IllegalStateException(("state: " + this.f63895e).toString());
        }
        try {
            StatusLine a10 = StatusLine.f63883d.a(this.f63896f.b());
            Response.Builder k10 = new Response.Builder().p(a10.f63884a).g(a10.f63885b).m(a10.f63886c).k(this.f63896f.a());
            if (z10 && a10.f63885b == 100) {
                return null;
            }
            int i11 = a10.f63885b;
            if (i11 == 100) {
                this.f63895e = 3;
                return k10;
            } else if (102 <= i11 && i11 < 200) {
                this.f63895e = 3;
                return k10;
            } else {
                this.f63895e = 4;
                return k10;
            }
        } catch (EOFException e10) {
            String r10 = getConnection().A().a().l().r();
            throw new IOException("unexpected end of stream on " + r10, e10);
        }
    }

    public final void v(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        long v10 = Util.v(response);
        if (v10 == -1) {
            return;
        }
        Source s10 = s(v10);
        Util.M(s10, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
        s10.close();
    }

    public final void w(@NotNull Headers headers, @NotNull String requestLine) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(requestLine, "requestLine");
        if (this.f63895e == 0) {
            this.f63894d.writeUtf8(requestLine).writeUtf8("\r\n");
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f63894d.writeUtf8(headers.d(i10)).writeUtf8(": ").writeUtf8(headers.i(i10)).writeUtf8("\r\n");
            }
            this.f63894d.writeUtf8("\r\n");
            this.f63895e = 1;
            return;
        }
        throw new IllegalStateException(("state: " + this.f63895e).toString());
    }
}

package okhttp3.internal.connection;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.EventListener;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Exchange.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Exchange {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final RealCall f63764a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final EventListener f63765b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ExchangeFinder f63766c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ExchangeCodec f63767d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f63768e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f63769f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final RealConnection f63770g;

    /* compiled from: Exchange.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$RequestBodySink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"})
    /* loaded from: classes8.dex */
    private final class RequestBodySink extends ForwardingSink {

        /* renamed from: a  reason: collision with root package name */
        private final long f63771a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f63772b;

        /* renamed from: c  reason: collision with root package name */
        private long f63773c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f63774d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Exchange f63775e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(@NotNull Exchange exchange, Sink delegate, long j10) {
            super(delegate);
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.f63775e = exchange;
            this.f63771a = j10;
        }

        private final <E extends IOException> E a(E e10) {
            if (this.f63772b) {
                return e10;
            }
            this.f63772b = true;
            return (E) this.f63775e.a(this.f63773c, false, true, e10);
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f63774d) {
                return;
            }
            this.f63774d = true;
            long j10 = this.f63771a;
            if (j10 != -1 && this.f63773c != j10) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e10) {
                throw a(e10);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e10) {
                throw a(e10);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(@NotNull Buffer source, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.f63774d) {
                long j11 = this.f63771a;
                if (j11 != -1 && this.f63773c + j10 > j11) {
                    throw new ProtocolException("expected " + this.f63771a + " bytes but received " + (this.f63773c + j10));
                }
                try {
                    super.write(source, j10);
                    this.f63773c += j10;
                    return;
                } catch (IOException e10) {
                    throw a(e10);
                }
            }
            throw new IllegalStateException("closed");
        }
    }

    /* compiled from: Exchange.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$ResponseBodySource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"})
    /* loaded from: classes8.dex */
    public final class ResponseBodySource extends ForwardingSource {

        /* renamed from: a  reason: collision with root package name */
        private final long f63776a;

        /* renamed from: b  reason: collision with root package name */
        private long f63777b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f63778c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f63779d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f63780e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Exchange f63781f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(@NotNull Exchange exchange, Source delegate, long j10) {
            super(delegate);
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.f63781f = exchange;
            this.f63776a = j10;
            this.f63778c = true;
            if (j10 == 0) {
                a(null);
            }
        }

        public final <E extends IOException> E a(E e10) {
            if (this.f63779d) {
                return e10;
            }
            this.f63779d = true;
            if (e10 == null && this.f63778c) {
                this.f63778c = false;
                this.f63781f.i().w(this.f63781f.g());
            }
            return (E) this.f63781f.a(this.f63777b, true, false, e10);
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f63780e) {
                return;
            }
            this.f63780e = true;
            try {
                super.close();
                a(null);
            } catch (IOException e10) {
                throw a(e10);
            }
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer sink, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.f63780e) {
                try {
                    long read = delegate().read(sink, j10);
                    if (this.f63778c) {
                        this.f63778c = false;
                        this.f63781f.i().w(this.f63781f.g());
                    }
                    if (read == -1) {
                        a(null);
                        return -1L;
                    }
                    long j11 = this.f63777b + read;
                    long j12 = this.f63776a;
                    if (j12 != -1 && j11 > j12) {
                        throw new ProtocolException("expected " + this.f63776a + " bytes but received " + j11);
                    }
                    this.f63777b = j11;
                    if (j11 == j12) {
                        a(null);
                    }
                    return read;
                } catch (IOException e10) {
                    throw a(e10);
                }
            }
            throw new IllegalStateException("closed");
        }
    }

    public Exchange(@NotNull RealCall call, @NotNull EventListener eventListener, @NotNull ExchangeFinder finder, @NotNull ExchangeCodec codec) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.f63764a = call;
        this.f63765b = eventListener;
        this.f63766c = finder;
        this.f63767d = codec;
        this.f63770g = codec.getConnection();
    }

    private final void u(IOException iOException) {
        this.f63769f = true;
        this.f63766c.h(iOException);
        this.f63767d.getConnection().H(this.f63764a, iOException);
    }

    public final <E extends IOException> E a(long j10, boolean z10, boolean z11, E e10) {
        if (e10 != null) {
            u(e10);
        }
        if (z11) {
            if (e10 != null) {
                this.f63765b.s(this.f63764a, e10);
            } else {
                this.f63765b.q(this.f63764a, j10);
            }
        }
        if (z10) {
            if (e10 != null) {
                this.f63765b.x(this.f63764a, e10);
            } else {
                this.f63765b.v(this.f63764a, j10);
            }
        }
        return (E) this.f63764a.s(this, z11, z10, e10);
    }

    public final void b() {
        this.f63767d.cancel();
    }

    @NotNull
    public final Sink c(@NotNull Request request, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f63768e = z10;
        RequestBody a10 = request.a();
        Intrinsics.checkNotNull(a10);
        long contentLength = a10.contentLength();
        this.f63765b.r(this.f63764a);
        return new RequestBodySink(this, this.f63767d.b(request, contentLength), contentLength);
    }

    public final void d() {
        this.f63767d.cancel();
        this.f63764a.s(this, true, true, null);
    }

    public final void e() throws IOException {
        try {
            this.f63767d.finishRequest();
        } catch (IOException e10) {
            this.f63765b.s(this.f63764a, e10);
            u(e10);
            throw e10;
        }
    }

    public final void f() throws IOException {
        try {
            this.f63767d.flushRequest();
        } catch (IOException e10) {
            this.f63765b.s(this.f63764a, e10);
            u(e10);
            throw e10;
        }
    }

    @NotNull
    public final RealCall g() {
        return this.f63764a;
    }

    @NotNull
    public final RealConnection h() {
        return this.f63770g;
    }

    @NotNull
    public final EventListener i() {
        return this.f63765b;
    }

    @NotNull
    public final ExchangeFinder j() {
        return this.f63766c;
    }

    public final boolean k() {
        return this.f63769f;
    }

    public final boolean l() {
        return !Intrinsics.areEqual(this.f63766c.d().l().i(), this.f63770g.A().a().l().i());
    }

    public final boolean m() {
        return this.f63768e;
    }

    @NotNull
    public final RealWebSocket.Streams n() throws SocketException {
        this.f63764a.y();
        return this.f63767d.getConnection().x(this);
    }

    public final void o() {
        this.f63767d.getConnection().z();
    }

    public final void p() {
        this.f63764a.s(this, true, false, null);
    }

    @NotNull
    public final ResponseBody q(@NotNull Response response) throws IOException {
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            String t10 = Response.t(response, CommonGatewayClient.HEADER_CONTENT_TYPE, null, 2, null);
            long c10 = this.f63767d.c(response);
            return new RealResponseBody(t10, c10, Okio.buffer(new ResponseBodySource(this, this.f63767d.a(response), c10)));
        } catch (IOException e10) {
            this.f63765b.x(this.f63764a, e10);
            u(e10);
            throw e10;
        }
    }

    @Nullable
    public final Response.Builder r(boolean z10) throws IOException {
        try {
            Response.Builder readResponseHeaders = this.f63767d.readResponseHeaders(z10);
            if (readResponseHeaders != null) {
                readResponseHeaders.l(this);
            }
            return readResponseHeaders;
        } catch (IOException e10) {
            this.f63765b.x(this.f63764a, e10);
            u(e10);
            throw e10;
        }
    }

    public final void s(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.f63765b.y(this.f63764a, response);
    }

    public final void t() {
        this.f63765b.z(this.f63764a);
    }

    public final void v() {
        a(-1L, true, true, null);
    }

    public final void w(@NotNull Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            this.f63765b.u(this.f63764a);
            this.f63767d.d(request);
            this.f63765b.t(this.f63764a, request);
        } catch (IOException e10) {
            this.f63765b.s(this.f63764a, e10);
            u(e10);
            throw e10;
        }
    }
}

package com.applovin.shadow.okhttp3.internal.http2;

import com.applovin.shadow.okhttp3.Headers;
import com.applovin.shadow.okhttp3.OkHttpClient;
import com.applovin.shadow.okhttp3.Protocol;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.connection.RealConnection;
import com.applovin.shadow.okhttp3.internal.http.ExchangeCodec;
import com.applovin.shadow.okhttp3.internal.http.HttpHeaders;
import com.applovin.shadow.okhttp3.internal.http.RealInterceptorChain;
import com.applovin.shadow.okhttp3.internal.http.RequestLine;
import com.applovin.shadow.okhttp3.internal.http.StatusLine;
import com.applovin.shadow.okio.Sink;
import com.applovin.shadow.okio.Source;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Http2ExchangeCodec.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {
    @NotNull
    private static final String HOST = "host";
    private volatile boolean canceled;
    @NotNull
    private final RealInterceptorChain chain;
    @NotNull
    private final RealConnection connection;
    @NotNull
    private final Http2Connection http2Connection;
    @NotNull
    private final Protocol protocol;
    @Nullable
    private volatile Http2Stream stream;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String CONNECTION = "connection";
    @NotNull
    private static final String KEEP_ALIVE = "keep-alive";
    @NotNull
    private static final String PROXY_CONNECTION = "proxy-connection";
    @NotNull
    private static final String TE = "te";
    @NotNull
    private static final String TRANSFER_ENCODING = "transfer-encoding";
    @NotNull
    private static final String ENCODING = "encoding";
    @NotNull
    private static final String UPGRADE = "upgrade";
    @NotNull
    private static final List<String> HTTP_2_SKIPPED_REQUEST_HEADERS = Util.immutableListOf(CONNECTION, "host", KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE, Header.TARGET_METHOD_UTF8, Header.TARGET_PATH_UTF8, Header.TARGET_SCHEME_UTF8, Header.TARGET_AUTHORITY_UTF8);
    @NotNull
    private static final List<String> HTTP_2_SKIPPED_RESPONSE_HEADERS = Util.immutableListOf(CONNECTION, "host", KEEP_ALIVE, PROXY_CONNECTION, TE, TRANSFER_ENCODING, ENCODING, UPGRADE);

    /* compiled from: Http2ExchangeCodec.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<Header> http2HeadersList(@NotNull Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Headers headers = request.headers();
            ArrayList arrayList = new ArrayList(headers.size() + 4);
            arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
            arrayList.add(new Header(Header.TARGET_PATH, RequestLine.INSTANCE.requestPath(request.url())));
            String header = request.header("Host");
            if (header != null) {
                arrayList.add(new Header(Header.TARGET_AUTHORITY, header));
            }
            arrayList.add(new Header(Header.TARGET_SCHEME, request.url().scheme()));
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String name = headers.name(i10);
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = name.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (!Http2ExchangeCodec.HTTP_2_SKIPPED_REQUEST_HEADERS.contains(lowerCase) || (Intrinsics.areEqual(lowerCase, Http2ExchangeCodec.TE) && Intrinsics.areEqual(headers.value(i10), "trailers"))) {
                    arrayList.add(new Header(lowerCase, headers.value(i10)));
                }
            }
            return arrayList;
        }

        @NotNull
        public final Response.Builder readHttp2HeadersList(@NotNull Headers headerBlock, @NotNull Protocol protocol) {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Headers.Builder builder = new Headers.Builder();
            int size = headerBlock.size();
            StatusLine statusLine = null;
            for (int i10 = 0; i10 < size; i10++) {
                String name = headerBlock.name(i10);
                String value = headerBlock.value(i10);
                if (Intrinsics.areEqual(name, Header.RESPONSE_STATUS_UTF8)) {
                    StatusLine.Companion companion = StatusLine.Companion;
                    statusLine = companion.parse("HTTP/1.1 " + value);
                } else if (!Http2ExchangeCodec.HTTP_2_SKIPPED_RESPONSE_HEADERS.contains(name)) {
                    builder.addLenient$okhttp(name, value);
                }
            }
            if (statusLine != null) {
                return new Response.Builder().protocol(protocol).code(statusLine.code).message(statusLine.message).headers(builder.build());
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
        this.connection = connection;
        this.chain = chain;
        this.http2Connection = http2Connection;
        List<Protocol> protocols = client.protocols();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.protocol = protocols.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        this.canceled = true;
        Http2Stream http2Stream = this.stream;
        if (http2Stream != null) {
            http2Stream.closeLater(ErrorCode.CANCEL);
        }
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Sink createRequestBody(@NotNull Request request, long j10) {
        Intrinsics.checkNotNullParameter(request, "request");
        Http2Stream http2Stream = this.stream;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.getSink();
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    public void finishRequest() {
        Http2Stream http2Stream = this.stream;
        Intrinsics.checkNotNull(http2Stream);
        http2Stream.getSink().close();
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    public void flushRequest() {
        this.http2Connection.flush();
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    @NotNull
    public RealConnection getConnection() {
        return this.connection;
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Source openResponseBodySource(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Http2Stream http2Stream = this.stream;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.getSource$okhttp();
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    @Nullable
    public Response.Builder readResponseHeaders(boolean z10) {
        Http2Stream http2Stream = this.stream;
        if (http2Stream != null) {
            Response.Builder readHttp2HeadersList = Companion.readHttp2HeadersList(http2Stream.takeHeaders(), this.protocol);
            if (z10 && readHttp2HeadersList.getCode$okhttp() == 100) {
                return null;
            }
            return readHttp2HeadersList;
        }
        throw new IOException("stream wasn't created");
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    public long reportedContentLength(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return 0L;
        }
        return Util.headersContentLength(response);
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    @NotNull
    public Headers trailers() {
        Http2Stream http2Stream = this.stream;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.trailers();
    }

    @Override // com.applovin.shadow.okhttp3.internal.http.ExchangeCodec
    public void writeRequestHeaders(@NotNull Request request) {
        boolean z10;
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.stream != null) {
            return;
        }
        if (request.body() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.stream = this.http2Connection.newStream(Companion.http2HeadersList(request), z10);
        if (!this.canceled) {
            Http2Stream http2Stream = this.stream;
            Intrinsics.checkNotNull(http2Stream);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            http2Stream.readTimeout().timeout(this.chain.getReadTimeoutMillis$okhttp(), timeUnit);
            Http2Stream http2Stream2 = this.stream;
            Intrinsics.checkNotNull(http2Stream2);
            http2Stream2.writeTimeout().timeout(this.chain.getWriteTimeoutMillis$okhttp(), timeUnit);
            return;
        }
        Http2Stream http2Stream3 = this.stream;
        Intrinsics.checkNotNull(http2Stream3);
        http2Stream3.closeLater(ErrorCode.CANCEL);
        throw new IOException("Canceled");
    }
}

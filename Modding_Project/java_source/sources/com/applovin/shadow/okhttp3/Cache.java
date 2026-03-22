package com.applovin.shadow.okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.collection.SieveCacheKt;
import androidx.webkit.ProxyConfig;
import com.applovin.shadow.okhttp3.Headers;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.cache.CacheRequest;
import com.applovin.shadow.okhttp3.internal.cache.CacheStrategy;
import com.applovin.shadow.okhttp3.internal.cache.DiskLruCache;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner;
import com.applovin.shadow.okhttp3.internal.http.HttpMethod;
import com.applovin.shadow.okhttp3.internal.http.StatusLine;
import com.applovin.shadow.okhttp3.internal.io.FileSystem;
import com.applovin.shadow.okhttp3.internal.platform.Platform;
import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.BufferedSink;
import com.applovin.shadow.okio.BufferedSource;
import com.applovin.shadow.okio.ByteString;
import com.applovin.shadow.okio.ForwardingSink;
import com.applovin.shadow.okio.ForwardingSource;
import com.applovin.shadow.okio.Okio;
import com.applovin.shadow.okio.Sink;
import com.applovin.shadow.okio.Source;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Cache.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Cache implements Closeable, Flushable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;
    @NotNull
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class CacheResponseBody extends ResponseBody {
        @NotNull
        private final BufferedSource bodySource;
        @Nullable
        private final String contentLength;
        @Nullable
        private final String contentType;
        @NotNull
        private final DiskLruCache.Snapshot snapshot;

        public CacheResponseBody(@NotNull DiskLruCache.Snapshot snapshot, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = Okio.buffer(new ForwardingSource(snapshot.getSource(1)) { // from class: com.applovin.shadow.okhttp3.Cache.CacheResponseBody.1
                @Override // com.applovin.shadow.okio.ForwardingSource, com.applovin.shadow.okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // com.applovin.shadow.okhttp3.ResponseBody
        public long contentLength() {
            String str = this.contentLength;
            if (str == null) {
                return -1L;
            }
            return Util.toLongOrDefault(str, -1L);
        }

        @Override // com.applovin.shadow.okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            String str = this.contentType;
            if (str != null) {
                return MediaType.Companion.parse(str);
            }
            return null;
        }

        @NotNull
        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // com.applovin.shadow.okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.bodySource;
        }
    }

    /* compiled from: Cache.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,788:1\n2624#2,3:789\n*S KotlinDebug\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n*L\n729#1:789,3\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Set<String> varyFields(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i10 = 0; i10 < size; i10++) {
                if (StringsKt.G("Vary", headers.name(i10), true)) {
                    String value = headers.value(i10);
                    if (treeSet == null) {
                        treeSet = new TreeSet(StringsKt.I(StringCompanionObject.INSTANCE));
                    }
                    for (String str : StringsKt.Y0(value, new char[]{','}, false, 0, 6, null)) {
                        treeSet.add(StringsKt.v1(str).toString());
                    }
                }
            }
            if (treeSet == null) {
                return y0.f();
            }
            return treeSet;
        }

        public final boolean hasVaryAll(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            return varyFields(response.headers()).contains(ProxyConfig.MATCH_ALL_SCHEMES);
        }

        @NotNull
        public final String key(@NotNull HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return ByteString.Companion.encodeUtf8(url.toString()).md5().hex();
        }

        public final int readInt$okhttp(@NotNull BufferedSource source) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            try {
                long readDecimalLong = source.readDecimalLong();
                String readUtf8LineStrict = source.readUtf8LineStrict();
                if (readDecimalLong >= 0 && readDecimalLong <= SieveCacheKt.NodeLinkMask && readUtf8LineStrict.length() <= 0) {
                    return (int) readDecimalLong;
                }
                throw new IOException("expected an int but was \"" + readDecimalLong + readUtf8LineStrict + '\"');
            } catch (NumberFormatException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        @NotNull
        public final Headers varyHeaders(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            Response networkResponse = response.networkResponse();
            Intrinsics.checkNotNull(networkResponse);
            return varyHeaders(networkResponse.request().headers(), response.headers());
        }

        public final boolean varyMatches(@NotNull Response cachedResponse, @NotNull Headers cachedRequest, @NotNull Request newRequest) {
            Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
            Intrinsics.checkNotNullParameter(cachedRequest, "cachedRequest");
            Intrinsics.checkNotNullParameter(newRequest, "newRequest");
            Set<String> varyFields = varyFields(cachedResponse.headers());
            if ((varyFields instanceof Collection) && varyFields.isEmpty()) {
                return true;
            }
            for (String str : varyFields) {
                if (!Intrinsics.areEqual(cachedRequest.values(str), newRequest.headers(str))) {
                    return false;
                }
            }
            return true;
        }

        private Companion() {
        }

        private final Headers varyHeaders(Headers headers, Headers headers2) {
            Set<String> varyFields = varyFields(headers2);
            if (varyFields.isEmpty()) {
                return Util.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String name = headers.name(i10);
                if (varyFields.contains(name)) {
                    builder.add(name, headers.value(i10));
                }
            }
            return builder.build();
        }
    }

    /* compiled from: Cache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private final class RealCacheRequest implements CacheRequest {
        @NotNull
        private final Sink body;
        @NotNull
        private final Sink cacheOut;
        private boolean done;
        @NotNull
        private final DiskLruCache.Editor editor;
        final /* synthetic */ Cache this$0;

        public RealCacheRequest(@NotNull final Cache cache, DiskLruCache.Editor editor) {
            Intrinsics.checkNotNullParameter(editor, "editor");
            this.this$0 = cache;
            this.editor = editor;
            Sink newSink = editor.newSink(1);
            this.cacheOut = newSink;
            this.body = new ForwardingSink(newSink) { // from class: com.applovin.shadow.okhttp3.Cache.RealCacheRequest.1
                @Override // com.applovin.shadow.okio.ForwardingSink, com.applovin.shadow.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    Cache cache2 = Cache.this;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache2) {
                        if (realCacheRequest.getDone()) {
                            return;
                        }
                        realCacheRequest.setDone(true);
                        cache2.setWriteSuccessCount$okhttp(cache2.getWriteSuccessCount$okhttp() + 1);
                        super.close();
                        this.editor.commit();
                    }
                }
            };
        }

        @Override // com.applovin.shadow.okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.this$0;
            synchronized (cache) {
                if (this.done) {
                    return;
                }
                this.done = true;
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount$okhttp() + 1);
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.applovin.shadow.okhttp3.internal.cache.CacheRequest
        @NotNull
        public Sink body() {
            return this.body;
        }

        public final boolean getDone() {
            return this.done;
        }

        public final void setDone(boolean z10) {
            this.done = z10;
        }
    }

    public Cache(@NotNull File directory, long j10, @NotNull FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        this.cache = new DiskLruCache(fileSystem, directory, VERSION, 2, j10, TaskRunner.INSTANCE);
    }

    private final void abortQuietly(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    @NotNull
    public static final String key(@NotNull HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    @ms.c
    @NotNull
    /* renamed from: -deprecated_directory  reason: not valid java name */
    public final File m4479deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    @NotNull
    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    @Nullable
    public final Response get$okhttp(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(Companion.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response response = entry.response(snapshot);
                if (!entry.matches(request, response)) {
                    ResponseBody body = response.body();
                    if (body != null) {
                        Util.closeQuietly(body);
                    }
                    return null;
                }
                return response;
            } catch (IOException unused) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    @NotNull
    public final DiskLruCache getCache$okhttp() {
        return this.cache;
    }

    public final int getWriteAbortCount$okhttp() {
        return this.writeAbortCount;
    }

    public final int getWriteSuccessCount$okhttp() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final void initialize() throws IOException {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final synchronized int networkCount() {
        return this.networkCount;
    }

    @Nullable
    public final CacheRequest put$okhttp(@NotNull Response response) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(response, "response");
        String method = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        } else if (!Intrinsics.areEqual(method, ShareTarget.METHOD_GET)) {
            return null;
        } else {
            Companion companion = Companion;
            if (companion.hasVaryAll(response)) {
                return null;
            }
            Entry entry = new Entry(response);
            try {
                editor = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
                if (editor == null) {
                    return null;
                }
                try {
                    entry.writeTo(editor);
                    return new RealCacheRequest(this, editor);
                } catch (IOException unused2) {
                    abortQuietly(editor);
                    return null;
                }
            } catch (IOException unused3) {
                editor = null;
            }
        }
    }

    public final void remove$okhttp(@NotNull Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        this.cache.remove(Companion.key(request.url()));
    }

    public final synchronized int requestCount() {
        return this.requestCount;
    }

    public final void setWriteAbortCount$okhttp(int i10) {
        this.writeAbortCount = i10;
    }

    public final void setWriteSuccessCount$okhttp(int i10) {
        this.writeSuccessCount = i10;
    }

    public final long size() throws IOException {
        return this.cache.size();
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.hitCount++;
    }

    public final synchronized void trackResponse$okhttp(@NotNull CacheStrategy cacheStrategy) {
        try {
            Intrinsics.checkNotNullParameter(cacheStrategy, "cacheStrategy");
            this.requestCount++;
            if (cacheStrategy.getNetworkRequest() != null) {
                this.networkCount++;
            } else if (cacheStrategy.getCacheResponse() != null) {
                this.hitCount++;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void update$okhttp(@NotNull Response cached, @NotNull Response network) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(cached, "cached");
        Intrinsics.checkNotNullParameter(network, "network");
        Entry entry = new Entry(network);
        ResponseBody body = cached.body();
        Intrinsics.checkNotNull(body, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        try {
            editor = ((CacheResponseBody) body).getSnapshot().edit();
            if (editor == null) {
                return;
            }
            try {
                entry.writeTo(editor);
                editor.commit();
            } catch (IOException unused) {
                abortQuietly(editor);
            }
        } catch (IOException unused2) {
            editor = null;
        }
    }

    @NotNull
    public final Iterator<String> urls() throws IOException {
        return new Cache$urls$1(this);
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(@NotNull File directory, long j10) {
        this(directory, j10, FileSystem.SYSTEM);
        Intrinsics.checkNotNullParameter(directory, "directory");
    }

    /* compiled from: Cache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Entry {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final String RECEIVED_MILLIS;
        @NotNull
        private static final String SENT_MILLIS;
        private final int code;
        @Nullable
        private final Handshake handshake;
        @NotNull
        private final String message;
        @NotNull
        private final Protocol protocol;
        private final long receivedResponseMillis;
        @NotNull
        private final String requestMethod;
        @NotNull
        private final Headers responseHeaders;
        private final long sentRequestMillis;
        @NotNull
        private final HttpUrl url;
        @NotNull
        private final Headers varyHeaders;

        /* compiled from: Cache.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        static {
            Platform.Companion companion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Platform.Companion.get().getPrefix());
            sb2.append("-Sent-Millis");
            SENT_MILLIS = sb2.toString();
            RECEIVED_MILLIS = companion.get().getPrefix() + "-Received-Millis";
        }

        public Entry(@NotNull Source rawSource) throws IOException {
            TlsVersion tlsVersion;
            Intrinsics.checkNotNullParameter(rawSource, "rawSource");
            try {
                BufferedSource buffer = Okio.buffer(rawSource);
                String readUtf8LineStrict = buffer.readUtf8LineStrict();
                HttpUrl parse = HttpUrl.Companion.parse(readUtf8LineStrict);
                if (parse != null) {
                    this.url = parse;
                    this.requestMethod = buffer.readUtf8LineStrict();
                    Headers.Builder builder = new Headers.Builder();
                    int readInt$okhttp = Cache.Companion.readInt$okhttp(buffer);
                    for (int i10 = 0; i10 < readInt$okhttp; i10++) {
                        builder.addLenient$okhttp(buffer.readUtf8LineStrict());
                    }
                    this.varyHeaders = builder.build();
                    StatusLine parse2 = StatusLine.Companion.parse(buffer.readUtf8LineStrict());
                    this.protocol = parse2.protocol;
                    this.code = parse2.code;
                    this.message = parse2.message;
                    Headers.Builder builder2 = new Headers.Builder();
                    int readInt$okhttp2 = Cache.Companion.readInt$okhttp(buffer);
                    for (int i11 = 0; i11 < readInt$okhttp2; i11++) {
                        builder2.addLenient$okhttp(buffer.readUtf8LineStrict());
                    }
                    String str = SENT_MILLIS;
                    String str2 = builder2.get(str);
                    String str3 = RECEIVED_MILLIS;
                    String str4 = builder2.get(str3);
                    builder2.removeAll(str);
                    builder2.removeAll(str3);
                    this.sentRequestMillis = str2 != null ? Long.parseLong(str2) : 0L;
                    this.receivedResponseMillis = str4 != null ? Long.parseLong(str4) : 0L;
                    this.responseHeaders = builder2.build();
                    if (isHttps()) {
                        String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
                        if (readUtf8LineStrict2.length() <= 0) {
                            CipherSuite forJavaName = CipherSuite.Companion.forJavaName(buffer.readUtf8LineStrict());
                            List<Certificate> readCertificateList = readCertificateList(buffer);
                            List<Certificate> readCertificateList2 = readCertificateList(buffer);
                            if (!buffer.exhausted()) {
                                tlsVersion = TlsVersion.Companion.forJavaName(buffer.readUtf8LineStrict());
                            } else {
                                tlsVersion = TlsVersion.SSL_3_0;
                            }
                            this.handshake = Handshake.Companion.get(tlsVersion, forJavaName, readCertificateList, readCertificateList2);
                        } else {
                            throw new IOException("expected \"\" but was \"" + readUtf8LineStrict2 + '\"');
                        }
                    } else {
                        this.handshake = null;
                    }
                    Unit unit = Unit.f60915a;
                    ws.b.a(rawSource, null);
                    return;
                }
                IOException iOException = new IOException("Cache corruption for " + readUtf8LineStrict);
                Platform.Companion.get().log("cache corruption", 5, iOException);
                throw iOException;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ws.b.a(rawSource, th2);
                    throw th3;
                }
            }
        }

        private final boolean isHttps() {
            return Intrinsics.areEqual(this.url.scheme(), "https");
        }

        private final List<Certificate> readCertificateList(BufferedSource bufferedSource) throws IOException {
            int readInt$okhttp = Cache.Companion.readInt$okhttp(bufferedSource);
            if (readInt$okhttp == -1) {
                return CollectionsKt.n();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
                ArrayList arrayList = new ArrayList(readInt$okhttp);
                for (int i10 = 0; i10 < readInt$okhttp; i10++) {
                    String readUtf8LineStrict = bufferedSource.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    ByteString decodeBase64 = ByteString.Companion.decodeBase64(readUtf8LineStrict);
                    if (decodeBase64 != null) {
                        buffer.write(decodeBase64);
                        arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                    } else {
                        throw new IOException("Corrupt certificate in cache entry");
                    }
                }
                return arrayList;
            } catch (CertificateException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        private final void writeCertList(BufferedSink bufferedSink, List<? extends Certificate> list) throws IOException {
            try {
                bufferedSink.writeDecimalLong(list.size()).writeByte(10);
                for (Certificate certificate : list) {
                    byte[] bytes = certificate.getEncoded();
                    ByteString.Companion companion = ByteString.Companion;
                    Intrinsics.checkNotNullExpressionValue(bytes, "bytes");
                    bufferedSink.writeUtf8(ByteString.Companion.of$default(companion, bytes, 0, 0, 3, null).base64()).writeByte(10);
                }
            } catch (CertificateEncodingException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public final boolean matches(@NotNull Request request, @NotNull Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(response, "response");
            if (Intrinsics.areEqual(this.url, request.url()) && Intrinsics.areEqual(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Response response(@NotNull DiskLruCache.Snapshot snapshot) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            String str = this.responseHeaders.get(CommonGatewayClient.HEADER_CONTENT_TYPE);
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(@NotNull DiskLruCache.Editor editor) throws IOException {
            Intrinsics.checkNotNullParameter(editor, "editor");
            BufferedSink buffer = Okio.buffer(editor.newSink(0));
            try {
                buffer.writeUtf8(this.url.toString()).writeByte(10);
                buffer.writeUtf8(this.requestMethod).writeByte(10);
                buffer.writeDecimalLong(this.varyHeaders.size()).writeByte(10);
                int size = this.varyHeaders.size();
                for (int i10 = 0; i10 < size; i10++) {
                    buffer.writeUtf8(this.varyHeaders.name(i10)).writeUtf8(": ").writeUtf8(this.varyHeaders.value(i10)).writeByte(10);
                }
                buffer.writeUtf8(new StatusLine(this.protocol, this.code, this.message).toString()).writeByte(10);
                buffer.writeDecimalLong(this.responseHeaders.size() + 2).writeByte(10);
                int size2 = this.responseHeaders.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    buffer.writeUtf8(this.responseHeaders.name(i11)).writeUtf8(": ").writeUtf8(this.responseHeaders.value(i11)).writeByte(10);
                }
                buffer.writeUtf8(SENT_MILLIS).writeUtf8(": ").writeDecimalLong(this.sentRequestMillis).writeByte(10);
                buffer.writeUtf8(RECEIVED_MILLIS).writeUtf8(": ").writeDecimalLong(this.receivedResponseMillis).writeByte(10);
                if (isHttps()) {
                    buffer.writeByte(10);
                    Handshake handshake = this.handshake;
                    Intrinsics.checkNotNull(handshake);
                    buffer.writeUtf8(handshake.cipherSuite().javaName()).writeByte(10);
                    writeCertList(buffer, this.handshake.peerCertificates());
                    writeCertList(buffer, this.handshake.localCertificates());
                    buffer.writeUtf8(this.handshake.tlsVersion().javaName()).writeByte(10);
                }
                Unit unit = Unit.f60915a;
                ws.b.a(buffer, null);
            } finally {
            }
        }

        public Entry(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.url = response.request().url();
            this.varyHeaders = Cache.Companion.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }
    }
}

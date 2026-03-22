package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.collection.SieveCacheKt;
import androidx.webkit.ProxyConfig;
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
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: Cache.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Cache implements Closeable, Flushable {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final Companion f63248g = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final DiskLruCache f63249a;

    /* renamed from: b  reason: collision with root package name */
    private int f63250b;

    /* renamed from: c  reason: collision with root package name */
    private int f63251c;

    /* renamed from: d  reason: collision with root package name */
    private int f63252d;

    /* renamed from: e  reason: collision with root package name */
    private int f63253e;

    /* renamed from: f  reason: collision with root package name */
    private int f63254f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class CacheResponseBody extends ResponseBody {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final DiskLruCache.Snapshot f63255a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f63256b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f63257c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final BufferedSource f63258d;

        public CacheResponseBody(@NotNull DiskLruCache.Snapshot snapshot, @Nullable String str, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            this.f63255a = snapshot;
            this.f63256b = str;
            this.f63257c = str2;
            this.f63258d = Okio.buffer(new ForwardingSource(snapshot.g(1)) { // from class: okhttp3.Cache.CacheResponseBody.1
                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.d().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.f63257c;
            if (str == null) {
                return -1L;
            }
            return Util.X(str, -1L);
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            String str = this.f63256b;
            if (str != null) {
                return MediaType.f63480e.b(str);
            }
            return null;
        }

        @NotNull
        public final DiskLruCache.Snapshot d() {
            return this.f63255a;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.f63258d;
        }
    }

    /* compiled from: Cache.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,788:1\n2624#2,3:789\n*S KotlinDebug\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n*L\n729#1:789,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Set<String> d(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i10 = 0; i10 < size; i10++) {
                if (StringsKt.G("Vary", headers.d(i10), true)) {
                    String i11 = headers.i(i10);
                    if (treeSet == null) {
                        treeSet = new TreeSet(StringsKt.I(StringCompanionObject.INSTANCE));
                    }
                    for (String str : StringsKt.Y0(i11, new char[]{','}, false, 0, 6, null)) {
                        treeSet.add(StringsKt.v1(str).toString());
                    }
                }
            }
            if (treeSet == null) {
                return y0.f();
            }
            return treeSet;
        }

        private final Headers e(Headers headers, Headers headers2) {
            Set<String> d10 = d(headers2);
            if (d10.isEmpty()) {
                return Util.f63628b;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String d11 = headers.d(i10);
                if (d10.contains(d11)) {
                    builder.a(d11, headers.i(i10));
                }
            }
            return builder.f();
        }

        public final boolean a(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            return d(response.u()).contains(ProxyConfig.MATCH_ALL_SCHEMES);
        }

        @NotNull
        public final String b(@NotNull HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return ByteString.Companion.encodeUtf8(url.toString()).md5().hex();
        }

        public final int c(@NotNull BufferedSource source) throws IOException {
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
        public final Headers f(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            Response x10 = response.x();
            Intrinsics.checkNotNull(x10);
            return e(x10.W().f(), response.u());
        }

        public final boolean g(@NotNull Response cachedResponse, @NotNull Headers cachedRequest, @NotNull Request newRequest) {
            Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
            Intrinsics.checkNotNullParameter(cachedRequest, "cachedRequest");
            Intrinsics.checkNotNullParameter(newRequest, "newRequest");
            Set<String> d10 = d(cachedResponse.u());
            if ((d10 instanceof Collection) && d10.isEmpty()) {
                return true;
            }
            for (String str : d10) {
                if (!Intrinsics.areEqual(cachedRequest.j(str), newRequest.e(str))) {
                    return false;
                }
            }
            return true;
        }

        private Companion() {
        }
    }

    /* compiled from: Cache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private final class RealCacheRequest implements CacheRequest {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final DiskLruCache.Editor f63273a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Sink f63274b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Sink f63275c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f63276d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Cache f63277e;

        public RealCacheRequest(@NotNull final Cache cache, DiskLruCache.Editor editor) {
            Intrinsics.checkNotNullParameter(editor, "editor");
            this.f63277e = cache;
            this.f63273a = editor;
            Sink f10 = editor.f(1);
            this.f63274b = f10;
            this.f63275c = new ForwardingSink(f10) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    Cache cache2 = Cache.this;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache2) {
                        if (realCacheRequest.b()) {
                            return;
                        }
                        realCacheRequest.c(true);
                        cache2.p(cache2.k() + 1);
                        super.close();
                        this.f63273a.b();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.f63277e;
            synchronized (cache) {
                if (this.f63276d) {
                    return;
                }
                this.f63276d = true;
                cache.o(cache.d() + 1);
                Util.m(this.f63274b);
                try {
                    this.f63273a.a();
                } catch (IOException unused) {
                }
            }
        }

        public final boolean b() {
            return this.f63276d;
        }

        @Override // okhttp3.internal.cache.CacheRequest
        @NotNull
        public Sink body() {
            return this.f63275c;
        }

        public final void c(boolean z10) {
            this.f63276d = z10;
        }
    }

    public Cache(@NotNull File directory, long j10, @NotNull FileSystem fileSystem) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        this.f63249a = new DiskLruCache(fileSystem, directory, 201105, 2, j10, TaskRunner.f63748i);
    }

    private final void a(DiskLruCache.Editor editor) {
        if (editor != null) {
            try {
                editor.a();
            } catch (IOException unused) {
            }
        }
    }

    @Nullable
    public final Response b(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            DiskLruCache.Snapshot s10 = this.f63249a.s(f63248g.b(request.l()));
            if (s10 == null) {
                return null;
            }
            try {
                Entry entry = new Entry(s10.g(0));
                Response d10 = entry.d(s10);
                if (!entry.b(request, d10)) {
                    ResponseBody d11 = d10.d();
                    if (d11 != null) {
                        Util.m(d11);
                    }
                    return null;
                }
                return d10;
            } catch (IOException unused) {
                Util.m(s10);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f63249a.close();
    }

    public final int d() {
        return this.f63251c;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.f63249a.flush();
    }

    public final int k() {
        return this.f63250b;
    }

    @Nullable
    public final CacheRequest l(@NotNull Response response) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(response, "response");
        String h10 = response.W().h();
        if (HttpMethod.f63867a.a(response.W().h())) {
            try {
                m(response.W());
            } catch (IOException unused) {
            }
            return null;
        } else if (!Intrinsics.areEqual(h10, ShareTarget.METHOD_GET)) {
            return null;
        } else {
            Companion companion = f63248g;
            if (companion.a(response)) {
                return null;
            }
            Entry entry = new Entry(response);
            try {
                editor = DiskLruCache.r(this.f63249a, companion.b(response.W().l()), 0L, 2, null);
                if (editor == null) {
                    return null;
                }
                try {
                    entry.f(editor);
                    return new RealCacheRequest(this, editor);
                } catch (IOException unused2) {
                    a(editor);
                    return null;
                }
            } catch (IOException unused3) {
                editor = null;
            }
        }
    }

    public final void m(@NotNull Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f63249a.Z(f63248g.b(request.l()));
    }

    public final void o(int i10) {
        this.f63251c = i10;
    }

    public final void p(int i10) {
        this.f63250b = i10;
    }

    public final synchronized void q() {
        this.f63253e++;
    }

    public final synchronized void r(@NotNull CacheStrategy cacheStrategy) {
        try {
            Intrinsics.checkNotNullParameter(cacheStrategy, "cacheStrategy");
            this.f63254f++;
            if (cacheStrategy.b() != null) {
                this.f63252d++;
            } else if (cacheStrategy.a() != null) {
                this.f63253e++;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void s(@NotNull Response cached, @NotNull Response network) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(cached, "cached");
        Intrinsics.checkNotNullParameter(network, "network");
        Entry entry = new Entry(network);
        ResponseBody d10 = cached.d();
        Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        try {
            editor = ((CacheResponseBody) d10).d().d();
            if (editor == null) {
                return;
            }
            try {
                entry.f(editor);
                editor.b();
            } catch (IOException unused) {
                a(editor);
            }
        } catch (IOException unused2) {
            editor = null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(@NotNull File directory, long j10) {
        this(directory, j10, FileSystem.f64096b);
        Intrinsics.checkNotNullParameter(directory, "directory");
    }

    /* compiled from: Cache.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class Entry {
        @NotNull

        /* renamed from: k  reason: collision with root package name */
        public static final Companion f63260k = new Companion(null);
        @NotNull

        /* renamed from: l  reason: collision with root package name */
        private static final String f63261l;
        @NotNull

        /* renamed from: m  reason: collision with root package name */
        private static final String f63262m;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HttpUrl f63263a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Headers f63264b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f63265c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final Protocol f63266d;

        /* renamed from: e  reason: collision with root package name */
        private final int f63267e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final String f63268f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final Headers f63269g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final Handshake f63270h;

        /* renamed from: i  reason: collision with root package name */
        private final long f63271i;

        /* renamed from: j  reason: collision with root package name */
        private final long f63272j;

        /* compiled from: Cache.kt */
        @Metadata
        /* loaded from: classes8.dex */
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
            sb2.append(Platform.f64128a.g().g());
            sb2.append("-Sent-Millis");
            f63261l = sb2.toString();
            f63262m = companion.g().g() + "-Received-Millis";
        }

        public Entry(@NotNull Source rawSource) throws IOException {
            TlsVersion tlsVersion;
            Intrinsics.checkNotNullParameter(rawSource, "rawSource");
            try {
                BufferedSource buffer = Okio.buffer(rawSource);
                String readUtf8LineStrict = buffer.readUtf8LineStrict();
                HttpUrl f10 = HttpUrl.f63457k.f(readUtf8LineStrict);
                if (f10 != null) {
                    this.f63263a = f10;
                    this.f63265c = buffer.readUtf8LineStrict();
                    Headers.Builder builder = new Headers.Builder();
                    int c10 = Cache.f63248g.c(buffer);
                    for (int i10 = 0; i10 < c10; i10++) {
                        builder.c(buffer.readUtf8LineStrict());
                    }
                    this.f63264b = builder.f();
                    StatusLine a10 = StatusLine.f63883d.a(buffer.readUtf8LineStrict());
                    this.f63266d = a10.f63884a;
                    this.f63267e = a10.f63885b;
                    this.f63268f = a10.f63886c;
                    Headers.Builder builder2 = new Headers.Builder();
                    int c11 = Cache.f63248g.c(buffer);
                    for (int i11 = 0; i11 < c11; i11++) {
                        builder2.c(buffer.readUtf8LineStrict());
                    }
                    String str = f63261l;
                    String g10 = builder2.g(str);
                    String str2 = f63262m;
                    String g11 = builder2.g(str2);
                    builder2.i(str);
                    builder2.i(str2);
                    this.f63271i = g10 != null ? Long.parseLong(g10) : 0L;
                    this.f63272j = g11 != null ? Long.parseLong(g11) : 0L;
                    this.f63269g = builder2.f();
                    if (a()) {
                        String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
                        if (readUtf8LineStrict2.length() <= 0) {
                            CipherSuite b10 = CipherSuite.f63322b.b(buffer.readUtf8LineStrict());
                            List<Certificate> c12 = c(buffer);
                            List<Certificate> c13 = c(buffer);
                            if (!buffer.exhausted()) {
                                tlsVersion = TlsVersion.Companion.a(buffer.readUtf8LineStrict());
                            } else {
                                tlsVersion = TlsVersion.SSL_3_0;
                            }
                            this.f63270h = Handshake.f63446e.b(tlsVersion, b10, c12, c13);
                        } else {
                            throw new IOException("expected \"\" but was \"" + readUtf8LineStrict2 + '\"');
                        }
                    } else {
                        this.f63270h = null;
                    }
                    Unit unit = Unit.f60915a;
                    b.a(rawSource, null);
                    return;
                }
                IOException iOException = new IOException("Cache corruption for " + readUtf8LineStrict);
                Platform.f64128a.g().k("cache corruption", 5, iOException);
                throw iOException;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    b.a(rawSource, th2);
                    throw th3;
                }
            }
        }

        private final boolean a() {
            return Intrinsics.areEqual(this.f63263a.t(), "https");
        }

        private final List<Certificate> c(BufferedSource bufferedSource) throws IOException {
            int c10 = Cache.f63248g.c(bufferedSource);
            if (c10 == -1) {
                return CollectionsKt.n();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
                ArrayList arrayList = new ArrayList(c10);
                for (int i10 = 0; i10 < c10; i10++) {
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

        private final void e(BufferedSink bufferedSink, List<? extends Certificate> list) throws IOException {
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

        public final boolean b(@NotNull Request request, @NotNull Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(response, "response");
            if (Intrinsics.areEqual(this.f63263a, request.l()) && Intrinsics.areEqual(this.f63265c, request.h()) && Cache.f63248g.g(response, this.f63264b, request)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Response d(@NotNull DiskLruCache.Snapshot snapshot) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            String a10 = this.f63269g.a(CommonGatewayClient.HEADER_CONTENT_TYPE);
            String a11 = this.f63269g.a("Content-Length");
            return new Response.Builder().r(new Request.Builder().l(this.f63263a).g(this.f63265c, null).f(this.f63264b).b()).p(this.f63266d).g(this.f63267e).m(this.f63268f).k(this.f63269g).b(new CacheResponseBody(snapshot, a10, a11)).i(this.f63270h).s(this.f63271i).q(this.f63272j).c();
        }

        public final void f(@NotNull DiskLruCache.Editor editor) throws IOException {
            Intrinsics.checkNotNullParameter(editor, "editor");
            BufferedSink buffer = Okio.buffer(editor.f(0));
            try {
                buffer.writeUtf8(this.f63263a.toString()).writeByte(10);
                buffer.writeUtf8(this.f63265c).writeByte(10);
                buffer.writeDecimalLong(this.f63264b.size()).writeByte(10);
                int size = this.f63264b.size();
                for (int i10 = 0; i10 < size; i10++) {
                    buffer.writeUtf8(this.f63264b.d(i10)).writeUtf8(": ").writeUtf8(this.f63264b.i(i10)).writeByte(10);
                }
                buffer.writeUtf8(new StatusLine(this.f63266d, this.f63267e, this.f63268f).toString()).writeByte(10);
                buffer.writeDecimalLong(this.f63269g.size() + 2).writeByte(10);
                int size2 = this.f63269g.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    buffer.writeUtf8(this.f63269g.d(i11)).writeUtf8(": ").writeUtf8(this.f63269g.i(i11)).writeByte(10);
                }
                buffer.writeUtf8(f63261l).writeUtf8(": ").writeDecimalLong(this.f63271i).writeByte(10);
                buffer.writeUtf8(f63262m).writeUtf8(": ").writeDecimalLong(this.f63272j).writeByte(10);
                if (a()) {
                    buffer.writeByte(10);
                    Handshake handshake = this.f63270h;
                    Intrinsics.checkNotNull(handshake);
                    buffer.writeUtf8(handshake.a().c()).writeByte(10);
                    e(buffer, this.f63270h.d());
                    e(buffer, this.f63270h.c());
                    buffer.writeUtf8(this.f63270h.e().javaName()).writeByte(10);
                }
                Unit unit = Unit.f60915a;
                b.a(buffer, null);
            } finally {
            }
        }

        public Entry(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.f63263a = response.W().l();
            this.f63264b = Cache.f63248g.f(response);
            this.f63265c = response.W().h();
            this.f63266d = response.R();
            this.f63267e = response.o();
            this.f63268f = response.w();
            this.f63269g = response.u();
            this.f63270h = response.q();
            this.f63271i = response.Y();
            this.f63272j = response.T();
        }
    }
}

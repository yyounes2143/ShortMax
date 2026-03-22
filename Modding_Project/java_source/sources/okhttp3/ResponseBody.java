package okhttp3;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import ms.c;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: ResponseBody.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n1#1,321:1\n140#1,11:322\n140#1,11:333\n*S KotlinDebug\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n124#1:322,11\n134#1:333,11\n*E\n"})
/* loaded from: classes8.dex */
public abstract class ResponseBody implements Closeable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Reader reader;

    /* compiled from: ResponseBody.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody$BomAwareReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1#2:322\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class BomAwareReader extends Reader {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final BufferedSource f63617a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Charset f63618b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f63619c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Reader f63620d;

        public BomAwareReader(@NotNull BufferedSource source, @NotNull Charset charset) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(charset, "charset");
            this.f63617a = source;
            this.f63618b = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Unit unit;
            this.f63619c = true;
            Reader reader = this.f63620d;
            if (reader != null) {
                reader.close();
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.f63617a.close();
            }
        }

        @Override // java.io.Reader
        public int read(@NotNull char[] cbuf, int i10, int i11) throws IOException {
            Intrinsics.checkNotNullParameter(cbuf, "cbuf");
            if (!this.f63619c) {
                Reader reader = this.f63620d;
                if (reader == null) {
                    reader = new InputStreamReader(this.f63617a.inputStream(), Util.J(this.f63617a, this.f63618b));
                    this.f63620d = reader;
                }
                return reader.read(cbuf, i10, i11);
            }
            throw new IOException("Stream closed");
        }
    }

    /* compiled from: ResponseBody.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ResponseBody i(Companion companion, byte[] bArr, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.h(bArr, mediaType);
        }

        @NotNull
        public final ResponseBody a(@NotNull String str, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Charset charset = Charsets.UTF_8;
            if (mediaType != null) {
                Charset d10 = MediaType.d(mediaType, null, 1, null);
                if (d10 == null) {
                    MediaType.Companion companion = MediaType.f63480e;
                    mediaType = companion.b(mediaType + "; charset=utf-8");
                } else {
                    charset = d10;
                }
            }
            Buffer writeString = new Buffer().writeString(str, charset);
            return f(writeString, mediaType, writeString.size());
        }

        @c
        @NotNull
        public final ResponseBody b(@Nullable MediaType mediaType, long j10, @NotNull BufferedSource content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return f(content, mediaType, j10);
        }

        @c
        @NotNull
        public final ResponseBody c(@Nullable MediaType mediaType, @NotNull String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return a(content, mediaType);
        }

        @c
        @NotNull
        public final ResponseBody d(@Nullable MediaType mediaType, @NotNull ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return g(content, mediaType);
        }

        @c
        @NotNull
        public final ResponseBody e(@Nullable MediaType mediaType, @NotNull byte[] content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return h(content, mediaType);
        }

        @NotNull
        public final ResponseBody f(@NotNull final BufferedSource bufferedSource, @Nullable final MediaType mediaType, final long j10) {
            Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j10;
                }

                @Override // okhttp3.ResponseBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.ResponseBody
                @NotNull
                public BufferedSource source() {
                    return bufferedSource;
                }
            };
        }

        @NotNull
        public final ResponseBody g(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(byteString, "<this>");
            return f(new Buffer().write(byteString), mediaType, byteString.size());
        }

        @NotNull
        public final ResponseBody h(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return f(new Buffer().write(bArr), mediaType, bArr.length);
        }

        private Companion() {
        }
    }

    private final Charset charset() {
        Charset c10;
        MediaType contentType = contentType();
        if (contentType == null || (c10 = contentType.c(Charsets.UTF_8)) == null) {
            return Charsets.UTF_8;
        }
        return c10;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
    private final <T> T consumeSource(Function1<? super BufferedSource, ? extends T> function1, Function1<? super T, Integer> function12) {
        long contentLength = contentLength();
        if (contentLength <= SieveCacheKt.NodeLinkMask) {
            BufferedSource source = source();
            try {
                T invoke = function1.invoke(source);
                InlineMarker.finallyStart(1);
                b.a(source, null);
                InlineMarker.finallyEnd(1);
                int intValue = function12.invoke(invoke).intValue();
                if (contentLength != -1 && contentLength != intValue) {
                    throw new IOException("Content-Length (" + contentLength + ") and stream length (" + intValue + ") disagree");
                }
                return invoke;
            } finally {
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    @NotNull
    public static final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.a(str, mediaType);
    }

    @NotNull
    public final InputStream byteStream() {
        return source().inputStream();
    }

    @NotNull
    public final ByteString byteString() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= SieveCacheKt.NodeLinkMask) {
            BufferedSource source = source();
            try {
                ByteString readByteString = source.readByteString();
                b.a(source, null);
                int size = readByteString.size();
                if (contentLength != -1 && contentLength != size) {
                    throw new IOException("Content-Length (" + contentLength + ") and stream length (" + size + ") disagree");
                }
                return readByteString;
            } finally {
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    @NotNull
    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= SieveCacheKt.NodeLinkMask) {
            BufferedSource source = source();
            try {
                byte[] readByteArray = source.readByteArray();
                b.a(source, null);
                int length = readByteArray.length;
                if (contentLength != -1 && contentLength != length) {
                    throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
                }
                return readByteArray;
            } finally {
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    @NotNull
    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader == null) {
            BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
            this.reader = bomAwareReader;
            return bomAwareReader;
        }
        return reader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.m(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    @NotNull
    public abstract BufferedSource source();

    @NotNull
    public final String string() throws IOException {
        BufferedSource source = source();
        try {
            String readString = source.readString(Util.J(source, charset()));
            b.a(source, null);
            return readString;
        } finally {
        }
    }

    @c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, long j10, @NotNull BufferedSource bufferedSource) {
        return Companion.b(mediaType, j10, bufferedSource);
    }

    @c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.c(mediaType, str);
    }

    @c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.d(mediaType, byteString);
    }

    @c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.e(mediaType, bArr);
    }

    @NotNull
    public static final ResponseBody create(@NotNull BufferedSource bufferedSource, @Nullable MediaType mediaType, long j10) {
        return Companion.f(bufferedSource, mediaType, j10);
    }

    @NotNull
    public static final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.g(byteString, mediaType);
    }

    @NotNull
    public static final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.h(bArr, mediaType);
    }
}

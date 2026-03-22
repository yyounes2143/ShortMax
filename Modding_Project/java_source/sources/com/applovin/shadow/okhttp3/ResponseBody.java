package com.applovin.shadow.okhttp3;

import androidx.collection.SieveCacheKt;
import com.applovin.shadow.okhttp3.MediaType;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.BufferedSource;
import com.applovin.shadow.okio.ByteString;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResponseBody.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n1#1,321:1\n140#1,11:322\n140#1,11:333\n*S KotlinDebug\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody\n*L\n124#1:322,11\n134#1:333,11\n*E\n"})
/* loaded from: classes2.dex */
public abstract class ResponseBody implements Closeable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Reader reader;

    /* compiled from: ResponseBody.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nResponseBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseBody.kt\nokhttp3/ResponseBody$BomAwareReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1#2:322\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class BomAwareReader extends Reader {
        @NotNull
        private final Charset charset;
        private boolean closed;
        @Nullable
        private Reader delegate;
        @NotNull
        private final BufferedSource source;

        public BomAwareReader(@NotNull BufferedSource source, @NotNull Charset charset) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(charset, "charset");
            this.source = source;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Unit unit;
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit == null) {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(@NotNull char[] cbuf, int i10, int i11) throws IOException {
            Intrinsics.checkNotNullParameter(cbuf, "cbuf");
            if (!this.closed) {
                Reader reader = this.delegate;
                if (reader == null) {
                    reader = new InputStreamReader(this.source.inputStream(), Util.readBomAsCharset(this.source, this.charset));
                    this.delegate = reader;
                }
                return reader.read(cbuf, i10, i11);
            }
            throw new IOException("Stream closed");
        }
    }

    /* compiled from: ResponseBody.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        @NotNull
        public final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Charset charset = Charsets.UTF_8;
            if (mediaType != null) {
                Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charset$default == null) {
                    MediaType.Companion companion = MediaType.Companion;
                    mediaType = companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charset$default;
                }
            }
            Buffer writeString = new Buffer().writeString(str, charset);
            return create(writeString, mediaType, writeString.size());
        }

        private Companion() {
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, BufferedSource bufferedSource, MediaType mediaType, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            if ((i10 & 2) != 0) {
                j10 = -1;
            }
            return companion.create(bufferedSource, mediaType, j10);
        }

        @NotNull
        public final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return create(new Buffer().write(bArr), mediaType, bArr.length);
        }

        @NotNull
        public final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(byteString, "<this>");
            return create(new Buffer().write(byteString), mediaType, byteString.size());
        }

        @NotNull
        public final ResponseBody create(@NotNull final BufferedSource bufferedSource, @Nullable final MediaType mediaType, final long j10) {
            Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
            return new ResponseBody() { // from class: com.applovin.shadow.okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // com.applovin.shadow.okhttp3.ResponseBody
                public long contentLength() {
                    return j10;
                }

                @Override // com.applovin.shadow.okhttp3.ResponseBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // com.applovin.shadow.okhttp3.ResponseBody
                @NotNull
                public BufferedSource source() {
                    return bufferedSource;
                }
            };
        }

        @ms.c
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        @ms.c
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        @ms.c
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        @ms.c
        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, long j10, @NotNull BufferedSource content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType, j10);
        }
    }

    private final Charset charset() {
        Charset charset;
        MediaType contentType = contentType();
        if (contentType == null || (charset = contentType.charset(Charsets.UTF_8)) == null) {
            return Charsets.UTF_8;
        }
        return charset;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
    private final <T> T consumeSource(Function1<? super BufferedSource, ? extends T> function1, Function1<? super T, Integer> function12) {
        long contentLength = contentLength();
        if (contentLength <= SieveCacheKt.NodeLinkMask) {
            BufferedSource source = source();
            try {
                T invoke = function1.invoke(source);
                InlineMarker.finallyStart(1);
                ws.b.a(source, null);
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

    @ms.c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, long j10, @NotNull BufferedSource bufferedSource) {
        return Companion.create(mediaType, j10, bufferedSource);
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
                ws.b.a(source, null);
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
                ws.b.a(source, null);
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
        Util.closeQuietly(source());
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
            String readString = source.readString(Util.readBomAsCharset(source, charset()));
            ws.b.a(source, null);
            return readString;
        } finally {
        }
    }

    @ms.c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    @ms.c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.create(mediaType, str);
    }

    @ms.c
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    @NotNull
    public static final ResponseBody create(@NotNull BufferedSource bufferedSource, @Nullable MediaType mediaType, long j10) {
        return Companion.create(bufferedSource, mediaType, j10);
    }

    @NotNull
    public static final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    @NotNull
    public static final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    @NotNull
    public static final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }
}

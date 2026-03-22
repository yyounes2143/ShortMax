package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import ms.c;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: RequestBody.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class RequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: RequestBody.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ RequestBody n(Companion companion, MediaType mediaType, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 4) != 0) {
                i10 = 0;
            }
            if ((i12 & 8) != 0) {
                i11 = bArr.length;
            }
            return companion.h(mediaType, bArr, i10, i11);
        }

        public static /* synthetic */ RequestBody o(Companion companion, byte[] bArr, MediaType mediaType, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                mediaType = null;
            }
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = bArr.length;
            }
            return companion.m(bArr, mediaType, i10, i11);
        }

        @NotNull
        public final RequestBody a(@NotNull final File file, @Nullable final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    Source source = Okio.source(file);
                    try {
                        sink.writeAll(source);
                        b.a(source, null);
                    } finally {
                    }
                }
            };
        }

        @NotNull
        public final RequestBody b(@NotNull String str, @Nullable MediaType mediaType) {
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
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return m(bytes, mediaType, 0, bytes.length);
        }

        @c
        @NotNull
        public final RequestBody c(@Nullable MediaType mediaType, @NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return a(file, mediaType);
        }

        @c
        @NotNull
        public final RequestBody d(@Nullable MediaType mediaType, @NotNull String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return b(content, mediaType);
        }

        @c
        @NotNull
        public final RequestBody e(@Nullable MediaType mediaType, @NotNull ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return i(content, mediaType);
        }

        @c
        @NotNull
        public final RequestBody f(@Nullable MediaType mediaType, @NotNull byte[] content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return n(this, mediaType, content, 0, 0, 12, null);
        }

        @c
        @NotNull
        public final RequestBody g(@Nullable MediaType mediaType, @NotNull byte[] content, int i10) {
            Intrinsics.checkNotNullParameter(content, "content");
            return n(this, mediaType, content, i10, 0, 8, null);
        }

        @c
        @NotNull
        public final RequestBody h(@Nullable MediaType mediaType, @NotNull byte[] content, int i10, int i11) {
            Intrinsics.checkNotNullParameter(content, "content");
            return m(content, mediaType, i10, i11);
        }

        @NotNull
        public final RequestBody i(@NotNull final ByteString byteString, @Nullable final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(byteString, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return byteString.size();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    sink.write(byteString);
                }
            };
        }

        @NotNull
        public final RequestBody j(@NotNull byte[] bArr) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return o(this, bArr, null, 0, 0, 7, null);
        }

        @NotNull
        public final RequestBody k(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return o(this, bArr, mediaType, 0, 0, 6, null);
        }

        @NotNull
        public final RequestBody l(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i10) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return o(this, bArr, mediaType, i10, 0, 4, null);
        }

        @NotNull
        public final RequestBody m(@NotNull final byte[] bArr, @Nullable final MediaType mediaType, final int i10, final int i11) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            Util.l(bArr.length, i10, i11);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i11;
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    sink.write(bArr, i10, i11);
                }
            };
        }

        private Companion() {
        }
    }

    @NotNull
    public static final RequestBody create(@NotNull File file, @Nullable MediaType mediaType) {
        return Companion.a(file, mediaType);
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(@NotNull BufferedSink bufferedSink) throws IOException;

    @NotNull
    public static final RequestBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.b(str, mediaType);
    }

    @c
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull File file) {
        return Companion.c(mediaType, file);
    }

    @c
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.d(mediaType, str);
    }

    @c
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.e(mediaType, byteString);
    }

    @c
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.f(mediaType, bArr);
    }

    @c
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i10) {
        return Companion.g(mediaType, bArr, i10);
    }

    @c
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i10, int i11) {
        return Companion.h(mediaType, bArr, i10, i11);
    }

    @NotNull
    public static final RequestBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.i(byteString, mediaType);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr) {
        return Companion.j(bArr);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.k(bArr, mediaType);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i10) {
        return Companion.l(bArr, mediaType, i10);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i10, int i11) {
        return Companion.m(bArr, mediaType, i10, i11);
    }
}

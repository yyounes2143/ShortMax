package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultipartBody.kt */
@Metadata
/* loaded from: classes8.dex */
public final class MultipartBody extends RequestBody {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Companion f63487f = new Companion(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final MediaType f63488g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final MediaType f63489h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final MediaType f63490i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final MediaType f63491j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final MediaType f63492k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final byte[] f63493l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f63494m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final byte[] f63495n;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ByteString f63496a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final MediaType f63497b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<Part> f63498c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final MediaType f63499d;

    /* renamed from: e  reason: collision with root package name */
    private long f63500e;

    /* compiled from: MultipartBody.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMultipartBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartBody.kt\nokhttp3/MultipartBody$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1#2:346\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ByteString f63501a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private MediaType f63502b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Part> f63503c;

        public Builder() {
            this(null, 1, null);
        }

        @NotNull
        public final Builder a(@Nullable Headers headers, @NotNull RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            b(Part.f63504c.a(headers, body));
            return this;
        }

        @NotNull
        public final Builder b(@NotNull Part part) {
            Intrinsics.checkNotNullParameter(part, "part");
            this.f63503c.add(part);
            return this;
        }

        @NotNull
        public final MultipartBody c() {
            if (!this.f63503c.isEmpty()) {
                return new MultipartBody(this.f63501a, this.f63502b, Util.V(this.f63503c));
            }
            throw new IllegalStateException("Multipart body must have at least one part.");
        }

        @NotNull
        public final Builder d(@NotNull MediaType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            if (Intrinsics.areEqual(type.h(), "multipart")) {
                this.f63502b = type;
                return this;
            }
            throw new IllegalArgumentException(("multipart != " + type).toString());
        }

        public Builder(@NotNull String boundary) {
            Intrinsics.checkNotNullParameter(boundary, "boundary");
            this.f63501a = ByteString.Companion.encodeUtf8(boundary);
            this.f63502b = MultipartBody.f63488g;
            this.f63503c = new ArrayList();
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ Builder(java.lang.String r1, int r2, kotlin.jvm.internal.DefaultConstructorMarker r3) {
            /*
                r0 = this;
                r2 = r2 & 1
                if (r2 == 0) goto L11
                java.util.UUID r1 = java.util.UUID.randomUUID()
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = "randomUUID().toString()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            L11:
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartBody.Builder.<init>(java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: MultipartBody.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: MultipartBody.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Part {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final Companion f63504c = new Companion(null);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Headers f63505a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final RequestBody f63506b;

        /* compiled from: MultipartBody.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nMultipartBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartBody.kt\nokhttp3/MultipartBody$Part$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1#2:346\n*E\n"})
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Part a(@Nullable Headers headers, @NotNull RequestBody body) {
                String str;
                String str2;
                Intrinsics.checkNotNullParameter(body, "body");
                if (headers != null) {
                    str = headers.a(CommonGatewayClient.HEADER_CONTENT_TYPE);
                } else {
                    str = null;
                }
                if (str == null) {
                    if (headers != null) {
                        str2 = headers.a("Content-Length");
                    } else {
                        str2 = null;
                    }
                    if (str2 == null) {
                        return new Part(headers, body, null);
                    }
                    throw new IllegalArgumentException("Unexpected header: Content-Length");
                }
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }

            private Companion() {
            }
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, DefaultConstructorMarker defaultConstructorMarker) {
            this(headers, requestBody);
        }

        @NotNull
        public final RequestBody a() {
            return this.f63506b;
        }

        @Nullable
        public final Headers b() {
            return this.f63505a;
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.f63505a = headers;
            this.f63506b = requestBody;
        }
    }

    static {
        MediaType.Companion companion = MediaType.f63480e;
        f63488g = companion.a("multipart/mixed");
        f63489h = companion.a("multipart/alternative");
        f63490i = companion.a("multipart/digest");
        f63491j = companion.a("multipart/parallel");
        f63492k = companion.a(ShareTarget.ENCODING_TYPE_MULTIPART);
        f63493l = new byte[]{58, 32};
        f63494m = new byte[]{13, 10};
        f63495n = new byte[]{45, 45};
    }

    public MultipartBody(@NotNull ByteString boundaryByteString, @NotNull MediaType type, @NotNull List<Part> parts) {
        Intrinsics.checkNotNullParameter(boundaryByteString, "boundaryByteString");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(parts, "parts");
        this.f63496a = boundaryByteString;
        this.f63497b = type;
        this.f63498c = parts;
        MediaType.Companion companion = MediaType.f63480e;
        this.f63499d = companion.a(type + "; boundary=" + a());
        this.f63500e = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long b(BufferedSink bufferedSink, boolean z10) throws IOException {
        Buffer buffer;
        if (z10) {
            bufferedSink = new Buffer();
            buffer = bufferedSink;
        } else {
            buffer = 0;
        }
        int size = this.f63498c.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            Part part = this.f63498c.get(i10);
            Headers b10 = part.b();
            RequestBody a10 = part.a();
            Intrinsics.checkNotNull(bufferedSink);
            bufferedSink.write(f63495n);
            bufferedSink.write(this.f63496a);
            bufferedSink.write(f63494m);
            if (b10 != null) {
                int size2 = b10.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    bufferedSink.writeUtf8(b10.d(i11)).write(f63493l).writeUtf8(b10.i(i11)).write(f63494m);
                }
            }
            MediaType contentType = a10.contentType();
            if (contentType != null) {
                bufferedSink.writeUtf8("Content-Type: ").writeUtf8(contentType.toString()).write(f63494m);
            }
            long contentLength = a10.contentLength();
            if (contentLength != -1) {
                bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(contentLength).write(f63494m);
            } else if (z10) {
                Intrinsics.checkNotNull(buffer);
                buffer.clear();
                return -1L;
            }
            byte[] bArr = f63494m;
            bufferedSink.write(bArr);
            if (z10) {
                j10 += contentLength;
            } else {
                a10.writeTo(bufferedSink);
            }
            bufferedSink.write(bArr);
        }
        Intrinsics.checkNotNull(bufferedSink);
        byte[] bArr2 = f63495n;
        bufferedSink.write(bArr2);
        bufferedSink.write(this.f63496a);
        bufferedSink.write(bArr2);
        bufferedSink.write(f63494m);
        if (z10) {
            Intrinsics.checkNotNull(buffer);
            long size3 = j10 + buffer.size();
            buffer.clear();
            return size3;
        }
        return j10;
    }

    @NotNull
    public final String a() {
        return this.f63496a.utf8();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j10 = this.f63500e;
        if (j10 == -1) {
            long b10 = b(null, true);
            this.f63500e = b10;
            return b10;
        }
        return j10;
    }

    @Override // okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return this.f63499d;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        b(sink, false);
    }
}

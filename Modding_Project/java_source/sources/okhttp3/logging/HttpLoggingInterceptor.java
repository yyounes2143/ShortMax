package okhttp3.logging;

import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import org.jetbrains.annotations.NotNull;
import ws.b;
/* compiled from: HttpLoggingInterceptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Logger f64259a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private volatile Set<String> f64260b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private volatile Level f64261c;

    /* compiled from: HttpLoggingInterceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* compiled from: HttpLoggingInterceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Logger {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final Companion f64262a = Companion.f64264a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final Logger f64263b = new Companion.DefaultLogger();

        /* compiled from: HttpLoggingInterceptor.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class Companion {

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ Companion f64264a = new Companion();

            /* compiled from: HttpLoggingInterceptor.kt */
            @Metadata
            /* loaded from: classes8.dex */
            private static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void log(@NotNull String message) {
                    Intrinsics.checkNotNullParameter(message, "message");
                    Platform.l(Platform.f64128a.g(), message, 0, null, 6, null);
                }
            }

            private Companion() {
            }
        }

        void log(@NotNull String str);
    }

    public HttpLoggingInterceptor() {
        this(null, 1, null);
    }

    private final boolean a(Headers headers) {
        String a10 = headers.a("Content-Encoding");
        if (a10 == null || StringsKt.G(a10, "identity", true) || StringsKt.G(a10, "gzip", true)) {
            return false;
        }
        return true;
    }

    private final void c(Headers headers, int i10) {
        String i11;
        if (this.f64260b.contains(headers.d(i10))) {
            i11 = "██";
        } else {
            i11 = headers.i(i10);
        }
        Logger logger = this.f64259a;
        logger.log(headers.d(i10) + ": " + i11);
    }

    public final void b(@NotNull Level level) {
        Intrinsics.checkNotNullParameter(level, "<set-?>");
        this.f64261c = level;
    }

    @NotNull
    public final HttpLoggingInterceptor d(@NotNull Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.f64261c = level;
        return this;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        boolean z10;
        boolean z11;
        String str;
        String str2;
        String str3;
        char c10;
        String sb2;
        String str4;
        Charset UTF_8;
        Charset UTF_82;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Level level = this.f64261c;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.a(request);
        }
        if (level == Level.BODY) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && level != Level.HEADERS) {
            z11 = false;
        } else {
            z11 = true;
        }
        RequestBody a10 = request.a();
        Connection connection = chain.connection();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("--> ");
        sb3.append(request.h());
        sb3.append(' ');
        sb3.append(request.l());
        if (connection == null) {
            str = "";
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(' ');
            sb4.append(connection.protocol());
            str = sb4.toString();
        }
        sb3.append(str);
        String sb5 = sb3.toString();
        if (!z11 && a10 != 0) {
            sb5 = sb5 + " (" + a10.contentLength() + "-byte body)";
        }
        this.f64259a.log(sb5);
        if (z11) {
            Headers f10 = request.f();
            if (a10 != null) {
                MediaType contentType = a10.contentType();
                if (contentType != null && f10.a(CommonGatewayClient.HEADER_CONTENT_TYPE) == null) {
                    this.f64259a.log("Content-Type: " + contentType);
                }
                if (a10.contentLength() != -1 && f10.a("Content-Length") == null) {
                    this.f64259a.log("Content-Length: " + a10.contentLength());
                }
            }
            int size = f10.size();
            for (int i10 = 0; i10 < size; i10++) {
                c(f10, i10);
            }
            if (z10 && a10 != null) {
                if (a(request.f())) {
                    this.f64259a.log("--> END " + request.h() + " (encoded body omitted)");
                } else if (a10.isDuplex()) {
                    this.f64259a.log("--> END " + request.h() + " (duplex request body omitted)");
                } else if (a10.isOneShot()) {
                    this.f64259a.log("--> END " + request.h() + " (one-shot body omitted)");
                } else {
                    Buffer buffer = new Buffer();
                    a10.writeTo(buffer);
                    MediaType contentType2 = a10.contentType();
                    if (contentType2 == null || (UTF_82 = contentType2.c(StandardCharsets.UTF_8)) == null) {
                        UTF_82 = StandardCharsets.UTF_8;
                        Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
                    }
                    this.f64259a.log("");
                    if (Utf8Kt.a(buffer)) {
                        this.f64259a.log(buffer.readString(UTF_82));
                        this.f64259a.log("--> END " + request.h() + " (" + a10.contentLength() + "-byte body)");
                    } else {
                        this.f64259a.log("--> END " + request.h() + " (binary " + a10.contentLength() + "-byte body omitted)");
                    }
                }
            } else {
                this.f64259a.log("--> END " + request.h());
            }
        }
        long nanoTime = System.nanoTime();
        try {
            Response a11 = chain.a(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody d10 = a11.d();
            Intrinsics.checkNotNull(d10);
            long contentLength = d10.contentLength();
            if (contentLength != -1) {
                str2 = contentLength + "-byte";
            } else {
                str2 = "unknown-length";
            }
            Logger logger = this.f64259a;
            StringBuilder sb6 = new StringBuilder();
            sb6.append("<-- ");
            sb6.append(a11.o());
            if (a11.w().length() == 0) {
                str3 = "-byte body omitted)";
                sb2 = "";
                c10 = ' ';
            } else {
                String w10 = a11.w();
                StringBuilder sb7 = new StringBuilder();
                str3 = "-byte body omitted)";
                c10 = ' ';
                sb7.append(' ');
                sb7.append(w10);
                sb2 = sb7.toString();
            }
            sb6.append(sb2);
            sb6.append(c10);
            sb6.append(a11.W().l());
            sb6.append(" (");
            sb6.append(millis);
            sb6.append("ms");
            if (z11) {
                str4 = "";
            } else {
                str4 = ", " + str2 + " body";
            }
            sb6.append(str4);
            sb6.append(')');
            logger.log(sb6.toString());
            if (z11) {
                Headers u10 = a11.u();
                int size2 = u10.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c(u10, i11);
                }
                if (z10 && HttpHeaders.b(a11)) {
                    if (a(a11.u())) {
                        this.f64259a.log("<-- END HTTP (encoded body omitted)");
                    } else {
                        BufferedSource source = d10.source();
                        source.request(Long.MAX_VALUE);
                        Buffer buffer2 = source.getBuffer();
                        Long l10 = null;
                        if (StringsKt.G("gzip", u10.a("Content-Encoding"), true)) {
                            Long valueOf = Long.valueOf(buffer2.size());
                            GzipSource gzipSource = new GzipSource(buffer2.clone());
                            try {
                                buffer2 = new Buffer();
                                buffer2.writeAll(gzipSource);
                                b.a(gzipSource, null);
                                l10 = valueOf;
                            } finally {
                            }
                        }
                        MediaType contentType3 = d10.contentType();
                        if (contentType3 == null || (UTF_8 = contentType3.c(StandardCharsets.UTF_8)) == null) {
                            UTF_8 = StandardCharsets.UTF_8;
                            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                        }
                        if (!Utf8Kt.a(buffer2)) {
                            this.f64259a.log("");
                            this.f64259a.log("<-- END HTTP (binary " + buffer2.size() + str3);
                            return a11;
                        }
                        if (contentLength != 0) {
                            this.f64259a.log("");
                            this.f64259a.log(buffer2.clone().readString(UTF_8));
                        }
                        if (l10 != null) {
                            this.f64259a.log("<-- END HTTP (" + buffer2.size() + "-byte, " + l10 + "-gzipped-byte body)");
                        } else {
                            this.f64259a.log("<-- END HTTP (" + buffer2.size() + "-byte body)");
                        }
                    }
                } else {
                    this.f64259a.log("<-- END HTTP");
                }
            }
            return a11;
        } catch (Exception e10) {
            this.f64259a.log("<-- HTTP FAILED: " + e10);
            throw e10;
        }
    }

    public HttpLoggingInterceptor(@NotNull Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f64259a = logger;
        this.f64260b = y0.f();
        this.f64261c = Level.NONE;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Logger.f64263b : logger);
    }
}

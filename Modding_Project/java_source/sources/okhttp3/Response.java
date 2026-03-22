package okhttp3;

import java.io.Closeable;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.HttpHeaders;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Response.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Response.kt\nokhttp3/Response\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,455:1\n1#2:456\n*E\n"})
/* loaded from: classes8.dex */
public final class Response implements Closeable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Request f63590a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Protocol f63591b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f63592c;

    /* renamed from: d  reason: collision with root package name */
    private final int f63593d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Handshake f63594e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Headers f63595f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ResponseBody f63596g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final Response f63597h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Response f63598i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final Response f63599j;

    /* renamed from: k  reason: collision with root package name */
    private final long f63600k;

    /* renamed from: l  reason: collision with root package name */
    private final long f63601l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final Exchange f63602m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private CacheControl f63603n;

    public Response(@NotNull Request request, @NotNull Protocol protocol, @NotNull String message, int i10, @Nullable Handshake handshake, @NotNull Headers headers, @Nullable ResponseBody responseBody, @Nullable Response response, @Nullable Response response2, @Nullable Response response3, long j10, long j11, @Nullable Exchange exchange) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.f63590a = request;
        this.f63591b = protocol;
        this.f63592c = message;
        this.f63593d = i10;
        this.f63594e = handshake;
        this.f63595f = headers;
        this.f63596g = responseBody;
        this.f63597h = response;
        this.f63598i = response2;
        this.f63599j = response3;
        this.f63600k = j10;
        this.f63601l = j11;
        this.f63602m = exchange;
    }

    public static /* synthetic */ String t(Response response, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return response.s(str, str2);
    }

    @NotNull
    public final Builder F() {
        return new Builder(this);
    }

    @Nullable
    public final Response P() {
        return this.f63599j;
    }

    @NotNull
    public final Protocol R() {
        return this.f63591b;
    }

    public final long T() {
        return this.f63601l;
    }

    @NotNull
    public final Request W() {
        return this.f63590a;
    }

    public final long Y() {
        return this.f63600k;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ResponseBody responseBody = this.f63596g;
        if (responseBody != null) {
            responseBody.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    @Nullable
    public final ResponseBody d() {
        return this.f63596g;
    }

    public final boolean isSuccessful() {
        int i10 = this.f63593d;
        if (200 > i10 || i10 >= 300) {
            return false;
        }
        return true;
    }

    @NotNull
    public final CacheControl k() {
        CacheControl cacheControl = this.f63603n;
        if (cacheControl == null) {
            CacheControl b10 = CacheControl.f63283n.b(this.f63595f);
            this.f63603n = b10;
            return b10;
        }
        return cacheControl;
    }

    @Nullable
    public final Response l() {
        return this.f63598i;
    }

    @NotNull
    public final List<Challenge> m() {
        String str;
        Headers headers = this.f63595f;
        int i10 = this.f63593d;
        if (i10 != 401) {
            if (i10 != 407) {
                return CollectionsKt.n();
            }
            str = "Proxy-Authenticate";
        } else {
            str = "WWW-Authenticate";
        }
        return HttpHeaders.a(headers, str);
    }

    public final int o() {
        return this.f63593d;
    }

    @Nullable
    public final Exchange p() {
        return this.f63602m;
    }

    @Nullable
    public final Handshake q() {
        return this.f63594e;
    }

    @Nullable
    public final String r(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return t(this, name, null, 2, null);
    }

    @Nullable
    public final String s(@NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        String a10 = this.f63595f.a(name);
        if (a10 != null) {
            return a10;
        }
        return str;
    }

    @NotNull
    public String toString() {
        return "Response{protocol=" + this.f63591b + ", code=" + this.f63593d + ", message=" + this.f63592c + ", url=" + this.f63590a.l() + '}';
    }

    @NotNull
    public final Headers u() {
        return this.f63595f;
    }

    public final boolean v() {
        int i10 = this.f63593d;
        if (i10 != 307 && i10 != 308) {
            switch (i10) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    @NotNull
    public final String w() {
        return this.f63592c;
    }

    @Nullable
    public final Response x() {
        return this.f63597h;
    }

    /* compiled from: Response.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Response.kt\nokhttp3/Response$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,455:1\n1#2:456\n*E\n"})
    /* loaded from: classes8.dex */
    public static class Builder {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Request f63604a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Protocol f63605b;

        /* renamed from: c  reason: collision with root package name */
        private int f63606c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f63607d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private Handshake f63608e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private Headers.Builder f63609f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private ResponseBody f63610g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private Response f63611h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Response f63612i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Response f63613j;

        /* renamed from: k  reason: collision with root package name */
        private long f63614k;

        /* renamed from: l  reason: collision with root package name */
        private long f63615l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private Exchange f63616m;

        public Builder() {
            this.f63606c = -1;
            this.f63609f = new Headers.Builder();
        }

        private final void e(Response response) {
            if (response != null && response.d() != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        private final void f(String str, Response response) {
            if (response != null) {
                if (response.d() == null) {
                    if (response.x() == null) {
                        if (response.l() == null) {
                            if (response.P() != null) {
                                throw new IllegalArgumentException((str + ".priorResponse != null").toString());
                            }
                            return;
                        }
                        throw new IllegalArgumentException((str + ".cacheResponse != null").toString());
                    }
                    throw new IllegalArgumentException((str + ".networkResponse != null").toString());
                }
                throw new IllegalArgumentException((str + ".body != null").toString());
            }
        }

        @NotNull
        public Builder a(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.f63609f.a(name, value);
            return this;
        }

        @NotNull
        public Builder b(@Nullable ResponseBody responseBody) {
            this.f63610g = responseBody;
            return this;
        }

        @NotNull
        public Response c() {
            int i10 = this.f63606c;
            if (i10 >= 0) {
                Request request = this.f63604a;
                if (request != null) {
                    Protocol protocol = this.f63605b;
                    if (protocol != null) {
                        String str = this.f63607d;
                        if (str != null) {
                            return new Response(request, protocol, str, i10, this.f63608e, this.f63609f.f(), this.f63610g, this.f63611h, this.f63612i, this.f63613j, this.f63614k, this.f63615l, this.f63616m);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("protocol == null");
                }
                throw new IllegalStateException("request == null");
            }
            throw new IllegalStateException(("code < 0: " + this.f63606c).toString());
        }

        @NotNull
        public Builder d(@Nullable Response response) {
            f("cacheResponse", response);
            this.f63612i = response;
            return this;
        }

        @NotNull
        public Builder g(int i10) {
            this.f63606c = i10;
            return this;
        }

        public final int h() {
            return this.f63606c;
        }

        @NotNull
        public Builder i(@Nullable Handshake handshake) {
            this.f63608e = handshake;
            return this;
        }

        @NotNull
        public Builder j(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.f63609f.j(name, value);
            return this;
        }

        @NotNull
        public Builder k(@NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.f63609f = headers.e();
            return this;
        }

        public final void l(@NotNull Exchange deferredTrailers) {
            Intrinsics.checkNotNullParameter(deferredTrailers, "deferredTrailers");
            this.f63616m = deferredTrailers;
        }

        @NotNull
        public Builder m(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.f63607d = message;
            return this;
        }

        @NotNull
        public Builder n(@Nullable Response response) {
            f("networkResponse", response);
            this.f63611h = response;
            return this;
        }

        @NotNull
        public Builder o(@Nullable Response response) {
            e(response);
            this.f63613j = response;
            return this;
        }

        @NotNull
        public Builder p(@NotNull Protocol protocol) {
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            this.f63605b = protocol;
            return this;
        }

        @NotNull
        public Builder q(long j10) {
            this.f63615l = j10;
            return this;
        }

        @NotNull
        public Builder r(@NotNull Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f63604a = request;
            return this;
        }

        @NotNull
        public Builder s(long j10) {
            this.f63614k = j10;
            return this;
        }

        public Builder(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.f63606c = -1;
            this.f63604a = response.W();
            this.f63605b = response.R();
            this.f63606c = response.o();
            this.f63607d = response.w();
            this.f63608e = response.q();
            this.f63609f = response.u().e();
            this.f63610g = response.d();
            this.f63611h = response.x();
            this.f63612i = response.l();
            this.f63613j = response.P();
            this.f63614k = response.Y();
            this.f63615l = response.T();
            this.f63616m = response.p();
        }
    }
}

package l0;

import androidx.webkit.ProxyConfig;
import coil.network.CacheResponse;
import coil.util.Time;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
/* compiled from: CacheStrategy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final C0861a f62055c = new C0861a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Request f62056a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final CacheResponse f62057b;

    /* compiled from: CacheStrategy.kt */
    @Metadata
    /* renamed from: l0.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0861a {
        public /* synthetic */ C0861a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean d(String str) {
            if (StringsKt.G("Content-Length", str, true) || StringsKt.G("Content-Encoding", str, true) || StringsKt.G(CommonGatewayClient.HEADER_CONTENT_TYPE, str, true)) {
                return true;
            }
            return false;
        }

        private final boolean e(String str) {
            if (!StringsKt.G("Connection", str, true) && !StringsKt.G("Keep-Alive", str, true) && !StringsKt.G("Proxy-Authenticate", str, true) && !StringsKt.G("Proxy-Authorization", str, true) && !StringsKt.G("TE", str, true) && !StringsKt.G("Trailers", str, true) && !StringsKt.G("Transfer-Encoding", str, true) && !StringsKt.G("Upgrade", str, true)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Headers a(@NotNull Headers headers, @NotNull Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String d10 = headers.d(i10);
                String i11 = headers.i(i10);
                if ((!StringsKt.G("Warning", d10, true) || !StringsKt.V(i11, "1", false, 2, null)) && (d(d10) || !e(d10) || headers2.a(d10) == null)) {
                    builder.a(d10, i11);
                }
            }
            int size2 = headers2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                String d11 = headers2.d(i12);
                if (!d(d11) && e(d11)) {
                    builder.a(d11, headers2.i(i12));
                }
            }
            return builder.f();
        }

        public final boolean b(@NotNull Request request, @NotNull CacheResponse cacheResponse) {
            if (!request.b().h() && !cacheResponse.a().h() && !Intrinsics.areEqual(cacheResponse.d().a("Vary"), ProxyConfig.MATCH_ALL_SCHEMES)) {
                return true;
            }
            return false;
        }

        public final boolean c(@NotNull Request request, @NotNull Response response) {
            if (!request.b().h() && !response.k().h() && !Intrinsics.areEqual(response.u().a("Vary"), ProxyConfig.MATCH_ALL_SCHEMES)) {
                return true;
            }
            return false;
        }

        private C0861a() {
        }
    }

    /* compiled from: CacheStrategy.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Request f62058a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final CacheResponse f62059b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Date f62060c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f62061d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private Date f62062e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f62063f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Date f62064g;

        /* renamed from: h  reason: collision with root package name */
        private long f62065h;

        /* renamed from: i  reason: collision with root package name */
        private long f62066i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private String f62067j;

        /* renamed from: k  reason: collision with root package name */
        private int f62068k;

        public b(@NotNull Request request, @Nullable CacheResponse cacheResponse) {
            this.f62058a = request;
            this.f62059b = cacheResponse;
            this.f62068k = -1;
            if (cacheResponse != null) {
                this.f62065h = cacheResponse.e();
                this.f62066i = cacheResponse.c();
                Headers d10 = cacheResponse.d();
                int size = d10.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String d11 = d10.d(i10);
                    if (StringsKt.G(d11, "Date", true)) {
                        this.f62060c = d10.c("Date");
                        this.f62061d = d10.i(i10);
                    } else if (StringsKt.G(d11, "Expires", true)) {
                        this.f62064g = d10.c("Expires");
                    } else if (StringsKt.G(d11, "Last-Modified", true)) {
                        this.f62062e = d10.c("Last-Modified");
                        this.f62063f = d10.i(i10);
                    } else if (StringsKt.G(d11, Command.HTTP_HEADER_ETAG, true)) {
                        this.f62067j = d10.i(i10);
                    } else if (StringsKt.G(d11, "Age", true)) {
                        this.f62068k = i.y(d10.i(i10), -1);
                    }
                }
            }
        }

        private final long a() {
            Date date = this.f62060c;
            long j10 = 0;
            if (date != null) {
                j10 = Math.max(0L, this.f62066i - date.getTime());
            }
            int i10 = this.f62068k;
            if (i10 != -1) {
                j10 = Math.max(j10, TimeUnit.SECONDS.toMillis(i10));
            }
            return j10 + (this.f62066i - this.f62065h) + (Time.f4113a.a() - this.f62066i);
        }

        private final long c() {
            long j10;
            long j11;
            CacheResponse cacheResponse = this.f62059b;
            Intrinsics.checkNotNull(cacheResponse);
            CacheControl a10 = cacheResponse.a();
            if (a10.c() != -1) {
                return TimeUnit.SECONDS.toMillis(a10.c());
            }
            Date date = this.f62064g;
            if (date != null) {
                Date date2 = this.f62060c;
                if (date2 != null) {
                    j11 = date2.getTime();
                } else {
                    j11 = this.f62066i;
                }
                long time = date.getTime() - j11;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            } else if (this.f62062e == null || this.f62058a.l().p() != null) {
                return 0L;
            } else {
                Date date3 = this.f62060c;
                if (date3 != null) {
                    j10 = date3.getTime();
                } else {
                    j10 = this.f62065h;
                }
                Date date4 = this.f62062e;
                Intrinsics.checkNotNull(date4);
                long time2 = j10 - date4.getTime();
                if (time2 <= 0) {
                    return 0L;
                }
                return time2 / 10;
            }
        }

        private final boolean d(Request request) {
            if (request.d("If-Modified-Since") == null && request.d("If-None-Match") == null) {
                return false;
            }
            return true;
        }

        @NotNull
        public final a b() {
            long j10;
            String str;
            if (this.f62059b == null) {
                return new a(this.f62058a, null, null);
            }
            if (this.f62058a.g() && !this.f62059b.f()) {
                return new a(this.f62058a, null, null);
            }
            CacheControl a10 = this.f62059b.a();
            if (!a.f62055c.b(this.f62058a, this.f62059b)) {
                return new a(this.f62058a, null, null);
            }
            CacheControl b10 = this.f62058a.b();
            if (!b10.g() && !d(this.f62058a)) {
                long a11 = a();
                long c10 = c();
                if (b10.c() != -1) {
                    c10 = Math.min(c10, TimeUnit.SECONDS.toMillis(b10.c()));
                }
                long j11 = 0;
                if (b10.e() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(b10.e());
                } else {
                    j10 = 0;
                }
                if (!a10.f() && b10.d() != -1) {
                    j11 = TimeUnit.SECONDS.toMillis(b10.d());
                }
                if (!a10.g() && a11 + j10 < c10 + j11) {
                    return new a(null, this.f62059b, null);
                }
                String str2 = this.f62067j;
                if (str2 != null) {
                    Intrinsics.checkNotNull(str2);
                    str = "If-None-Match";
                } else {
                    str = "If-Modified-Since";
                    if (this.f62062e != null) {
                        str2 = this.f62063f;
                        Intrinsics.checkNotNull(str2);
                    } else if (this.f62060c != null) {
                        str2 = this.f62061d;
                        Intrinsics.checkNotNull(str2);
                    } else {
                        return new a(this.f62058a, null, null);
                    }
                }
                return new a(this.f62058a.i().a(str, str2).b(), this.f62059b, null);
            }
            return new a(this.f62058a, null, null);
        }
    }

    public /* synthetic */ a(Request request, CacheResponse cacheResponse, DefaultConstructorMarker defaultConstructorMarker) {
        this(request, cacheResponse);
    }

    @Nullable
    public final CacheResponse a() {
        return this.f62057b;
    }

    @Nullable
    public final Request b() {
        return this.f62056a;
    }

    private a(Request request, CacheResponse cacheResponse) {
        this.f62056a = request;
        this.f62057b = cacheResponse;
    }
}

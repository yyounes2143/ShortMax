package okhttp3.internal.cache;

import com.mbridge.msdk.foundation.download.Command;
import com.vungle.ads.internal.signals.SignalManager;
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
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CacheStrategy.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CacheStrategy {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f63643c = new Companion(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Request f63644a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Response f63645b;

    /* compiled from: CacheStrategy.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(@NotNull Response response, @NotNull Request request) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(request, "request");
            int o10 = response.o();
            if (o10 != 200 && o10 != 410 && o10 != 414 && o10 != 501 && o10 != 203 && o10 != 204) {
                if (o10 != 307) {
                    if (o10 != 308 && o10 != 404 && o10 != 405) {
                        switch (o10) {
                            case 300:
                            case 301:
                                break;
                            case 302:
                                break;
                            default:
                                return false;
                        }
                    }
                }
                if (Response.t(response, "Expires", null, 2, null) == null && response.k().c() == -1 && !response.k().b() && !response.k().a()) {
                    return false;
                }
            }
            if (response.k().h() || request.b().h()) {
                return false;
            }
            return true;
        }

        private Companion() {
        }
    }

    /* compiled from: CacheStrategy.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Factory {

        /* renamed from: a  reason: collision with root package name */
        private final long f63646a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Request f63647b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Response f63648c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Date f63649d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f63650e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Date f63651f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f63652g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private Date f63653h;

        /* renamed from: i  reason: collision with root package name */
        private long f63654i;

        /* renamed from: j  reason: collision with root package name */
        private long f63655j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private String f63656k;

        /* renamed from: l  reason: collision with root package name */
        private int f63657l;

        public Factory(long j10, @NotNull Request request, @Nullable Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f63646a = j10;
            this.f63647b = request;
            this.f63648c = response;
            this.f63657l = -1;
            if (response != null) {
                this.f63654i = response.Y();
                this.f63655j = response.T();
                Headers u10 = response.u();
                int size = u10.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String d10 = u10.d(i10);
                    String i11 = u10.i(i10);
                    if (StringsKt.G(d10, "Date", true)) {
                        this.f63649d = DatesKt.a(i11);
                        this.f63650e = i11;
                    } else if (StringsKt.G(d10, "Expires", true)) {
                        this.f63653h = DatesKt.a(i11);
                    } else if (StringsKt.G(d10, "Last-Modified", true)) {
                        this.f63651f = DatesKt.a(i11);
                        this.f63652g = i11;
                    } else if (StringsKt.G(d10, Command.HTTP_HEADER_ETAG, true)) {
                        this.f63656k = i11;
                    } else if (StringsKt.G(d10, "Age", true)) {
                        this.f63657l = Util.Y(i11, -1);
                    }
                }
            }
        }

        private final long a() {
            Date date = this.f63649d;
            long j10 = 0;
            if (date != null) {
                j10 = Math.max(0L, this.f63655j - date.getTime());
            }
            int i10 = this.f63657l;
            if (i10 != -1) {
                j10 = Math.max(j10, TimeUnit.SECONDS.toMillis(i10));
            }
            long j11 = this.f63655j;
            return j10 + (j11 - this.f63654i) + (this.f63646a - j11);
        }

        private final CacheStrategy c() {
            long j10;
            String str;
            if (this.f63648c == null) {
                return new CacheStrategy(this.f63647b, null);
            }
            if (this.f63647b.g() && this.f63648c.q() == null) {
                return new CacheStrategy(this.f63647b, null);
            }
            if (!CacheStrategy.f63643c.a(this.f63648c, this.f63647b)) {
                return new CacheStrategy(this.f63647b, null);
            }
            CacheControl b10 = this.f63647b.b();
            if (!b10.g() && !e(this.f63647b)) {
                CacheControl k10 = this.f63648c.k();
                long a10 = a();
                long d10 = d();
                if (b10.c() != -1) {
                    d10 = Math.min(d10, TimeUnit.SECONDS.toMillis(b10.c()));
                }
                long j11 = 0;
                if (b10.e() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(b10.e());
                } else {
                    j10 = 0;
                }
                if (!k10.f() && b10.d() != -1) {
                    j11 = TimeUnit.SECONDS.toMillis(b10.d());
                }
                if (!k10.g()) {
                    long j12 = j10 + a10;
                    if (j12 < j11 + d10) {
                        Response.Builder F = this.f63648c.F();
                        if (j12 >= d10) {
                            F.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (a10 > SignalManager.TWENTY_FOUR_HOURS_MILLIS && f()) {
                            F.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new CacheStrategy(null, F.c());
                    }
                }
                String str2 = this.f63656k;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.f63651f != null) {
                        str2 = this.f63652g;
                    } else if (this.f63649d != null) {
                        str2 = this.f63650e;
                    } else {
                        return new CacheStrategy(this.f63647b, null);
                    }
                    str = "If-Modified-Since";
                }
                Headers.Builder e10 = this.f63647b.f().e();
                Intrinsics.checkNotNull(str2);
                e10.d(str, str2);
                return new CacheStrategy(this.f63647b.i().f(e10.f()).b(), this.f63648c);
            }
            return new CacheStrategy(this.f63647b, null);
        }

        private final long d() {
            long j10;
            long j11;
            Response response = this.f63648c;
            Intrinsics.checkNotNull(response);
            CacheControl k10 = response.k();
            if (k10.c() != -1) {
                return TimeUnit.SECONDS.toMillis(k10.c());
            }
            Date date = this.f63653h;
            if (date != null) {
                Date date2 = this.f63649d;
                if (date2 != null) {
                    j11 = date2.getTime();
                } else {
                    j11 = this.f63655j;
                }
                long time = date.getTime() - j11;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            } else if (this.f63651f == null || this.f63648c.W().l().p() != null) {
                return 0L;
            } else {
                Date date3 = this.f63649d;
                if (date3 != null) {
                    j10 = date3.getTime();
                } else {
                    j10 = this.f63654i;
                }
                Date date4 = this.f63651f;
                Intrinsics.checkNotNull(date4);
                long time2 = j10 - date4.getTime();
                if (time2 <= 0) {
                    return 0L;
                }
                return time2 / 10;
            }
        }

        private final boolean e(Request request) {
            if (request.d("If-Modified-Since") == null && request.d("If-None-Match") == null) {
                return false;
            }
            return true;
        }

        private final boolean f() {
            Response response = this.f63648c;
            Intrinsics.checkNotNull(response);
            if (response.k().c() == -1 && this.f63653h == null) {
                return true;
            }
            return false;
        }

        @NotNull
        public final CacheStrategy b() {
            CacheStrategy c10 = c();
            if (c10.b() != null && this.f63647b.b().i()) {
                return new CacheStrategy(null, null);
            }
            return c10;
        }
    }

    public CacheStrategy(@Nullable Request request, @Nullable Response response) {
        this.f63644a = request;
        this.f63645b = response;
    }

    @Nullable
    public final Response a() {
        return this.f63645b;
    }

    @Nullable
    public final Request b() {
        return this.f63644a;
    }
}

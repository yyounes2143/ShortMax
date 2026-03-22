package com.applovin.shadow.okhttp3.internal.cache;

import com.applovin.shadow.okhttp3.CacheControl;
import com.applovin.shadow.okhttp3.Headers;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.http.DatesKt;
import com.mbridge.msdk.foundation.download.Command;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CacheStrategy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CacheStrategy {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final Response cacheResponse;
    @Nullable
    private final Request networkRequest;

    /* compiled from: CacheStrategy.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isCacheable(@NotNull Response response, @NotNull Request request) {
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(request, "request");
            int code = response.code();
            if (code != 200 && code != 410 && code != 414 && code != 501 && code != 203 && code != 204) {
                if (code != 307) {
                    if (code != 308 && code != 404 && code != 405) {
                        switch (code) {
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
                if (Response.header$default(response, "Expires", null, 2, null) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().isPublic() && !response.cacheControl().isPrivate()) {
                    return false;
                }
            }
            if (response.cacheControl().noStore() || request.cacheControl().noStore()) {
                return false;
            }
            return true;
        }

        private Companion() {
        }
    }

    /* compiled from: CacheStrategy.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Factory {
        private int ageSeconds;
        @Nullable
        private final Response cacheResponse;
        @Nullable
        private String etag;
        @Nullable
        private Date expires;
        @Nullable
        private Date lastModified;
        @Nullable
        private String lastModifiedString;
        private final long nowMillis;
        private long receivedResponseMillis;
        @NotNull
        private final Request request;
        private long sentRequestMillis;
        @Nullable
        private Date servedDate;
        @Nullable
        private String servedDateString;

        public Factory(long j10, @NotNull Request request, @Nullable Response response) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.nowMillis = j10;
            this.request = request;
            this.cacheResponse = response;
            this.ageSeconds = -1;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = response.receivedResponseAtMillis();
                Headers headers = response.headers();
                int size = headers.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String name = headers.name(i10);
                    String value = headers.value(i10);
                    if (StringsKt.G(name, "Date", true)) {
                        this.servedDate = DatesKt.toHttpDateOrNull(value);
                        this.servedDateString = value;
                    } else if (StringsKt.G(name, "Expires", true)) {
                        this.expires = DatesKt.toHttpDateOrNull(value);
                    } else if (StringsKt.G(name, "Last-Modified", true)) {
                        this.lastModified = DatesKt.toHttpDateOrNull(value);
                        this.lastModifiedString = value;
                    } else if (StringsKt.G(name, Command.HTTP_HEADER_ETAG, true)) {
                        this.etag = value;
                    } else if (StringsKt.G(name, "Age", true)) {
                        this.ageSeconds = Util.toNonNegativeInt(value, -1);
                    }
                }
            }
        }

        private final long cacheResponseAge() {
            Date date = this.servedDate;
            long j10 = 0;
            if (date != null) {
                j10 = Math.max(0L, this.receivedResponseMillis - date.getTime());
            }
            int i10 = this.ageSeconds;
            if (i10 != -1) {
                j10 = Math.max(j10, TimeUnit.SECONDS.toMillis(i10));
            }
            long j11 = this.receivedResponseMillis;
            return j10 + (j11 - this.sentRequestMillis) + (this.nowMillis - j11);
        }

        private final CacheStrategy computeCandidate() {
            long j10;
            String str;
            if (this.cacheResponse == null) {
                return new CacheStrategy(this.request, null);
            }
            if (this.request.isHttps() && this.cacheResponse.handshake() == null) {
                return new CacheStrategy(this.request, null);
            }
            if (!CacheStrategy.Companion.isCacheable(this.cacheResponse, this.request)) {
                return new CacheStrategy(this.request, null);
            }
            CacheControl cacheControl = this.request.cacheControl();
            if (!cacheControl.noCache() && !hasConditions(this.request)) {
                CacheControl cacheControl2 = this.cacheResponse.cacheControl();
                long cacheResponseAge = cacheResponseAge();
                long computeFreshnessLifetime = computeFreshnessLifetime();
                if (cacheControl.maxAgeSeconds() != -1) {
                    computeFreshnessLifetime = Math.min(computeFreshnessLifetime, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
                }
                long j11 = 0;
                if (cacheControl.minFreshSeconds() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds());
                } else {
                    j10 = 0;
                }
                if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                    j11 = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
                }
                if (!cacheControl2.noCache()) {
                    long j12 = j10 + cacheResponseAge;
                    if (j12 < j11 + computeFreshnessLifetime) {
                        Response.Builder newBuilder = this.cacheResponse.newBuilder();
                        if (j12 >= computeFreshnessLifetime) {
                            newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (cacheResponseAge > SignalManager.TWENTY_FOUR_HOURS_MILLIS && isFreshnessLifetimeHeuristic()) {
                            newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new CacheStrategy(null, newBuilder.build());
                    }
                }
                String str2 = this.etag;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.lastModified != null) {
                        str2 = this.lastModifiedString;
                    } else if (this.servedDate != null) {
                        str2 = this.servedDateString;
                    } else {
                        return new CacheStrategy(this.request, null);
                    }
                    str = "If-Modified-Since";
                }
                Headers.Builder newBuilder2 = this.request.headers().newBuilder();
                Intrinsics.checkNotNull(str2);
                newBuilder2.addLenient$okhttp(str, str2);
                return new CacheStrategy(this.request.newBuilder().headers(newBuilder2.build()).build(), this.cacheResponse);
            }
            return new CacheStrategy(this.request, null);
        }

        private final long computeFreshnessLifetime() {
            long j10;
            long j11;
            Response response = this.cacheResponse;
            Intrinsics.checkNotNull(response);
            CacheControl cacheControl = response.cacheControl();
            if (cacheControl.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
            }
            Date date = this.expires;
            if (date != null) {
                Date date2 = this.servedDate;
                if (date2 != null) {
                    j11 = date2.getTime();
                } else {
                    j11 = this.receivedResponseMillis;
                }
                long time = date.getTime() - j11;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            } else if (this.lastModified == null || this.cacheResponse.request().url().query() != null) {
                return 0L;
            } else {
                Date date3 = this.servedDate;
                if (date3 != null) {
                    j10 = date3.getTime();
                } else {
                    j10 = this.sentRequestMillis;
                }
                Date date4 = this.lastModified;
                Intrinsics.checkNotNull(date4);
                long time2 = j10 - date4.getTime();
                if (time2 <= 0) {
                    return 0L;
                }
                return time2 / 10;
            }
        }

        private final boolean hasConditions(Request request) {
            if (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) {
                return false;
            }
            return true;
        }

        private final boolean isFreshnessLifetimeHeuristic() {
            Response response = this.cacheResponse;
            Intrinsics.checkNotNull(response);
            if (response.cacheControl().maxAgeSeconds() == -1 && this.expires == null) {
                return true;
            }
            return false;
        }

        @NotNull
        public final CacheStrategy compute() {
            CacheStrategy computeCandidate = computeCandidate();
            if (computeCandidate.getNetworkRequest() != null && this.request.cacheControl().onlyIfCached()) {
                return new CacheStrategy(null, null);
            }
            return computeCandidate;
        }

        @NotNull
        public final Request getRequest$okhttp() {
            return this.request;
        }
    }

    public CacheStrategy(@Nullable Request request, @Nullable Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }

    @Nullable
    public final Response getCacheResponse() {
        return this.cacheResponse;
    }

    @Nullable
    public final Request getNetworkRequest() {
        return this.networkRequest;
    }
}

package com.vungle.ads.internal.network;

import com.vungle.ads.internal.util.LogEntry;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TpatRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TpatRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int PRIORITY_MAX_RETRY_COUNT = 3;
    private static final int REGULAR_MAX_RETRY_COUNT = 5;
    @Nullable
    private final String body;
    @Nullable
    private final Map<String, String> headers;
    @Nullable
    private final LogEntry logEntry;
    @NotNull
    private final HttpMethod method;
    @Nullable
    private final Boolean priorityRetry;
    private final int priorityRetryCount;
    private final boolean regularRetry;
    private final int regularRetryCount;
    @Nullable
    private final String tpatKey;
    @NotNull
    private final String url;

    /* compiled from: TpatRequest.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Builder {
        @Nullable
        private String body;
        @Nullable
        private Map<String, String> headers;
        @Nullable
        private LogEntry logEntry;
        @NotNull
        private HttpMethod method;
        @Nullable
        private Boolean priorityRetry;
        private int priorityRetryCount;
        private boolean regularRetry;
        private int regularRetryCount;
        @Nullable
        private String tpatKey;
        @NotNull
        private final String url;

        public Builder(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            this.method = HttpMethod.GET;
            this.priorityRetryCount = 3;
            this.regularRetry = true;
            this.regularRetryCount = 5;
        }

        @NotNull
        public final Builder body(@Nullable String str) {
            this.body = str;
            return this;
        }

        @NotNull
        public final TpatRequest build() {
            return new TpatRequest(this.url, this.method, this.headers, this.body, this.priorityRetry, this.priorityRetryCount, this.regularRetry, this.regularRetryCount, this.tpatKey, this.logEntry, null);
        }

        @NotNull
        public final Builder get() {
            this.method = HttpMethod.GET;
            return this;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }

        @NotNull
        public final Builder headers(@Nullable Map<String, String> map) {
            this.headers = map;
            return this;
        }

        @NotNull
        public final Builder method(@NotNull HttpMethod method) {
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
            return this;
        }

        @NotNull
        public final Builder post() {
            this.method = HttpMethod.POST;
            return this;
        }

        @NotNull
        public final Builder priorityRetry(boolean z10) {
            this.priorityRetry = Boolean.valueOf(z10);
            return this;
        }

        @NotNull
        public final Builder priorityRetryCount(int i10) {
            this.priorityRetryCount = i10;
            return this;
        }

        @NotNull
        public final Builder regularRetry(boolean z10) {
            this.regularRetry = z10;
            return this;
        }

        @NotNull
        public final Builder regularRetryCount(int i10) {
            this.regularRetryCount = i10;
            return this;
        }

        @NotNull
        public final Builder tpatKey(@Nullable String str) {
            this.tpatKey = str;
            return this;
        }

        @NotNull
        public final Builder withLogEntry(@Nullable LogEntry logEntry) {
            this.logEntry = logEntry;
            return this;
        }
    }

    /* compiled from: TpatRequest.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ TpatRequest(String str, HttpMethod httpMethod, Map map, String str2, Boolean bool, int i10, boolean z10, int i11, String str3, LogEntry logEntry, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, httpMethod, map, str2, bool, i10, z10, i11, str3, logEntry);
    }

    @Nullable
    public final String getBody() {
        return this.body;
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    @Nullable
    public final LogEntry getLogEntry() {
        return this.logEntry;
    }

    @NotNull
    public final HttpMethod getMethod() {
        return this.method;
    }

    @Nullable
    public final Boolean getPriorityRetry() {
        return this.priorityRetry;
    }

    public final int getPriorityRetryCount() {
        return this.priorityRetryCount;
    }

    public final boolean getRegularRetry() {
        return this.regularRetry;
    }

    public final int getRegularRetryCount() {
        return this.regularRetryCount;
    }

    @Nullable
    public final String getTpatKey() {
        return this.tpatKey;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    private TpatRequest(String str, HttpMethod httpMethod, Map<String, String> map, String str2, Boolean bool, int i10, boolean z10, int i11, String str3, LogEntry logEntry) {
        this.url = str;
        this.method = httpMethod;
        this.headers = map;
        this.body = str2;
        this.priorityRetry = bool;
        this.priorityRetryCount = i10;
        this.regularRetry = z10;
        this.regularRetryCount = i11;
        this.tpatKey = str3;
        this.logEntry = logEntry;
    }
}

package com.vungle.ads.internal.network;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Response.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Response<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final T body;
    @Nullable
    private final ResponseBody errorBody;
    @NotNull
    private final okhttp3.Response rawResponse;

    /* compiled from: Response.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> Response<T> error(@Nullable ResponseBody responseBody, @NotNull okhttp3.Response rawResponse) {
            Intrinsics.checkNotNullParameter(rawResponse, "rawResponse");
            if (!rawResponse.isSuccessful()) {
                return new Response<>(rawResponse, null, responseBody, null);
            }
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }

        @NotNull
        public final <T> Response<T> success(@Nullable T t10, @NotNull okhttp3.Response rawResponse) {
            Intrinsics.checkNotNullParameter(rawResponse, "rawResponse");
            if (rawResponse.isSuccessful()) {
                return new Response<>(rawResponse, t10, null, null);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        }

        private Companion() {
        }
    }

    public /* synthetic */ Response(okhttp3.Response response, Object obj, ResponseBody responseBody, DefaultConstructorMarker defaultConstructorMarker) {
        this(response, obj, responseBody);
    }

    @Nullable
    public final T body() {
        return this.body;
    }

    public final int code() {
        return this.rawResponse.o();
    }

    @Nullable
    public final ResponseBody errorBody() {
        return this.errorBody;
    }

    @NotNull
    public final Headers headers() {
        return this.rawResponse.u();
    }

    public final boolean isSuccessful() {
        return this.rawResponse.isSuccessful();
    }

    @NotNull
    public final String message() {
        return this.rawResponse.w();
    }

    @NotNull
    public final okhttp3.Response raw() {
        return this.rawResponse;
    }

    @NotNull
    public String toString() {
        return this.rawResponse.toString();
    }

    private Response(okhttp3.Response response, T t10, ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = t10;
        this.errorBody = responseBody;
    }
}

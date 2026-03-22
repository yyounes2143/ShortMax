package com.facebook.imagepipeline.backends.okhttp3;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OkHttpNetworkFetcherException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class OkHttpNetworkFetcherException extends Exception {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f15642c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Integer f15643a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Headers f15644b;

    /* compiled from: OkHttpNetworkFetcherException.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OkHttpNetworkFetcherException a(@NotNull Response response) {
            Integer num;
            Intrinsics.checkNotNullParameter(response, "response");
            Response x10 = response.x();
            Headers headers = null;
            if (x10 != null) {
                num = Integer.valueOf(x10.o());
            } else {
                num = null;
            }
            Response x11 = response.x();
            if (x11 != null) {
                headers = x11.u();
            }
            return new OkHttpNetworkFetcherException(num, headers);
        }

        private a() {
        }
    }

    public OkHttpNetworkFetcherException() {
        this(null, null, 3, null);
    }

    public /* synthetic */ OkHttpNetworkFetcherException(Integer num, Headers headers, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : headers);
    }

    public OkHttpNetworkFetcherException(@Nullable Integer num, @Nullable Headers headers) {
        this.f15643a = num;
        this.f15644b = headers;
    }
}

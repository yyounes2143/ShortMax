package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okhttp3.Interceptor;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Interceptor.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Interceptor {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Interceptor.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Chain {
        @NotNull
        Call call();

        int connectTimeoutMillis();

        @Nullable
        Connection connection();

        @NotNull
        Response proceed(@NotNull Request request) throws IOException;

        int readTimeoutMillis();

        @NotNull
        Request request();

        @NotNull
        Chain withConnectTimeout(int i10, @NotNull TimeUnit timeUnit);

        @NotNull
        Chain withReadTimeout(int i10, @NotNull TimeUnit timeUnit);

        @NotNull
        Chain withWriteTimeout(int i10, @NotNull TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    /* compiled from: Interceptor.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        public final Interceptor invoke(@NotNull final Function1<? super Chain, Response> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return new Interceptor() { // from class: com.applovin.shadow.okhttp3.Interceptor$Companion$invoke$1
                @Override // com.applovin.shadow.okhttp3.Interceptor
                @NotNull
                public final Response intercept(@NotNull Interceptor.Chain it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return block.invoke(it);
                }
            };
        }
    }

    @NotNull
    Response intercept(@NotNull Chain chain) throws IOException;
}

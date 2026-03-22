package com.applovin.shadow.okhttp3.internal.http;

import com.applovin.shadow.okhttp3.Call;
import com.applovin.shadow.okhttp3.Connection;
import com.applovin.shadow.okhttp3.Interceptor;
import com.applovin.shadow.okhttp3.Request;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.connection.Exchange;
import com.applovin.shadow.okhttp3.internal.connection.RealCall;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealInterceptorChain.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealInterceptorChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealInterceptorChain.kt\nokhttp3/internal/http/RealInterceptorChain\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"})
/* loaded from: classes2.dex */
public final class RealInterceptorChain implements Interceptor.Chain {
    @NotNull
    private final RealCall call;
    private int calls;
    private final int connectTimeoutMillis;
    @Nullable
    private final Exchange exchange;
    private final int index;
    @NotNull
    private final List<Interceptor> interceptors;
    private final int readTimeoutMillis;
    @NotNull
    private final Request request;
    private final int writeTimeoutMillis;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(@NotNull RealCall call, @NotNull List<? extends Interceptor> interceptors, int i10, @Nullable Exchange exchange, @NotNull Request request, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(request, "request");
        this.call = call;
        this.interceptors = interceptors;
        this.index = i10;
        this.exchange = exchange;
        this.request = request;
        this.connectTimeoutMillis = i11;
        this.readTimeoutMillis = i12;
        this.writeTimeoutMillis = i13;
    }

    public static /* synthetic */ RealInterceptorChain copy$okhttp$default(RealInterceptorChain realInterceptorChain, int i10, Exchange exchange, Request request, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = realInterceptorChain.index;
        }
        if ((i14 & 2) != 0) {
            exchange = realInterceptorChain.exchange;
        }
        Exchange exchange2 = exchange;
        if ((i14 & 4) != 0) {
            request = realInterceptorChain.request;
        }
        Request request2 = request;
        if ((i14 & 8) != 0) {
            i11 = realInterceptorChain.connectTimeoutMillis;
        }
        int i15 = i11;
        if ((i14 & 16) != 0) {
            i12 = realInterceptorChain.readTimeoutMillis;
        }
        int i16 = i12;
        if ((i14 & 32) != 0) {
            i13 = realInterceptorChain.writeTimeoutMillis;
        }
        return realInterceptorChain.copy$okhttp(i10, exchange2, request2, i15, i16, i13);
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @NotNull
    public Call call() {
        return this.call;
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    public int connectTimeoutMillis() {
        return this.connectTimeoutMillis;
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @Nullable
    public Connection connection() {
        Exchange exchange = this.exchange;
        if (exchange != null) {
            return exchange.getConnection$okhttp();
        }
        return null;
    }

    @NotNull
    public final RealInterceptorChain copy$okhttp(int i10, @Nullable Exchange exchange, @NotNull Request request, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(request, "request");
        return new RealInterceptorChain(this.call, this.interceptors, i10, exchange, request, i11, i12, i13);
    }

    @NotNull
    public final RealCall getCall$okhttp() {
        return this.call;
    }

    public final int getConnectTimeoutMillis$okhttp() {
        return this.connectTimeoutMillis;
    }

    @Nullable
    public final Exchange getExchange$okhttp() {
        return this.exchange;
    }

    public final int getReadTimeoutMillis$okhttp() {
        return this.readTimeoutMillis;
    }

    @NotNull
    public final Request getRequest$okhttp() {
        return this.request;
    }

    public final int getWriteTimeoutMillis$okhttp() {
        return this.writeTimeoutMillis;
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @NotNull
    public Response proceed(@NotNull Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.index < this.interceptors.size()) {
            this.calls++;
            Exchange exchange = this.exchange;
            if (exchange != null) {
                if (exchange.getFinder$okhttp().sameHostAndPort(request.url())) {
                    if (this.calls != 1) {
                        throw new IllegalStateException(("network interceptor " + this.interceptors.get(this.index - 1) + " must call proceed() exactly once").toString());
                    }
                } else {
                    throw new IllegalStateException(("network interceptor " + this.interceptors.get(this.index - 1) + " must retain the same host and port").toString());
                }
            }
            RealInterceptorChain copy$okhttp$default = copy$okhttp$default(this, this.index + 1, null, request, 0, 0, 0, 58, null);
            Interceptor interceptor = this.interceptors.get(this.index);
            Response intercept = interceptor.intercept(copy$okhttp$default);
            if (intercept != null) {
                if (this.exchange != null && this.index + 1 < this.interceptors.size() && copy$okhttp$default.calls != 1) {
                    throw new IllegalStateException(("network interceptor " + interceptor + " must call proceed() exactly once").toString());
                } else if (intercept.body() != null) {
                    return intercept;
                } else {
                    throw new IllegalStateException(("interceptor " + interceptor + " returned a response with no body").toString());
                }
            }
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        throw new IllegalStateException("Check failed.");
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    public int readTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @NotNull
    public Request request() {
        return this.request;
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @NotNull
    public Interceptor.Chain withConnectTimeout(int i10, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (this.exchange == null) {
            return copy$okhttp$default(this, 0, null, null, Util.checkDuration("connectTimeout", i10, unit), 0, 0, 55, null);
        }
        throw new IllegalStateException("Timeouts can't be adjusted in a network interceptor");
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @NotNull
    public Interceptor.Chain withReadTimeout(int i10, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (this.exchange == null) {
            return copy$okhttp$default(this, 0, null, null, 0, Util.checkDuration("readTimeout", i10, unit), 0, 47, null);
        }
        throw new IllegalStateException("Timeouts can't be adjusted in a network interceptor");
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    @NotNull
    public Interceptor.Chain withWriteTimeout(int i10, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (this.exchange == null) {
            return copy$okhttp$default(this, 0, null, null, 0, 0, Util.checkDuration("writeTimeout", i10, unit), 31, null);
        }
        throw new IllegalStateException("Timeouts can't be adjusted in a network interceptor");
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor.Chain
    public int writeTimeoutMillis() {
        return this.writeTimeoutMillis;
    }
}

package com.applovin.shadow.okhttp3.internal.connection;

import com.applovin.shadow.okhttp3.Interceptor;
import com.applovin.shadow.okhttp3.Response;
import com.applovin.shadow.okhttp3.internal.http.RealInterceptorChain;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectInterceptor.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ConnectInterceptor implements Interceptor {
    @NotNull
    public static final ConnectInterceptor INSTANCE = new ConnectInterceptor();

    private ConnectInterceptor() {
    }

    @Override // com.applovin.shadow.okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        return RealInterceptorChain.copy$okhttp$default(realInterceptorChain, 0, realInterceptorChain.getCall$okhttp().initExchange$okhttp(realInterceptorChain), null, 0, 0, 0, 61, null).proceed(realInterceptorChain.getRequest$okhttp());
    }
}

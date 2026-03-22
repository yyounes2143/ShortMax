package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConnectInterceptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ConnectInterceptor implements Interceptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ConnectInterceptor f63759a = new ConnectInterceptor();

    private ConnectInterceptor() {
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        return RealInterceptorChain.c(realInterceptorChain, 0, realInterceptorChain.d().r(realInterceptorChain), null, 0, 0, 0, 61, null).a(realInterceptorChain.h());
    }
}
